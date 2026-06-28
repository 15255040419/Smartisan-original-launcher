.class Lcom/google/common/primitives/Booleans$BooleanArrayAsList;
.super Ljava/util/AbstractList;
.source "Booleans.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Booleans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BooleanArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[Z

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([Z)V
    .locals 2

    .line 385
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([ZII)V

    return-void
.end method

.method constructor <init>([ZII)V
    .locals 0

    .line 388
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    .line 390
    iput p2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    .line 391
    iput p3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 413
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    .line 414
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget p0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    invoke-static {v0, p1, v1, p0}, Lcom/google/common/primitives/Booleans;->access$000([ZZII)I

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

    .line 465
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    if-eqz v1, :cond_4

    .line 466
    check-cast p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    .line 467
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v1

    .line 468
    invoke-virtual {p1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    return v3

    :cond_1
    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_3

    .line 472
    iget-object v4, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v5, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v5, v2

    aget-boolean v4, v4, v5

    iget-object v5, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v6, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v6, v2

    aget-boolean v5, v5, v6

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    .line 478
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)Ljava/lang/Boolean;
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 407
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget p0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr p0, p1

    aget-boolean p0, v0, p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 377
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->get(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 484
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 485
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    aget-boolean v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Booleans;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .line 420
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Booleans;->access$000([ZZII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 423
    iget p0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

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

    .line 432
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Booleans;->access$100([ZZII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 435
    iget p0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    sub-int/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public set(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    .line 443
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 444
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget p0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int v1, p0, p1

    aget-boolean v1, v0, v1

    add-int/2addr p0, p1

    .line 446
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    aput-boolean p1, v0, p0

    .line 447
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 377
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->set(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 1

    .line 396
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    iget p0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    .line 453
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_0

    .line 455
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 457
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget p0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr p1, p0

    add-int/2addr p0, p2

    invoke-direct {v0, v1, p1, p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([ZII)V

    return-object v0
.end method

.method toBooleanArray()[Z
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget p0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([ZII)[Z

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 493
    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    const-string v1, "[true"

    goto :goto_0

    :cond_0
    const-string v1, "[false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    if-ge v1, v2, :cond_2

    .line 495
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    const-string v2, ", true"

    goto :goto_2

    :cond_1
    const-string v2, ", false"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 p0, 0x5d

    .line 497
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
