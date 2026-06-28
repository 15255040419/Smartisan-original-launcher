.class public final Lcom/google/common/collect/ConcurrentHashMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "ConcurrentHashMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,
        Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient countMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 127
    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    const-string v1, "the backing map (%s) must be empty"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 128
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method public static create()Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ConcurrentHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ConcurrentHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 101
    invoke-static {}, Lcom/google/common/collect/ConcurrentHashMultiset;->create()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object v0

    .line 102
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static create(Ljava/util/concurrent/ConcurrentMap;)Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)",
            "Lcom/google/common/collect/ConcurrentHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 122
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ConcurrentHashMultiset;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 594
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 597
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    .line 598
    sget-object v0, Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;->COUNT_MAP_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private snapshot()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 182
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    .line 183
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    .line 184
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 590
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 204
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const-string v0, "occurences"

    .line 208
    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkPositive(ILjava/lang/String;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_2

    return v1

    .line 221
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    :try_start_0
    invoke-static {v2, p2}, Lcom/google/common/math/IntMath;->checkedAdd(II)I

    move-result v3

    .line 225
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return v2

    .line 230
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Overflow adding "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " occurrences to a count of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :cond_3
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 238
    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    .line 239
    invoke-interface {v3, p1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    return v1
.end method

.method public clear()V
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 58
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 141
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    :goto_0
    return p0
.end method

.method createElementSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 450
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V

    return-object v1
.end method

.method public createEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$1;)V

    return-object v0
.end method

.method distinctElements()I
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result p0

    return p0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 480
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "should never be called"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 504
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ConcurrentHashMultiset$2;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    .line 524
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$3;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$3;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 549
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 272
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const-string v0, "occurences"

    .line 274
    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkPositive(ILjava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 281
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_3

    sub-int v3, v2, p2

    .line 283
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 284
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    .line 288
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public removeExactly(Ljava/lang/Object;I)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string v1, "occurences"

    .line 315
    invoke-static {p2, v1}, Lcom/google/common/collect/CollectPreconditions;->checkPositive(ILjava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 322
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ge v3, p2, :cond_2

    return v2

    :cond_2
    sub-int v4, v3, p2

    .line 327
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v4, :cond_3

    .line 331
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 348
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "count"

    .line 349
    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    return v1

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_2

    return v1

    .line 365
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_5

    if-nez p2, :cond_3

    return v1

    .line 370
    :cond_3
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 371
    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    .line 372
    invoke-interface {v3, p1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    return v1

    .line 378
    :cond_5
    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p2, :cond_6

    .line 382
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_6
    return v2
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 404
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "oldCount"

    .line 405
    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    const-string v0, "newCount"

    .line 406
    invoke-static {p3, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    if-eqz p2, :cond_0

    return v1

    :cond_0
    if-nez p3, :cond_1

    return v2

    .line 416
    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 419
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, p2, :cond_9

    if-nez v3, :cond_7

    if-nez p3, :cond_4

    .line 424
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return v2

    .line 427
    :cond_4
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 428
    iget-object p3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_5

    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    .line 429
    invoke-interface {p0, p1, v0, p2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1

    .line 432
    :cond_7
    invoke-virtual {v0, v3, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p2

    if-eqz p2, :cond_9

    if-nez p3, :cond_8

    .line 436
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_8
    return v2

    :cond_9
    return v1
.end method

.method public size()I
    .locals 4

    .line 154
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 155
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->snapshot()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->snapshot()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
