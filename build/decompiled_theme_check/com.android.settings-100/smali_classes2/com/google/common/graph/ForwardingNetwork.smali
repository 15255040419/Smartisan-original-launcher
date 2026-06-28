.class abstract Lcom/google/common/graph/ForwardingNetwork;
.super Lcom/google/common/graph/AbstractNetwork;
.source "ForwardingNetwork.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractNetwork<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/common/graph/AbstractNetwork;-><init>()V

    return-void
.end method


# virtual methods
.method public adjacentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->adjacentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public allowsParallelEdges()Z
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result p0

    return p0
.end method

.method public allowsSelfLoops()Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsSelfLoops()Z

    move-result p0

    return p0
.end method

.method public degree(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->degree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected abstract delegate()Lcom/google/common/graph/Network;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;"
        }
    .end annotation
.end method

.method public edgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/graph/Network;->edgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public edgeConnectingOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TE;"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/graph/Network;->edgeConnectingOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public edgeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TE;>;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->edgeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object p0

    return-object p0
.end method

.method public edges()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/graph/Network;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/graph/Network;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->inDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public inEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method public isDirected()Z
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result p0

    return p0
.end method

.method public nodeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object p0

    return-object p0
.end method

.method public nodes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->outDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public outEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ForwardingNetwork;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ForwardingNetwork;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
