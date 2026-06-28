.class final Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "TreeTraverser.java"

# interfaces
.implements Lcom/google/common/collect/PeekingIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BreadthFirstIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TT;>;",
        "Lcom/google/common/collect/PeekingIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/collect/TreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 269
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    .line 270
    iget-object p0, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {p0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    iget-object p0, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/collect/TreeTraverser;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 280
    iget-object p0, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
