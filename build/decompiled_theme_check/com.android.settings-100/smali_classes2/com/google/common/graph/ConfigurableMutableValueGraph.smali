.class final Lcom/google/common/graph/ConfigurableMutableValueGraph;
.super Lcom/google/common/graph/ConfigurableValueGraph;
.source "ConfigurableMutableValueGraph.java"

# interfaces
.implements Lcom/google/common/graph/MutableValueGraph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ConfigurableValueGraph<",
        "TN;TV;>;",
        "Lcom/google/common/graph/MutableValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractGraphBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/AbstractGraphBuilder<",
            "-TN;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableValueGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;)V

    return-void
.end method

.method private addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->newConnections()Lcom/google/common/graph/GraphConnections;

    move-result-object v0

    .line 70
    iget-object p0, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/graph/MapIteratorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-object v0
.end method

.method private newConnections()Lcom/google/common/graph/GraphConnections;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->isDirected()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 156
    invoke-static {}, Lcom/google/common/graph/DirectedGraphConnections;->of()Lcom/google/common/graph/DirectedGraphConnections;

    move-result-object p0

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {}, Lcom/google/common/graph/UndirectedGraphConnections;->of()Lcom/google/common/graph/UndirectedGraphConnections;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addNode(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    const-string v0, "node"

    .line 52
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->containsNode(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 58
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    const/4 p0, 0x1

    return p0
.end method

.method public putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    const-string v0, "nodeU"

    .line 77
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeV"

    .line 78
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 79
    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->allowsSelfLoops()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    if-nez v0, :cond_1

    .line 87
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v0

    .line 89
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/google/common/graph/GraphConnections;->addSuccessor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, p2}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/GraphConnections;

    if-nez v1, :cond_2

    .line 92
    invoke-direct {p0, p2}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v1

    .line 94
    :cond_2
    invoke-interface {v1, p1, p3}, Lcom/google/common/graph/GraphConnections;->addPredecessor(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_3

    .line 96
    iget-wide p1, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    invoke-static {p1, p2}, Lcom/google/common/graph/Graphs;->checkPositive(J)J

    :cond_3
    return-object v0
.end method

.method public removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TV;"
        }
    .end annotation

    const-string v0, "nodeU"

    .line 137
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeV"

    .line 138
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    .line 141
    iget-object v1, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, p2}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/GraphConnections;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {v0, p2}, Lcom/google/common/graph/GraphConnections;->removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 148
    invoke-interface {v1, p1}, Lcom/google/common/graph/GraphConnections;->removePredecessor(Ljava/lang/Object;)V

    .line 149
    iget-wide v0, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    invoke-static {v0, v1}, Lcom/google/common/graph/Graphs;->checkNonNegative(J)J

    :cond_1
    return-object p2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    const-string v0, "node"

    .line 104
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->allowsSelfLoops()Z

    move-result v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_1

    .line 113
    invoke-interface {v0, p1}, Lcom/google/common/graph/GraphConnections;->removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 114
    invoke-interface {v0, p1}, Lcom/google/common/graph/GraphConnections;->removePredecessor(Ljava/lang/Object;)V

    .line 115
    iget-wide v5, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    .line 119
    :cond_1
    invoke-interface {v0}, Lcom/google/common/graph/GraphConnections;->successors()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 120
    iget-object v6, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v6, v5}, Lcom/google/common/graph/MapIteratorCache;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/graph/GraphConnections;

    invoke-interface {v5, p1}, Lcom/google/common/graph/GraphConnections;->removePredecessor(Ljava/lang/Object;)V

    .line 121
    iget-wide v5, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->isDirected()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 124
    invoke-interface {v0}, Lcom/google/common/graph/GraphConnections;->predecessors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 125
    iget-object v6, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v6, v2}, Lcom/google/common/graph/MapIteratorCache;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/GraphConnections;

    invoke-interface {v2, p1}, Lcom/google/common/graph/GraphConnections;->removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 126
    iget-wide v6, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    sub-long/2addr v6, v3

    iput-wide v6, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    goto :goto_1

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-wide p0, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    invoke-static {p0, p1}, Lcom/google/common/graph/Graphs;->checkNonNegative(J)J

    return v5
.end method
