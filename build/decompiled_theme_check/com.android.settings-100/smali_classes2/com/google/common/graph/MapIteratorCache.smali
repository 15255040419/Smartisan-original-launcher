.class Lcom/google/common/graph/MapIteratorCache;
.super Ljava/lang/Object;
.source "MapIteratorCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySetCache:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/graph/MapIteratorCache;)Ljava/util/Map;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/common/graph/MapIteratorCache;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/google/common/graph/MapIteratorCache;->entrySetCache:Ljava/util/Map$Entry;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/google/common/graph/MapIteratorCache;->clearCache()V

    .line 70
    iget-object p0, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected clearCache()V
    .locals 1

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/google/common/graph/MapIteratorCache;->entrySetCache:Ljava/util/Map$Entry;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/common/graph/MapIteratorCache;->getIfCached(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/common/graph/MapIteratorCache;->getIfCached(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/MapIteratorCache;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getIfCached(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/google/common/graph/MapIteratorCache;->entrySetCache:Ljava/util/Map$Entry;

    if-eqz p0, :cond_0

    .line 125
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 126
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/google/common/graph/MapIteratorCache;->clearCache()V

    .line 59
    iget-object p0, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/google/common/graph/MapIteratorCache;->clearCache()V

    .line 65
    iget-object p0, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final unmodifiableKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/google/common/graph/MapIteratorCache$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/MapIteratorCache$1;-><init>(Lcom/google/common/graph/MapIteratorCache;)V

    return-object v0
.end method
