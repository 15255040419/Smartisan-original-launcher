.class Lcom/google/common/collect/TreeTraverser$3$1;
.super Ljava/lang/Object;
.source "TreeTraverser.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeTraverser$3;->forEach(Ljava/util/function/Consumer;)V
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
.field final synthetic this$1:Lcom/google/common/collect/TreeTraverser$3;

.field final synthetic val$action:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeTraverser$3;Ljava/util/function/Consumer;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$3$1;->this$1:Lcom/google/common/collect/TreeTraverser$3;

    iput-object p2, p0, Lcom/google/common/collect/TreeTraverser$3$1;->val$action:Ljava/util/function/Consumer;

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

    .line 193
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$3$1;->this$1:Lcom/google/common/collect/TreeTraverser$3;

    iget-object v0, v0, Lcom/google/common/collect/TreeTraverser$3;->this$0:Lcom/google/common/collect/TreeTraverser;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 194
    iget-object p0, p0, Lcom/google/common/collect/TreeTraverser$3$1;->val$action:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
