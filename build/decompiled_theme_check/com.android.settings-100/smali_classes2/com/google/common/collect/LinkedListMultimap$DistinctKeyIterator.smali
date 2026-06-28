.class Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DistinctKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field current:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field expectedModCount:I

.field next:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final seenKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iget-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {p1}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->seenKeys:Ljava/util/Set;

    .line 419
    iget-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 421
    iget-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V
    .locals 0

    .line 417
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iget p0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->expectedModCount:I

    if-ne v0, p0, :cond_0

    return-void

    .line 425
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 431
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->checkForConcurrentModification()V

    .line 432
    iget-object p0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 437
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->checkForConcurrentModification()V

    .line 438
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 440
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->seenKeys:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 443
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->seenKeys:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object p0, p0, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public remove()V
    .locals 2

    .line 449
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->checkForConcurrentModification()V

    .line 450
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 451
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 452
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 453
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->expectedModCount:I

    return-void
.end method
