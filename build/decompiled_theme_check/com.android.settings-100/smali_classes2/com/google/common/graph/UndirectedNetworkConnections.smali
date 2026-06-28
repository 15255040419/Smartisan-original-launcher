.class final Lcom/google/common/graph/UndirectedNetworkConnections;
.super Lcom/google/common/graph/AbstractUndirectedNetworkConnections;
.source "UndirectedNetworkConnections.java"


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


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;TN;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static of()Lcom/google/common/graph/UndirectedNetworkConnections;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/graph/UndirectedNetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/google/common/graph/UndirectedNetworkConnections;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/graph/UndirectedNetworkConnections;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedNetworkConnections;
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
            "Lcom/google/common/graph/UndirectedNetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/google/common/graph/UndirectedNetworkConnections;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableBiMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/graph/UndirectedNetworkConnections;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public adjacentNodes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lcom/google/common/graph/UndirectedNetworkConnections;->incidentEdgeMap:Ljava/util/Map;

    check-cast p0, Lcom/google/common/collect/BiMap;

    invoke-interface {p0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/google/common/graph/EdgesConnecting;

    iget-object p0, p0, Lcom/google/common/graph/UndirectedNetworkConnections;->incidentEdgeMap:Ljava/util/Map;

    check-cast p0, Lcom/google/common/collect/BiMap;

    invoke-interface {p0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/EdgesConnecting;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method
