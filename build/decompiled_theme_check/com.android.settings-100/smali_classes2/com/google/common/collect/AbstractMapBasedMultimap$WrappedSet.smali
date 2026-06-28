.class Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;
.super Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.WrappedCollection;",
        "Ljava/util/Set<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .param p1    # Lcom/google/common/collect/AbstractMapBasedMultimap;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set<",
            "TV;>;)V"
        }
    .end annotation

    .line 592
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    const/4 v0, 0x0

    .line 593
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 598
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 601
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->size()I

    move-result v0

    .line 606
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->delegate:Ljava/util/Collection;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, p1}, Lcom/google/common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 609
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$200(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v3

    sub-int/2addr v1, v0

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$202(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 610
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->removeIfEmpty()V

    :cond_1
    return p1
.end method
