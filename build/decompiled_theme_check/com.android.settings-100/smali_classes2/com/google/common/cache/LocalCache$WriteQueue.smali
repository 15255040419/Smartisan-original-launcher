.class final Lcom/google/common/cache/LocalCache$WriteQueue;
.super Ljava/util/AbstractQueue;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WriteQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "Lcom/google/common/cache/ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final head:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3608
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3609
    new-instance v0, Lcom/google/common/cache/LocalCache$WriteQueue$1;

    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$WriteQueue$1;-><init>(Lcom/google/common/cache/LocalCache$WriteQueue;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 3713
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3714
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-eq v0, v1, :cond_0

    .line 3715
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    .line 3716
    invoke-static {v0}, Lcom/google/common/cache/LocalCache;->nullifyWriteOrder(Lcom/google/common/cache/ReferenceEntry;)V

    move-object v0, v1

    goto :goto_0

    .line 3720
    :cond_0
    invoke-interface {v1, v1}, Lcom/google/common/cache/ReferenceEntry;->setNextInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V

    .line 3721
    iget-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {p0, p0}, Lcom/google/common/cache/ReferenceEntry;->setPreviousInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 3691
    check-cast p1, Lcom/google/common/cache/ReferenceEntry;

    .line 3692
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p0

    sget-object p1, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 3697
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3726
    new-instance v0, Lcom/google/common/cache/LocalCache$WriteQueue$2;

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$WriteQueue;->peek()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/LocalCache$WriteQueue$2;-><init>(Lcom/google/common/cache/LocalCache$WriteQueue;Lcom/google/common/cache/ReferenceEntry;)V

    return-object v0
.end method

.method public offer(Lcom/google/common/cache/ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3650
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getPreviousInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/cache/LocalCache;->connectWriteOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 3653
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getPreviousInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/cache/LocalCache;->connectWriteOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 3654
    iget-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-static {p1, p0}, Lcom/google/common/cache/LocalCache;->connectWriteOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 3608
    check-cast p1, Lcom/google/common/cache/ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$WriteQueue;->offer(Lcom/google/common/cache/ReferenceEntry;)Z

    move-result p0

    return p0
.end method

.method public peek()Lcom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3661
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3662
    iget-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 0

    .line 3608
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$WriteQueue;->peek()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p0

    return-object p0
.end method

.method public poll()Lcom/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3667
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3668
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3672
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$WriteQueue;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 0

    .line 3608
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$WriteQueue;->poll()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 3679
    check-cast p1, Lcom/google/common/cache/ReferenceEntry;

    .line 3680
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getPreviousInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p0

    .line 3681
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3682
    invoke-static {p0, v0}, Lcom/google/common/cache/LocalCache;->connectWriteOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 3683
    invoke-static {p1}, Lcom/google/common/cache/LocalCache;->nullifyWriteOrder(Lcom/google/common/cache/ReferenceEntry;)V

    .line 3685
    sget-object p0, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 3

    .line 3703
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    const/4 v1, 0x0

    .line 3704
    :goto_0
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$WriteQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 3705
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method
