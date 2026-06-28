.class final Lcom/google/common/collect/Sets$2;
.super Lcom/google/common/collect/Sets$SetView;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
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

    .line 829
    iput-object p1, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/Sets$SetView;-><init>(Lcom/google/common/collect/Sets$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 881
    iget-object v0, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    iget-object p0, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-static {v0, p0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 832
    new-instance v0, Lcom/google/common/collect/Sets$2$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$2$1;-><init>(Lcom/google/common/collect/Sets$2;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 829
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/common/collect/-$$Lambda$0SUabifbs_laOWE0P2D-jMk48G4;

    invoke-direct {v1, p0}, Lcom/google/common/collect/-$$Lambda$0SUabifbs_laOWE0P2D-jMk48G4;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 4

    .line 861
    iget-object v0, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

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

    .line 862
    iget-object v3, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/common/collect/-$$Lambda$0SUabifbs_laOWE0P2D-jMk48G4;

    invoke-direct {v1, p0}, Lcom/google/common/collect/-$$Lambda$0SUabifbs_laOWE0P2D-jMk48G4;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
