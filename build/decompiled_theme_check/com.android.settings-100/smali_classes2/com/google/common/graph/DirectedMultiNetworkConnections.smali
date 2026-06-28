.class final Lcom/google/common/graph/DirectedMultiNetworkConnections;
.super Lcom/google/common/graph/AbstractDirectedNetworkConnections;
.source "DirectedMultiNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractDirectedNetworkConnections<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field private transient predecessorsReference:Ljava/lang/ref/Reference;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/google/common/collect/Multiset<",
            "TN;>;>;"
        }
    .end annotation
.end field

.field private transient successorsReference:Ljava/lang/ref/Reference;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/google/common/collect/Multiset<",
            "TN;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;TN;>;",
            "Ljava/util/Map<",
            "TE;TN;>;I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/graph/DirectedMultiNetworkConnections;)Lcom/google/common/collect/Multiset;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsMultiset()Lcom/google/common/collect/Multiset;

    move-result-object p0

    return-object p0
.end method

.method private static getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/ref/Reference;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/Reference<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static of()Lcom/google/common/graph/DirectedMultiNetworkConnections;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/graph/DirectedMultiNetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/google/common/graph/DirectedMultiNetworkConnections;

    new-instance v1, Ljava/util/HashMap;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Ljava/util/HashMap;-><init>(IF)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3, v2}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/google/common/graph/DirectedMultiNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v0
.end method

.method static ofImmutable(Ljava/util/Map;Ljava/util/Map;I)Lcom/google/common/graph/DirectedMultiNetworkConnections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;TN;>;",
            "Ljava/util/Map<",
            "TE;TN;>;I)",
            "Lcom/google/common/graph/DirectedMultiNetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/google/common/graph/DirectedMultiNetworkConnections;

    .line 59
    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/graph/DirectedMultiNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v0
.end method

.method private predecessorsMultiset()Lcom/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TN;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsReference:Ljava/lang/ref/Reference;

    invoke-static {v0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->inEdgeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsReference:Ljava/lang/ref/Reference;

    :cond_0
    return-object v0
.end method

.method private successorsMultiset()Lcom/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TN;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsReference:Ljava/lang/ref/Reference;

    invoke-static {v0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsReference:Ljava/lang/ref/Reference;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;Z)V"
        }
    .end annotation

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 127
    iget-object p0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsReference:Ljava/lang/ref/Reference;

    invoke-static {p0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset;

    if-eqz p0, :cond_0

    .line 129
    invoke-interface {p0, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :cond_0
    return-void
.end method

.method public addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;)V"
        }
    .end annotation

    .line 135
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    iget-object p0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsReference:Ljava/lang/ref/Reference;

    invoke-static {p0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset;

    if-eqz p0, :cond_0

    .line 138
    invoke-interface {p0, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :cond_0
    return-void
.end method

.method public edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/google/common/graph/DirectedMultiNetworkConnections$1;

    iget-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/common/graph/DirectedMultiNetworkConnections$1;-><init>(Lcom/google/common/graph/DirectedMultiNetworkConnections;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public predecessors()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsMultiset()Lcom/google/common/collect/Multiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)TN;"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    .line 107
    iget-object p0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsReference:Ljava/lang/ref/Reference;

    invoke-static {p0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset;

    if-eqz p0, :cond_0

    .line 109
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :cond_0
    return-object p1
.end method

.method public removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    .line 116
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 117
    iget-object p0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsReference:Ljava/lang/ref/Reference;

    invoke-static {p0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset;

    if-eqz p0, :cond_0

    .line 119
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :cond_0
    return-object p1
.end method

.method public successors()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsMultiset()Lcom/google/common/collect/Multiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
