.class abstract Lcom/google/common/graph/ForwardingGraph;
.super Lcom/google/common/graph/AbstractGraph;
.source "ForwardingGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractGraph<",
        "TN;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/common/graph/AbstractGraph;-><init>()V

    return-void
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingGraph;->delegate()Lcom/google/common/graph/BaseGraph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/BaseGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public allowsSelfLoops()Z
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingGraph;->delegate()Lcom/google/common/graph/BaseGraph;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/graph/BaseGraph;->allowsSelfLoops()Z

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

    .line 77
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingGraph;->delegate()Lcom/google/common/graph/BaseGraph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/BaseGraph;->degree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected abstract delegate()Lcom/google/common/graph/BaseGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;"
        }
    .end annotation
.end method

.method protected edgeCount()J
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingGraph;->delegate()Lcom/google/common/graph/BaseGraph;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/graph/BaseGraph;->edges()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingGraph;->delegate()Lcom/google/common/graph/BaseGraph;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/graph/BaseGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 82
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingGraph;->delegate()Lcom/google/common/graph/BaseGraph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/BaseGraph;->inDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isDirected()Z
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingGraph;->delegate()Lcom/google/common/graph/BaseGraph;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/graph/BaseGraph;->isDirected()Z

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

    .line 57
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingGraph;->delegate()Lcom/google/common/graph/BaseGraph;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/graph/BaseGraph;->nodeOrder()Lcom/google/common/graph/ElementOrder;

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

    .line 33
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingGraph;->delegate()Lcom/google/common/graph/BaseGraph;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/graph/BaseGraph;->nodes()Ljava/util/Set;

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

    .line 87
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingGraph;->delegate()Lcom/google/common/graph/BaseGraph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/BaseGraph;->outDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 67
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingGraph;->delegate()Lcom/google/common/graph/BaseGraph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/BaseGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 72
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingGraph;->delegate()Lcom/google/common/graph/BaseGraph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/BaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
