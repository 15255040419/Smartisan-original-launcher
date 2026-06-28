.class Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

.field final synthetic val$entryIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;Ljava/util/Iterator;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 929
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 934
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    .line 935
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 4

    .line 940
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 941
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 942
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 943
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v2, v2, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$200(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$202(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 944
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    .line 945
    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    return-void
.end method
