.class Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private cursor:I

.field private expectedModCount:I

.field private forgetMeNot:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private lastFromForgetMeNot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private nextCursor:I

.field private skipMe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 750
    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    .line 751
    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextCursor:I

    .line 752
    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$700(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V
    .locals 0

    .line 749
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;)V

    return-void
.end method

.method private checkModCount()V
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$700(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    iget p0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->expectedModCount:I

    if-ne v0, p0, :cond_0

    return-void

    .line 839
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method private foundAndRemovedExactReference(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;TE;)Z"
        }
    .end annotation

    .line 816
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 817
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_0

    .line 819
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private nextNotInSkipMe(I)V
    .locals 2

    .line 848
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextCursor:I

    if-ge v0, p1, :cond_1

    .line 849
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->skipMe:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 850
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->skipMe:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->foundAndRemovedExactReference(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 854
    :cond_0
    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextCursor:I

    :cond_1
    return-void
.end method

.method private removeExact(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 828
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 829
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 830
    iget-object p0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAt(I)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 762
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->checkModCount()V

    .line 763
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextNotInSkipMe(I)V

    .line 764
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextCursor:I

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 769
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->checkModCount()V

    .line 770
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextNotInSkipMe(I)V

    .line 771
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextCursor:I

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 772
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextCursor:I

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    .line 773
    iput-boolean v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->canRemove:Z

    .line 774
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    iget p0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    .line 777
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    .line 778
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 779
    iput-boolean v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->canRemove:Z

    return-object v0

    .line 783
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "iterator moved past last element in queue."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove()V
    .locals 3

    .line 788
    iget-boolean v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->canRemove:Z

    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 789
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->checkModCount()V

    const/4 v0, 0x0

    .line 790
    iput-boolean v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->canRemove:Z

    .line 791
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->expectedModCount:I

    .line 792
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 793
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAt(I)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 795
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    if-nez v1, :cond_0

    .line 796
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    .line 797
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->skipMe:Ljava/util/List;

    .line 799
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->skipMe:Ljava/util/List;

    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;->toTrickle:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->foundAndRemovedExactReference(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 800
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;->toTrickle:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;->replaced:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->foundAndRemovedExactReference(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 803
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->skipMe:Ljava/util/List;

    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;->replaced:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_2
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    .line 807
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextCursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextCursor:I

    goto :goto_0

    .line 809
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->removeExact(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    .line 810
    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    :goto_0
    return-void
.end method
