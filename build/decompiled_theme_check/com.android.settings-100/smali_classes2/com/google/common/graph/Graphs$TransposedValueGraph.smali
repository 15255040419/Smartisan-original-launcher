.class Lcom/google/common/graph/Graphs$TransposedValueGraph;
.super Lcom/google/common/graph/ForwardingValueGraph;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposedValueGraph"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ForwardingValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final graph:Lcom/google/common/graph/ValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/ValueGraph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;)V"
        }
    .end annotation

    .line 310
    invoke-direct {p0}, Lcom/google/common/graph/ForwardingValueGraph;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/graph/Graphs$TransposedValueGraph;)Lcom/google/common/graph/ValueGraph;
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    return-object p0
.end method


# virtual methods
.method protected delegate()Lcom/google/common/graph/ValueGraph;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 316
    iget-object p0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    return-object p0
.end method

.method public edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Optional<",
            "TV;>;"
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 352
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object p0

    invoke-interface {p0, p2, p1, p3}, Lcom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 341
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/google/common/graph/ValueGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 331
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->outDegree(Ljava/lang/Object;)I

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

    .line 336
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->inDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 307
    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 321
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 307
    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 326
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
