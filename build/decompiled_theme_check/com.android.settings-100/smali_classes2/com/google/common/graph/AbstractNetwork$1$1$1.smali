.class Lcom/google/common/graph/AbstractNetwork$1$1$1;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractNetwork$1$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TE;",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/graph/AbstractNetwork$1$1;


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractNetwork$1$1;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/google/common/graph/AbstractNetwork$1$1$1;->this$2:Lcom/google/common/graph/AbstractNetwork$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 75
    iget-object p0, p0, Lcom/google/common/graph/AbstractNetwork$1$1$1;->this$2:Lcom/google/common/graph/AbstractNetwork$1$1;

    iget-object p0, p0, Lcom/google/common/graph/AbstractNetwork$1$1;->this$1:Lcom/google/common/graph/AbstractNetwork$1;

    iget-object p0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork$1$1$1;->apply(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method
