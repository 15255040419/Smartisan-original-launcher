.class final Lcom/google/common/graph/ImmutableNetwork$3;
.super Ljava/lang/Object;
.source "ImmutableNetwork.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/ImmutableNetwork;->adjacentNodeFn(Lcom/google/common/graph/Network;Ljava/lang/Object;)Lcom/google/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TE;TN;>;"
    }
.end annotation


# instance fields
.field final synthetic val$network:Lcom/google/common/graph/Network;

.field final synthetic val$node:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Network;Ljava/lang/Object;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/google/common/graph/ImmutableNetwork$3;->val$network:Lcom/google/common/graph/Network;

    iput-object p2, p0, Lcom/google/common/graph/ImmutableNetwork$3;->val$node:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/common/graph/ImmutableNetwork$3;->val$network:Lcom/google/common/graph/Network;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/graph/ImmutableNetwork$3;->val$node:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/google/common/graph/EndpointPair;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
