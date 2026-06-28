.class public final Lcom/google/common/collect/ImmutableList$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field contents:[Ljava/lang/Object;

.field private forceCopy:Z

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 760
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 763
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 764
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 765
    iput p1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    return-void
.end method

.method private add([Ljava/lang/Object;I)V
    .locals 3

    .line 810
    iget v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$Builder;->getReadyToExpandTo(I)V

    .line 811
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    iget p1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    return-void
.end method

.method private getReadyToExpandTo(I)V
    .locals 3

    .line 769
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    .line 770
    array-length v1, v0

    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableList$Builder;->expandedCapacity(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    .line 771
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableList$Builder;->forceCopy:Z

    goto :goto_0

    .line 772
    :cond_0
    iget-boolean p1, p0, Lcom/google/common/collect/ImmutableList$Builder;->forceCopy:Z

    if-eqz p1, :cond_1

    .line 773
    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    .line 774
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableList$Builder;->forceCopy:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 788
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    iget v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$Builder;->getReadyToExpandTo(I)V

    .line 790
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 804
    invoke-static {p1}, Lcom/google/common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 805
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 825
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 827
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 828
    iget v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->getReadyToExpandTo(I)V

    .line 829
    instance-of v1, v0, Lcom/google/common/collect/ImmutableCollection;

    if-eqz v1, :cond_0

    .line 830
    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    .line 831
    iget-object p1, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    return-object p0

    .line 835
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 849
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableCollection;
    .locals 0

    .line 750
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 865
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->forceCopy:Z

    .line 866
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method combine(Lcom/google/common/collect/ImmutableList$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 855
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    iget-object v0, p1, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget p1, p1, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;I)V

    return-object p0
.end method
