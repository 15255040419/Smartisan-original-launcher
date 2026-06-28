.class final Lcom/google/common/graph/DirectedGraphConnections;
.super Ljava/lang/Object;
.source "DirectedGraphConnections.java"

# interfaces
.implements Lcom/google/common/graph/GraphConnections;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/GraphConnections<",
        "TN;TV;>;"
    }
.end annotation


# static fields
.field private static final PRED:Ljava/lang/Object;


# instance fields
.field private final adjacentNodeValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TN;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private predecessorCount:I

.field private successorCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TN;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    .line 70
    invoke-static {p2}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    .line 71
    invoke-static {p3}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    .line 73
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-gt p2, p0, :cond_0

    .line 74
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-gt p3, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 72
    :goto_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/Map;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/google/common/graph/DirectedGraphConnections;->isPredecessor(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/common/graph/DirectedGraphConnections;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    return p0
.end method

.method static synthetic access$300(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/google/common/graph/DirectedGraphConnections;->isSuccessor(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/google/common/graph/DirectedGraphConnections;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    return p0
.end method

.method private static isPredecessor(Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 245
    sget-object v0, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    instance-of p0, p0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

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

.method private static isSuccessor(Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 249
    sget-object v0, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static of()Lcom/google/common/graph/DirectedGraphConnections;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/graph/DirectedGraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/google/common/graph/DirectedGraphConnections;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/common/graph/DirectedGraphConnections;-><init>(Ljava/util/Map;II)V

    return-object v0
.end method

.method static ofImmutable(Ljava/util/Set;Ljava/util/Map;)Lcom/google/common/graph/DirectedGraphConnections;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TN;>;",
            "Ljava/util/Map<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/DirectedGraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 88
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 89
    sget-object v3, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 91
    new-instance v4, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v4, v3}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_1
    new-instance v1, Lcom/google/common/graph/DirectedGraphConnections;

    .line 95
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-direct {v1, v0, p0, p1}, Lcom/google/common/graph/DirectedGraphConnections;-><init>(Ljava/util/Map;II)V

    return-object v1
.end method


# virtual methods
.method public addPredecessor(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)V"
        }
    .end annotation

    .line 212
    iget-object p2, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    sget-object v0, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 214
    iget p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->checkPositive(I)I

    goto :goto_0

    .line 215
    :cond_0
    instance-of v0, p2, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v0, :cond_1

    .line 217
    iget-object p0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    :cond_1
    sget-object v0, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-eq p2, v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    new-instance v1, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v1, p2}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->checkPositive(I)I

    :cond_2
    :goto_0
    return-void
.end method

.method public addSuccessor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)TV;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 230
    iget p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->checkPositive(I)I

    return-object v1

    .line 232
    :cond_0
    instance-of v2, v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v2, :cond_1

    .line 233
    iget-object p0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    new-instance v1, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v1, p2}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    check-cast v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->access$500(Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 235
    :cond_1
    sget-object v2, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne v0, v2, :cond_2

    .line 236
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v2, p2}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->checkPositive(I)I

    return-object v1

    :cond_2
    return-object v0
.end method

.method public adjacentNodes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 100
    iget-object p0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public predecessors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/google/common/graph/DirectedGraphConnections$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/DirectedGraphConnections$1;-><init>(Lcom/google/common/graph/DirectedGraphConnections;)V

    return-object v0
.end method

.method public removePredecessor(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    goto :goto_0

    .line 187
    :cond_0
    instance-of v1, v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    check-cast v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->access$500(Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 197
    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    instance-of v2, v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    .line 202
    check-cast v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->access$500(Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public successors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/google/common/graph/DirectedGraphConnections$2;

    invoke-direct {v0, p0}, Lcom/google/common/graph/DirectedGraphConnections$2;-><init>(Lcom/google/common/graph/DirectedGraphConnections;)V

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .line 170
    iget-object p0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 171
    sget-object p1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    instance-of p1, p0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz p1, :cond_1

    .line 175
    check-cast p0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-static {p0}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->access$500(Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    return-object p0
.end method
