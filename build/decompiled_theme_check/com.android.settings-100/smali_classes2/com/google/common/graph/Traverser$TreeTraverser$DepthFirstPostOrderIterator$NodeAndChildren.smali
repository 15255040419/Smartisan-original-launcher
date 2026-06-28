.class final Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;
.super Ljava/lang/Object;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NodeAndChildren"
.end annotation


# instance fields
.field final childIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TN;>;"
        }
    .end annotation
.end field

.field final node:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V
    .locals 0
    .param p1    # Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/Iterable<",
            "+TN;>;)V"
        }
    .end annotation

    .line 650
    iput-object p1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;->this$1:Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput-object p2, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;->node:Ljava/lang/Object;

    .line 652
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;->childIterator:Ljava/util/Iterator;

    return-void
.end method
