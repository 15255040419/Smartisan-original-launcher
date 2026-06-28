.class Lcom/google/common/collect/Sets$3$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$3;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final itr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/Sets$3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$3;)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/google/common/collect/Sets$3$1;->this$0:Lcom/google/common/collect/Sets$3;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 904
    iget-object p1, p0, Lcom/google/common/collect/Sets$3$1;->this$0:Lcom/google/common/collect/Sets$3;

    iget-object p1, p1, Lcom/google/common/collect/Sets$3;->val$set1:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Sets$3$1;->itr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$3$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/google/common/collect/Sets$3$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 910
    iget-object v1, p0, Lcom/google/common/collect/Sets$3$1;->this$0:Lcom/google/common/collect/Sets$3;

    iget-object v1, v1, Lcom/google/common/collect/Sets$3;->val$set2:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 914
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$3$1;->endOfData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
