.class final Lcom/google/common/graph/EndpointPairIterator$Undirected;
.super Lcom/google/common/graph/EndpointPairIterator;
.source "EndpointPairIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/EndpointPairIterator;
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
        "Lcom/google/common/graph/EndpointPairIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private visitedNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/graph/BaseGraph;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/google/common/graph/EndpointPairIterator;-><init>(Lcom/google/common/graph/BaseGraph;Lcom/google/common/graph/EndpointPairIterator$1;)V

    .line 115
    invoke-interface {p1}, Lcom/google/common/graph/BaseGraph;->nodes()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/EndpointPairIterator$Undirected;->visitedNodes:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/BaseGraph;Lcom/google/common/graph/EndpointPairIterator$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/google/common/graph/EndpointPairIterator$Undirected;-><init>(Lcom/google/common/graph/BaseGraph;)V

    return-void
.end method


# virtual methods
.method protected computeNext()Lcom/google/common/graph/EndpointPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/EndpointPairIterator$Undirected;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/google/common/graph/EndpointPairIterator$Undirected;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/google/common/graph/EndpointPairIterator$Undirected;->visitedNodes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object p0, p0, Lcom/google/common/graph/EndpointPairIterator$Undirected;->node:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/EndpointPairIterator$Undirected;->visitedNodes:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/graph/EndpointPairIterator$Undirected;->node:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPairIterator$Undirected;->advance()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/google/common/graph/EndpointPairIterator$Undirected;->visitedNodes:Ljava/util/Set;

    .line 131
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPairIterator$Undirected;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/EndpointPair;

    return-object p0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPairIterator$Undirected;->computeNext()Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method
