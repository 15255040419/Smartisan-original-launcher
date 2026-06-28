.class public final Lcom/google/common/graph/ImmutableNetwork;
.super Lcom/google/common/graph/ConfigurableNetwork;
.source "ImmutableNetwork.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
    containerOf = {
        "N",
        "E"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ConfigurableNetwork<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/graph/Network;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)V"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/google/common/graph/NetworkBuilder;->from(Lcom/google/common/graph/Network;)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/ImmutableNetwork;->getNodeConnections(Lcom/google/common/graph/Network;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/graph/ImmutableNetwork;->getEdgeToReferenceNode(Lcom/google/common/graph/Network;)Ljava/util/Map;

    move-result-object p1

    .line 50
    invoke-direct {p0, v0, v1, p1}, Lcom/google/common/graph/ConfigurableNetwork;-><init>(Lcom/google/common/graph/NetworkBuilder;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private static adjacentNodeFn(Lcom/google/common/graph/Network;Ljava/lang/Object;)Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;TN;)",
            "Lcom/google/common/base/Function<",
            "TE;TN;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/google/common/graph/ImmutableNetwork$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/ImmutableNetwork$3;-><init>(Lcom/google/common/graph/Network;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static connectionsOf(Lcom/google/common/graph/Network;Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;TN;)",
            "Lcom/google/common/graph/NetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 99
    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/graph/ImmutableNetwork;->sourceNodeFn(Lcom/google/common/graph/Network;)Lcom/google/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    .line 101
    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p0}, Lcom/google/common/graph/ImmutableNetwork;->targetNodeFn(Lcom/google/common/graph/Network;)Lcom/google/common/base/Function;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    .line 102
    invoke-interface {p0, p1, p1}, Lcom/google/common/graph/Network;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    .line 103
    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 104
    invoke-static {v0, v1, p1}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->ofImmutable(Ljava/util/Map;Ljava/util/Map;I)Lcom/google/common/graph/DirectedMultiNetworkConnections;

    move-result-object p0

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/google/common/graph/DirectedNetworkConnections;->ofImmutable(Ljava/util/Map;Ljava/util/Map;I)Lcom/google/common/graph/DirectedNetworkConnections;

    move-result-object p0

    :goto_0
    return-object p0

    .line 108
    :cond_1
    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/common/graph/ImmutableNetwork;->adjacentNodeFn(Lcom/google/common/graph/Network;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object p1

    .line 109
    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 110
    invoke-static {p1}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedMultiNetworkConnections;

    move-result-object p0

    goto :goto_1

    .line 111
    :cond_2
    invoke-static {p1}, Lcom/google/common/graph/UndirectedNetworkConnections;->ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedNetworkConnections;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static copyOf(Lcom/google/common/graph/ImmutableNetwork;)Lcom/google/common/graph/ImmutableNetwork;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ImmutableNetwork<",
            "TN;TE;>;)",
            "Lcom/google/common/graph/ImmutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/ImmutableNetwork;

    return-object p0
.end method

.method public static copyOf(Lcom/google/common/graph/Network;)Lcom/google/common/graph/ImmutableNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lcom/google/common/graph/ImmutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .line 56
    instance-of v0, p0, Lcom/google/common/graph/ImmutableNetwork;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/graph/ImmutableNetwork;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/graph/ImmutableNetwork;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ImmutableNetwork;-><init>(Lcom/google/common/graph/Network;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static getEdgeToReferenceNode(Lcom/google/common/graph/Network;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TE;TN;>;"
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 92
    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 93
    invoke-interface {p0, v2}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method private static getNodeConnections(Lcom/google/common/graph/Network;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TN;",
            "Lcom/google/common/graph/NetworkConnections<",
            "TN;TE;>;>;"
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 81
    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 82
    invoke-static {p0, v2}, Lcom/google/common/graph/ImmutableNetwork;->connectionsOf(Lcom/google/common/graph/Network;Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method private static sourceNodeFn(Lcom/google/common/graph/Network;)Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lcom/google/common/base/Function<",
            "TE;TN;>;"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/google/common/graph/ImmutableNetwork$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ImmutableNetwork$1;-><init>(Lcom/google/common/graph/Network;)V

    return-object v0
.end method

.method private static targetNodeFn(Lcom/google/common/graph/Network;)Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lcom/google/common/base/Function<",
            "TE;TN;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/google/common/graph/ImmutableNetwork$2;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ImmutableNetwork$2;-><init>(Lcom/google/common/graph/Network;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic allowsParallelEdges()Z
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->allowsParallelEdges()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic allowsSelfLoops()Z
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->allowsSelfLoops()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic asGraph()Lcom/google/common/graph/Graph;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/google/common/graph/ImmutableNetwork;->asGraph()Lcom/google/common/graph/ImmutableGraph;

    move-result-object p0

    return-object p0
.end method

.method public asGraph()Lcom/google/common/graph/ImmutableGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ImmutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/common/graph/ImmutableGraph;

    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->asGraph()Lcom/google/common/graph/Graph;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/graph/ImmutableGraph;-><init>(Lcom/google/common/graph/BaseGraph;)V

    return-object v0
.end method

.method public bridge synthetic edgeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->edgeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic edges()Ljava/util/Set;
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->edges()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/ConfigurableNetwork;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic inEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isDirected()Z
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->isDirected()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic nodeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic nodes()Ljava/util/Set;
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->nodes()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic outEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
