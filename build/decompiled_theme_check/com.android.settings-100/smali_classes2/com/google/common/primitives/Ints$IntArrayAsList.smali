.class Lcom/google/common/primitives/Ints$IntArrayAsList;
.super Ljava/util/AbstractList;
.source "Ints.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Ints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[I

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([I)V
    .locals 2

    .line 567
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([III)V

    return-void
.end method

.method constructor <init>([III)V
    .locals 0

    .line 570
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 571
    iput-object p1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    .line 572
    iput p2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    .line 573
    iput p3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 600
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget p0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v0, p1, v1, p0}, Lcom/google/common/primitives/Ints;->access$000([IIII)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 651
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v1, :cond_4

    .line 652
    check-cast p1, Lcom/google/common/primitives/Ints$IntArrayAsList;

    .line 653
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    .line 654
    invoke-virtual {p1}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    return v3

    :cond_1
    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_3

    .line 658
    iget-object v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v5, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v5, v2

    aget v4, v4, v5

    iget-object v5, p1, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v6, p1, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v6, v2

    aget v5, v5, v6

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    .line 664
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)Ljava/lang/Integer;
    .locals 1

    .line 588
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 589
    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget p0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr p0, p1

    aget p0, v0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 559
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Ints$IntArrayAsList;->get(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 670
    iget v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 671
    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .line 606
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Ints;->access$000([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 609
    iget p0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    .line 618
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Ints;->access$100([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 621
    iget p0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public set(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 629
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 630
    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget p0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int v1, p0, p1

    aget v1, v0, v1

    add-int/2addr p0, p1

    .line 632
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, p0

    .line 633
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 559
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Ints$IntArrayAsList;->set(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 1

    .line 578
    iget v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    iget p0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfInt;
    .locals 3

    .line 594
    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget p0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Ljava/util/Spliterators;->spliterator([IIII)Ljava/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 0

    .line 559
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 638
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    .line 639
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_0

    .line 641
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 643
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget p0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr p1, p0

    add-int/2addr p0, p2

    invoke-direct {v0, v1, p1, p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([III)V

    return-object v0
.end method

.method toIntArray()[I
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget p0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 679
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 680
    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    .line 681
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 p0, 0x5d

    .line 683
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
