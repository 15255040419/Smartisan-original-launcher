.class Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;
.super Ljava/util/AbstractSet;
.source "AbstractDirectedNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractDirectedNetworkConnections;->incidentEdges()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractDirectedNetworkConnections;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 83
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object v0, v0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    .line 70
    invoke-static {v0}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->access$000(Lcom/google/common/graph/AbstractDirectedNetworkConnections;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object v0, v0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object v0, v0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    .line 72
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object p0

    .line 73
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object v0, v0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object v1, v1, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    invoke-static {p0}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->access$000(Lcom/google/common/graph/AbstractDirectedNetworkConnections;)I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result p0

    return p0
.end method
