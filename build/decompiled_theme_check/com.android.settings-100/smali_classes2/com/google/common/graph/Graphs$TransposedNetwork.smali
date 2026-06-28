.class Lcom/google/common/graph/Graphs$TransposedNetwork;
.super Lcom/google/common/graph/ForwardingNetwork;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposedNetwork"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ForwardingNetwork<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field private final network:Lcom/google/common/graph/Network;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/Network;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)V"
        }
    .end annotation

    .line 359
    invoke-direct {p0}, Lcom/google/common/graph/ForwardingNetwork;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/graph/Graphs$TransposedNetwork;)Lcom/google/common/graph/Network;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    return-object p0
.end method


# virtual methods
.method protected delegate()Lcom/google/common/graph/Network;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;"
        }
    .end annotation

    .line 365
    iget-object p0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    return-object p0
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

    .line 411
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/google/common/graph/Network;->edgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Optional;

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

    .line 416
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/google/common/graph/Network;->edgeConnectingOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 406
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/google/common/graph/Network;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

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

    .line 421
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/google/common/graph/Network;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 380
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->outDegree(Ljava/lang/Object;)I

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

    .line 390
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    .line 401
    iget-object p0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/google/common/graph/EndpointPair;->of(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

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

    .line 385
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->inDegree(Ljava/lang/Object;)I

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

    .line 395
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 356
    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedNetwork;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 370
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 356
    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedNetwork;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 375
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
