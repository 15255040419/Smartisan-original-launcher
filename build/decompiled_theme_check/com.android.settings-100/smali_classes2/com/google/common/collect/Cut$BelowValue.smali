.class final Lcom/google/common/collect/Cut$BelowValue;
.super Lcom/google/common/collect/Cut;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Cut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BelowValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/Cut<",
        "TC;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 305
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 303
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-super {p0, p1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result p0

    return p0
.end method

.method describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .locals 1

    const/16 v0, 0x5b

    .line 351
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method greatestValueBelow(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 366
    iget-object p0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p1, p0}, Lcom/google/common/collect/DiscreteDomain;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method isLessThan(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 310
    iget-object p0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-static {p0, p1}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method leastValueAbove(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 361
    iget-object p0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method typeAsLowerBound()Lcom/google/common/collect/BoundType;
    .locals 0

    .line 315
    sget-object p0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    return-object p0
.end method

.method typeAsUpperBound()Lcom/google/common/collect/BoundType;
    .locals 0

    .line 320
    sget-object p0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    return-object p0
.end method

.method withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lcom/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 325
    sget-object v0, Lcom/google/common/collect/Cut$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 329
    iget-object p0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p2, p0}, Lcom/google/common/collect/DiscreteDomain;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    if-nez p0, :cond_0

    .line 330
    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/collect/Cut$AboveValue;

    invoke-direct {p1, p0}, Lcom/google/common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    move-object p0, p1

    :goto_0
    return-object p0

    .line 332
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    return-object p0
.end method

.method withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lcom/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/google/common/collect/Cut$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    return-object p0

    .line 345
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 340
    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p2, p0}, Lcom/google/common/collect/DiscreteDomain;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    if-nez p0, :cond_2

    .line 341
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/common/collect/Cut$AboveValue;

    invoke-direct {p1, p0}, Lcom/google/common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method
