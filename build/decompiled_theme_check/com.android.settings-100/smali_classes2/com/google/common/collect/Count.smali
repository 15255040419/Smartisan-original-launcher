.class final Lcom/google/common/collect/Count;
.super Ljava/lang/Object;
.source "Count.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private value:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1

    .line 39
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/Count;->value:I

    return-void
.end method

.method public addAndGet(I)I
    .locals 1

    .line 43
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 63
    instance-of v0, p1, Lcom/google/common/collect/Count;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/Count;

    iget p1, p1, Lcom/google/common/collect/Count;->value:I

    iget p0, p0, Lcom/google/common/collect/Count;->value:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public get()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/google/common/collect/Count;->value:I

    return p0
.end method

.method public getAndSet(I)I
    .locals 1

    .line 51
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    .line 52
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/google/common/collect/Count;->value:I

    return p0
.end method

.method public set(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 68
    iget p0, p0, Lcom/google/common/collect/Count;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
