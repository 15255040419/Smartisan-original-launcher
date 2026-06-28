.class Lcom/google/common/collect/Collections2$PermutationIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermutationIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final c:[I

.field j:I

.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field final o:[I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 629
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    .line 631
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 632
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    .line 633
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    .line 634
    iget-object p1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 635
    iget-object p1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    const p1, 0x7fffffff

    .line 636
    iput p1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    return-void
.end method


# virtual methods
.method calculateNextPermutation()V
    .locals 5

    .line 650
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    .line 655
    iget v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 660
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    iget v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v3, v1, v2

    iget-object v4, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    if-gez v3, :cond_1

    .line 662
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->switchDirection()V

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v2, 0x1

    if-ne v3, v4, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 670
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->switchDirection()V

    goto :goto_0

    .line 674
    :cond_3
    iget-object v4, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    aget v1, v1, v2

    sub-int v1, v2, v1

    add-int/2addr v1, v0

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-static {v4, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 675
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    iget p0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aput v3, v0, p0

    :goto_1
    return-void
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 0

    .line 623
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->computeNext()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected computeNext()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 641
    iget v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    if-gtz v0, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 645
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->calculateNextPermutation()V

    return-object v0
.end method

.method switchDirection()V
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    iget v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v2, v0, v1

    neg-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    .line 682
    iput v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    return-void
.end method
