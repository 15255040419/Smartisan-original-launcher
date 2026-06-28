.class Lcom/google/common/collect/Lists$Partition;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Partition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 672
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 673
    iput-object p1, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    .line 674
    iput p2, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 668
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$Partition;->get(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 679
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$Partition;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 680
    iget v0, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    mul-int/2addr p1, v0

    add-int/2addr v0, p1

    .line 681
    iget-object v1, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 682
    iget-object p0, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {p0, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 692
    iget-object p0, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, p0, v1}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result p0

    return p0
.end method
