.class public abstract Lcom/google/common/graph/AbstractValueGraph;
.super Lcom/google/common/graph/AbstractBaseGraph;
.source "AbstractValueGraph.java"

# interfaces
.implements Lcom/google/common/graph/ValueGraph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractBaseGraph<",
        "TN;>;",
        "Lcom/google/common/graph/ValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/google/common/graph/AbstractBaseGraph;-><init>()V

    return-void
.end method

.method private static edgeValueMap(Lcom/google/common/graph/ValueGraph;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Ljava/util/Map<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;TV;>;"
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/google/common/graph/AbstractValueGraph$2;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractValueGraph$2;-><init>(Lcom/google/common/graph/ValueGraph;)V

    .line 149
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asGraph()Lcom/google/common/graph/Graph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/google/common/graph/AbstractValueGraph$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractValueGraph$1;-><init>(Lcom/google/common/graph/AbstractValueGraph;)V

    return-object v0
.end method

.method public bridge synthetic degree(Ljava/lang/Object;)I
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->degree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Optional<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/graph/AbstractValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic edges()Ljava/util/Set;
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/google/common/graph/AbstractBaseGraph;->edges()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 113
    :cond_0
    instance-of v1, p1, Lcom/google/common/graph/ValueGraph;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 116
    :cond_1
    check-cast p1, Lcom/google/common/graph/ValueGraph;

    .line 118
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->isDirected()Z

    move-result v1

    invoke-interface {p1}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    invoke-static {p0}, Lcom/google/common/graph/AbstractValueGraph;->edgeValueMap(Lcom/google/common/graph/ValueGraph;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/graph/AbstractValueGraph;->edgeValueMap(Lcom/google/common/graph/ValueGraph;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public bridge synthetic hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/AbstractBaseGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 125
    invoke-static {p0}, Lcom/google/common/graph/AbstractValueGraph;->edgeValueMap(Lcom/google/common/graph/ValueGraph;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic inDegree(Ljava/lang/Object;)I
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->inDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic outDegree(Ljava/lang/Object;)I
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->outDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDirected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->isDirected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowsSelfLoops: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", edges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {p0}, Lcom/google/common/graph/AbstractValueGraph;->edgeValueMap(Lcom/google/common/graph/ValueGraph;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
