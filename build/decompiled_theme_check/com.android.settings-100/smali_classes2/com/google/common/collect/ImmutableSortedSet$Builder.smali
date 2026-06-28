.class public final Lcom/google/common/collect/ImmutableSortedSet$Builder;
.super Lcom/google/common/collect/ImmutableSet$Builder;
.source "ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedSet;
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
        "Lcom/google/common/collect/ImmutableSet$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 439
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>(Z)V

    .line 440
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 441
    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 442
    iput p1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    return-void
.end method

.method private sortAndDedup()V
    .locals 5

    .line 451
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    if-nez v0, :cond_0

    return-void

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, 0x1

    move v1, v0

    .line 456
    :goto_0
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    if-ge v0, v2, :cond_3

    .line 457
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v1, -0x1

    aget-object v4, v3, v4

    aget-object v3, v3, v0

    invoke-interface {v2, v4, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 459
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v0

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_1

    :cond_1
    if-gtz v2, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comparator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " compare method violates its contract"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 466
    iput v1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 481
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->copyIfNecessary()V

    .line 483
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->sortAndDedup()V

    .line 490
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    .line 491
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 492
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 510
    invoke-static {p1}, Lcom/google/common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 511
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 512
    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 528
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 543
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableCollection;
    .locals 0

    .line 429
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->build()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableSet;
    .locals 0

    .line 429
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->build()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 564
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->sortAndDedup()V

    .line 565
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    if-nez v0, :cond_0

    .line 566
    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    .line 568
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->forceCopy:Z

    .line 569
    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    .line 570
    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v0, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v1
.end method

.method bridge synthetic combine(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->combine(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p0

    return-object p0
.end method

.method combine(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 550
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->copyIfNecessary()V

    .line 551
    check-cast p1, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    const/4 v0, 0x0

    .line 552
    :goto_0
    iget v1, p1, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    if-ge v0, v1, :cond_0

    .line 553
    iget-object v1, p1, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method copy()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    return-void
.end method
