.class Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field final originalDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 1

    .line 440
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    .line 441
    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$100(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TV;>;)V"
        }
    .end annotation

    .line 444
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iget-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    .line 445
    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method getDelegateIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 479
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    .line 460
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 461
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 466
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 467
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 473
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 474
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    return-void
.end method

.method validateIterator()V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 453
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    return-void

    .line 454
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
