.class final Lcom/google/common/graph/AbstractValueGraph$2;
.super Ljava/lang/Object;
.source "AbstractValueGraph.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractValueGraph;->edgeValueMap(Lcom/google/common/graph/ValueGraph;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$graph:Lcom/google/common/graph/ValueGraph;


# direct methods
.method constructor <init>(Lcom/google/common/graph/ValueGraph;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/common/graph/AbstractValueGraph$2;->val$graph:Lcom/google/common/graph/ValueGraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/graph/EndpointPair;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)TV;"
        }
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/google/common/graph/AbstractValueGraph$2;->val$graph:Lcom/google/common/graph/ValueGraph;

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 143
    check-cast p1, Lcom/google/common/graph/EndpointPair;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractValueGraph$2;->apply(Lcom/google/common/graph/EndpointPair;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
