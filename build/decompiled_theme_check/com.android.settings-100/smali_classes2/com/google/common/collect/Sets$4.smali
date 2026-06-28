.class final Lcom/google/common/collect/Sets$4;
.super Lcom/google/common/collect/Sets$SetView;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets;->symmetricDifference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$SetView<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$set1:Ljava/util/Set;

.field final synthetic val$set2:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 968
    iput-object p1, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/Sets$SetView;-><init>(Lcom/google/common/collect/Sets$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    iget-object p0, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 972
    iget-object v1, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 973
    new-instance v2, Lcom/google/common/collect/Sets$4$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/Sets$4$1;-><init>(Lcom/google/common/collect/Sets$4;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 968
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$4;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 4

    .line 996
    iget-object v0, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 997
    iget-object v3, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1002
    iget-object v3, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method
