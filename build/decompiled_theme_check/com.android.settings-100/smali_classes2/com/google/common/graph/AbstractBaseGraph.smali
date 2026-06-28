.class abstract Lcom/google/common/graph/AbstractBaseGraph;
.super Ljava/lang/Object;
.source "AbstractBaseGraph.java"

# interfaces
.implements Lcom/google/common/graph/BaseGraph;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/BaseGraph<",
        "TN;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public degree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result p0

    return p0

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph;->allowsSelfLoops()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 113
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1, p0}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result p0

    return p0
.end method

.method protected edgeCount()J
    .locals 7

    .line 52
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 53
    invoke-virtual {p0, v5}, Lcom/google/common/graph/AbstractBaseGraph;->degree(Ljava/lang/Object;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x1

    and-long/2addr v5, v3

    cmp-long p0, v5, v1

    const/4 v0, 0x1

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 56
    :goto_1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    ushr-long v0, v3, v0

    return-wide v0
.end method

.method public edges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/google/common/graph/AbstractBaseGraph$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractBaseGraph$1;-><init>(Lcom/google/common/graph/AbstractBaseGraph;)V

    return-object v0
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 129
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->degree(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 101
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Node %s is not an element of this graph."

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-static {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;->of(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;

    move-result-object p0

    return-object p0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->degree(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method
