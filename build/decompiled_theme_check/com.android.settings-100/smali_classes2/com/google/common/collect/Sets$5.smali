.class final Lcom/google/common/collect/Sets$5;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets;->combinations(Ljava/util/Set;I)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$index:Lcom/google/common/collect/ImmutableMap;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(ILcom/google/common/collect/ImmutableMap;)V
    .locals 0

    .line 1636
    iput p1, p0, Lcom/google/common/collect/Sets$5;->val$size:I

    iput-object p2, p0, Lcom/google/common/collect/Sets$5;->val$index:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1639
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1640
    check-cast p1, Ljava/util/Set;

    .line 1641
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    iget v2, p0, Lcom/google/common/collect/Sets$5;->val$size:I

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/Sets$5;->val$index:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .line 1648
    new-instance v0, Lcom/google/common/collect/Sets$5$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$5$1;-><init>(Lcom/google/common/collect/Sets$5;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1715
    iget-object v0, p0, Lcom/google/common/collect/Sets$5;->val$index:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    iget p0, p0, Lcom/google/common/collect/Sets$5;->val$size:I

    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->binomial(II)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sets.combinations("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/Sets$5;->val$index:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/common/collect/Sets$5;->val$size:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
