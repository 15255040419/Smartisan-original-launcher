.class Lcom/google/common/primitives/ImmutableDoubleArray$AsList;
.super Ljava/util/AbstractList;
.source "ImmutableDoubleArray.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableDoubleArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final parent:Lcom/google/common/primitives/ImmutableDoubleArray;


# direct methods
.method private constructor <init>(Lcom/google/common/primitives/ImmutableDoubleArray;)V
    .locals 0

    .line 472
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 473
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/primitives/ImmutableDoubleArray;Lcom/google/common/primitives/ImmutableDoubleArray$1;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableDoubleArray;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 490
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

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

    .line 516
    instance-of v0, p1, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;

    if-eqz v0, :cond_0

    .line 517
    check-cast p1, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;

    .line 518
    iget-object p0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    iget-object p1, p1, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 521
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 524
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 525
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$100(Lcom/google/common/primitives/ImmutableDoubleArray;)I

    move-result v0

    .line 530
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 531
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {v3}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$000(Lcom/google/common/primitives/ImmutableDoubleArray;)[D

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-wide v5, v3, v0

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v5, v6, v2, v3}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$600(DD)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public get(I)Ljava/lang/Double;
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 469
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->get(I)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    .line 495
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;->indexOf(D)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 500
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;->lastIndexOf(D)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result p0

    return p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 511
    iget-object p0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$500(Lcom/google/common/primitives/ImmutableDoubleArray;)Ljava/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public subList(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 505
    iget-object p0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->subArray(II)Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->asList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
