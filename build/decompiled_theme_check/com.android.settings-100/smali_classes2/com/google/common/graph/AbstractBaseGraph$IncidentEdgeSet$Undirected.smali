.class final Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;
.super Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Undirected"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet<",
        "TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;TN;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;-><init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;Lcom/google/common/graph/AbstractBaseGraph$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;Lcom/google/common/graph/AbstractBaseGraph$1;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;-><init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 231
    instance-of v0, p1, Lcom/google/common/graph/EndpointPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 235
    :cond_0
    check-cast p1, Lcom/google/common/graph/EndpointPair;

    .line 236
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->node:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/google/common/graph/BaseGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 240
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v2

    .line 241
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    .line 243
    iget-object v3, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->node:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->node:Ljava/lang/Object;

    .line 244
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v1, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->node:Ljava/lang/Object;

    .line 215
    invoke-interface {v0, v1}, Lcom/google/common/graph/BaseGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;

    invoke-direct {v1, p0}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;-><init>(Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;)V

    .line 214
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p0

    .line 213
    invoke-static {p0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 206
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object p0, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->node:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lcom/google/common/graph/BaseGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method
