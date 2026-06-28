.class Lcom/google/common/collect/Lists$ReverseList$1;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Lists$ReverseList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field canRemoveOrSet:Z

.field final synthetic this$0:Lcom/google/common/collect/Lists$ReverseList;

.field final synthetic val$forwardIterator:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$ReverseList;Ljava/util/ListIterator;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lcom/google/common/collect/Lists$ReverseList$1;->this$0:Lcom/google/common/collect/Lists$ReverseList;

    iput-object p2, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 889
    iget-object p1, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    const/4 p1, 0x0

    .line 890
    iput-boolean p1, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    return-void
.end method

.method public hasNext()Z
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    .line 900
    iget-object p0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 905
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 908
    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 909
    iget-object p0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 906
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public nextIndex()I
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->this$0:Lcom/google/common/collect/Lists$ReverseList;

    iget-object p0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Lists$ReverseList;->access$000(Lcom/google/common/collect/Lists$ReverseList;I)I

    move-result p0

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 919
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 922
    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 923
    iget-object p0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 920
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public previousIndex()I
    .locals 0

    .line 928
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->nextIndex()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public remove()V
    .locals 1

    .line 933
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 934
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    const/4 v0, 0x0

    .line 935
    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 940
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 941
    iget-object p0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
