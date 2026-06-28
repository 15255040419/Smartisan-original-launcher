.class final Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$GraphTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DepthFirstIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final order:Lcom/google/common/graph/Traverser$Order;

.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/common/graph/Traverser$GraphTraverser<",
            "TN;>.DepthFirstIterator.NodeAndSuccessors;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

.field private final visited:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Iterable;Lcom/google/common/graph/Traverser$Order;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;",
            "Lcom/google/common/graph/Traverser$Order;",
            ")V"
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 433
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    .line 434
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->visited:Ljava/util/Set;

    .line 438
    iget-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    new-instance v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;-><init>(Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 439
    iput-object p3, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->order:Lcom/google/common/graph/Traverser$Order;

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    .line 449
    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->visited:Ljava/util/Set;

    iget-object v2, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->node:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 450
    iget-object v2, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v1, :cond_2

    .line 451
    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->order:Lcom/google/common/graph/Traverser$Order;

    sget-object v4, Lcom/google/common/graph/Traverser$Order;->PREORDER:Lcom/google/common/graph/Traverser$Order;

    if-eq v1, v4, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->order:Lcom/google/common/graph/Traverser$Order;

    sget-object v4, Lcom/google/common/graph/Traverser$Order;->POSTORDER:Lcom/google/common/graph/Traverser$Order;

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 454
    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 457
    :cond_5
    iget-object v1, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 458
    iget-object v2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->visited:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 459
    iget-object v2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->withSuccessors(Ljava/lang/Object;)Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    if-eqz v3, :cond_0

    .line 462
    iget-object v1, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->node:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 463
    iget-object p0, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->node:Ljava/lang/Object;

    return-object p0
.end method

.method withSuccessors(Ljava/lang/Object;)Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/Traverser$GraphTraverser<",
            "TN;>.DepthFirstIterator.NodeAndSuccessors;"
        }
    .end annotation

    .line 469
    new-instance v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-static {v1}, Lcom/google/common/graph/Traverser$GraphTraverser;->access$100(Lcom/google/common/graph/Traverser$GraphTraverser;)Lcom/google/common/graph/SuccessorsFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;-><init>(Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-object v0
.end method
