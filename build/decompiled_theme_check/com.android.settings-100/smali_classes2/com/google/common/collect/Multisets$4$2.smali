.class Lcom/google/common/collect/Multisets$4$2;
.super Lcom/google/common/collect/AbstractIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$4;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multisets$4;

.field final synthetic val$iterator1:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$4;Ljava/util/Iterator;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/google/common/collect/Multisets$4$2;->this$0:Lcom/google/common/collect/Multisets$4;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$4$2;->val$iterator1:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Lcom/google/common/collect/Multiset$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multisets$4$2;->val$iterator1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/google/common/collect/Multisets$4$2;->val$iterator1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 657
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 658
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/Multisets$4$2;->this$0:Lcom/google/common/collect/Multisets$4;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$4;->val$multiset2:Lcom/google/common/collect/Multiset;

    invoke-interface {v2, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_0

    .line 660
    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p0

    return-object p0

    .line 663
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$4$2;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset$Entry;

    return-object p0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 0

    .line 652
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$4$2;->computeNext()Lcom/google/common/collect/Multiset$Entry;

    move-result-object p0

    return-object p0
.end method
