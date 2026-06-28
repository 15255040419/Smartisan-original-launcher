.class final Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DepthFirstPostOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/common/graph/Traverser$TreeTraverser<",
            "TN;>.DepthFirstPostOrderIterator.NodeAndChildren;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/graph/Traverser$TreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$TreeTraverser;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)V"
        }
    .end annotation

    .line 620
    iput-object p1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->this$0:Lcom/google/common/graph/Traverser$TreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 618
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->stack:Ljava/util/ArrayDeque;

    .line 621
    iget-object p1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->stack:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;-><init>(Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 626
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;

    .line 628
    iget-object v1, v0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;->childIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    iget-object v0, v0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;->childIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 630
    iget-object v1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->withChildren(Ljava/lang/Object;)Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 632
    :cond_1
    iget-object v1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 633
    iget-object v1, v0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;->node:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 634
    iget-object p0, v0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;->node:Ljava/lang/Object;

    return-object p0

    .line 638
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method withChildren(Ljava/lang/Object;)Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/Traverser$TreeTraverser<",
            "TN;>.DepthFirstPostOrderIterator.NodeAndChildren;"
        }
    .end annotation

    .line 642
    new-instance v0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;

    iget-object v1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->this$0:Lcom/google/common/graph/Traverser$TreeTraverser;

    invoke-static {v1}, Lcom/google/common/graph/Traverser$TreeTraverser;->access$200(Lcom/google/common/graph/Traverser$TreeTraverser;)Lcom/google/common/graph/SuccessorsFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;-><init>(Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-object v0
.end method
