.class final Lcom/google/common/graph/UndirectedMultiNetworkConnections;
.super Lcom/google/common/graph/AbstractUndirectedNetworkConnections;
.source "UndirectedMultiNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractUndirectedNetworkConnections<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field private transient adjacentNodesReference:Ljava/lang/ref/Reference;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/google/common/collect/Multiset<",
            "TN;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;TN;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/graph/UndirectedMultiNetworkConnections;)Lcom/google/common/collect/Multiset;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->adjacentNodesMultiset()Lcom/google/common/collect/Multiset;

    move-result-object p0

    return-object p0
.end method

.method private adjacentNodesMultiset()Lcom/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TN;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->adjacentNodesReference:Ljava/lang/ref/Reference;

    invoke-static {v0}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->incidentEdgeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->adjacentNodesReference:Ljava/lang/ref/Reference;

    :cond_0
    return-object v0
.end method

.method private static getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/ref/Reference;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/Reference<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static of()Lcom/google/common/graph/UndirectedMultiNetworkConnections;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/graph/UndirectedMultiNetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/google/common/graph/UndirectedMultiNetworkConnections;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    invoke-direct {v0, v1}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedMultiNetworkConnections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;TN;>;)",
            "Lcom/google/common/graph/UndirectedMultiNetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/google/common/graph/UndirectedMultiNetworkConnections;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;Z)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;)V"
        }
    .end annotation

    .line 111
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;->addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    iget-object p0, p0, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->adjacentNodesReference:Ljava/lang/ref/Reference;

    invoke-static {p0}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset;

    if-eqz p0, :cond_0

    .line 114
    invoke-interface {p0, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :cond_0
    return-void
.end method

.method public adjacentNodes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->adjacentNodesMultiset()Lcom/google/common/collect/Multiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/google/common/graph/UndirectedMultiNetworkConnections$1;

    iget-object v1, p0, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->incidentEdgeMap:Ljava/util/Map;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/common/graph/UndirectedMultiNetworkConnections$1;-><init>(Lcom/google/common/graph/UndirectedMultiNetworkConnections;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)TN;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    .line 94
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;->removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 95
    iget-object p0, p0, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->adjacentNodesReference:Ljava/lang/ref/Reference;

    invoke-static {p0}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset;

    if-eqz p0, :cond_0

    .line 97
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :cond_0
    return-object p1
.end method
