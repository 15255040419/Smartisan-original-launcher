.class Lcom/google/common/graph/AbstractValueGraph$1;
.super Lcom/google/common/graph/AbstractGraph;
.source "AbstractValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractValueGraph;->asGraph()Lcom/google/common/graph/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/AbstractGraph<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/AbstractValueGraph;


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractValueGraph;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

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

    .line 73
    iget-object p0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public allowsSelfLoops()Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->allowsSelfLoops()Z

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

    .line 88
    iget-object p0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractValueGraph;->degree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public edges()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->edges()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractValueGraph;->inDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isDirected()Z
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->isDirected()Z

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

    .line 68
    iget-object p0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->nodeOrder()Lcom/google/common/graph/ElementOrder;

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

    .line 48
    iget-object p0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->nodes()Ljava/util/Set;

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

    .line 98
    iget-object p0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractValueGraph;->outDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractValueGraph$1;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 78
    iget-object p0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractValueGraph$1;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 83
    iget-object p0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
