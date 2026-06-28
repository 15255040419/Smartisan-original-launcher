.class Lcom/google/common/graph/Graphs$TransposedGraph;
.super Lcom/google/common/graph/ForwardingGraph;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposedGraph"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ForwardingGraph<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final graph:Lcom/google/common/graph/Graph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/Graph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph<",
            "TN;>;)V"
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Lcom/google/common/graph/ForwardingGraph;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/graph/Graphs$TransposedGraph;)Lcom/google/common/graph/Graph;
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic delegate()Lcom/google/common/graph/BaseGraph;
    .locals 0

    .line 267
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->delegate()Lcom/google/common/graph/Graph;

    move-result-object p0

    return-object p0
.end method

.method protected delegate()Lcom/google/common/graph/Graph;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation

    .line 276
    iget-object p0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    return-object p0
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->delegate()Lcom/google/common/graph/Graph;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/google/common/graph/Graph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 291
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->delegate()Lcom/google/common/graph/Graph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Graph;->outDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->delegate()Lcom/google/common/graph/Graph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Graph;->inDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 281
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->delegate()Lcom/google/common/graph/Graph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 286
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->delegate()Lcom/google/common/graph/Graph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/Graph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
