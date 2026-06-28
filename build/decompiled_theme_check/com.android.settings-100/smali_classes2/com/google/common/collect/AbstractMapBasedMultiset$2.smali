.class Lcom/google/common/collect/AbstractMapBasedMultiset$2;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

.field toRemove:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lcom/google/common/collect/Count;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic val$backingEntries:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->val$backingEntries:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->toRemove:Ljava/util/Map$Entry;

    .line 127
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset$2;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->next()Lcom/google/common/collect/Multiset$Entry;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->toRemove:Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 150
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$000(Lcom/google/common/collect/AbstractMapBasedMultiset;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->toRemove:Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Count;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/Count;->getAndSet(I)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$002(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J

    .line 151
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->toRemove:Ljava/util/Map$Entry;

    return-void
.end method
