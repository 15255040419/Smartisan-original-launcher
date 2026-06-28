.class public abstract Lcom/google/common/graph/Traverser;
.super Ljava/lang/Object;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Traverser$Order;,
        Lcom/google/common/graph/Traverser$TreeTraverser;,
        Lcom/google/common/graph/Traverser$GraphTraverser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/Traverser$1;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/google/common/graph/Traverser;-><init>()V

    return-void
.end method

.method public static forGraph(Lcom/google/common/graph/SuccessorsFunction;)Lcom/google/common/graph/Traverser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/SuccessorsFunction<",
            "TN;>;)",
            "Lcom/google/common/graph/Traverser<",
            "TN;>;"
        }
    .end annotation

    .line 93
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Traverser$GraphTraverser;-><init>(Lcom/google/common/graph/SuccessorsFunction;)V

    return-object v0
.end method

.method public static forTree(Lcom/google/common/graph/SuccessorsFunction;)Lcom/google/common/graph/Traverser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/SuccessorsFunction<",
            "TN;>;)",
            "Lcom/google/common/graph/Traverser<",
            "TN;>;"
        }
    .end annotation

    .line 171
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    instance-of v0, p0, Lcom/google/common/graph/BaseGraph;

    if-eqz v0, :cond_0

    .line 173
    move-object v0, p0

    check-cast v0, Lcom/google/common/graph/BaseGraph;

    invoke-interface {v0}, Lcom/google/common/graph/BaseGraph;->isDirected()Z

    move-result v0

    const-string v1, "Undirected graphs can never be trees."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 175
    :cond_0
    instance-of v0, p0, Lcom/google/common/graph/Network;

    if-eqz v0, :cond_1

    .line 176
    move-object v0, p0

    check-cast v0, Lcom/google/common/graph/Network;

    invoke-interface {v0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v0

    const-string v1, "Undirected networks can never be trees."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 178
    :cond_1
    new-instance v0, Lcom/google/common/graph/Traverser$TreeTraverser;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Traverser$TreeTraverser;-><init>(Lcom/google/common/graph/SuccessorsFunction;)V

    return-object v0
.end method


# virtual methods
.method public abstract breadthFirst(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation
.end method

.method public abstract breadthFirst(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation
.end method

.method public abstract depthFirstPostOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation
.end method

.method public abstract depthFirstPostOrder(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation
.end method

.method public abstract depthFirstPreOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation
.end method

.method public abstract depthFirstPreOrder(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation
.end method
