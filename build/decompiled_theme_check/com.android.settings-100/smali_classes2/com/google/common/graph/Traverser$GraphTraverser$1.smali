.class Lcom/google/common/graph/Traverser$GraphTraverser$1;
.super Ljava/lang/Object;
.source "Traverser.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser$GraphTraverser;->breadthFirst(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

.field final synthetic val$startNodes:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Iterable;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$1;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    iput-object p2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$1;->val$startNodes:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    .line 344
    new-instance v0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;

    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$1;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    iget-object p0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$1;->val$startNodes:Ljava/lang/Iterable;

    invoke-direct {v0, v1, p0}, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;-><init>(Lcom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Iterable;)V

    return-object v0
.end method
