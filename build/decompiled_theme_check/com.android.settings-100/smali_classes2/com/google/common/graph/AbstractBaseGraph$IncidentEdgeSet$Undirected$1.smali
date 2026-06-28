.class Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;
.super Ljava/lang/Object;
.source "AbstractBaseGraph.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TN;",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;->this$0:Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 219
    iget-object p0, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;->this$0:Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;

    iget-object p0, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->node:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;->apply(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method
