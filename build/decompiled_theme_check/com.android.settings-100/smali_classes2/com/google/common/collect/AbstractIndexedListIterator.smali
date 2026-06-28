.class abstract Lcom/google/common/collect/AbstractIndexedListIterator;
.super Lcom/google/common/collect/UnmodifiableListIterator;
.source "AbstractIndexedListIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private position:I

.field private final size:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableListIterator;-><init>()V

    .line 62
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 63
    iput p1, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->size:I

    .line 64
    iput p2, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    return-void
.end method


# virtual methods
.method protected abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 1

    .line 69
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    iget p0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->size:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    .line 87
    iget p0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final nextIndex()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 93
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final previousIndex()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
