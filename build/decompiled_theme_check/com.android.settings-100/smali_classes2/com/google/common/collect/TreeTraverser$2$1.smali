.class Lcom/google/common/collect/TreeTraverser$2$1;
.super Ljava/lang/Object;
.source "TreeTraverser.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeTraverser$2;->forEach(Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/TreeTraverser$2;

.field final synthetic val$action:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeTraverser$2;Ljava/util/function/Consumer;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$2$1;->this$1:Lcom/google/common/collect/TreeTraverser$2;

    iput-object p2, p0, Lcom/google/common/collect/TreeTraverser$2$1;->val$action:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$2$1;->val$action:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$2$1;->this$1:Lcom/google/common/collect/TreeTraverser$2;

    iget-object v0, v0, Lcom/google/common/collect/TreeTraverser$2;->this$0:Lcom/google/common/collect/TreeTraverser;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
