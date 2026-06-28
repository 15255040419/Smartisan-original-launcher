.class public Landroid/icu/impl/CharacterIteratorWrapper;
.super Landroid/icu/text/UCharacterIterator;
.source "CharacterIteratorWrapper.java"


# instance fields
.field private iterator:Ljava/text/CharacterIterator;


# direct methods
.method public constructor <init>(Ljava/text/CharacterIterator;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    return-void

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 134
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/CharacterIteratorWrapper;

    .line 135
    iget-object p0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/CharacterIterator;

    iput-object p0, v0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public current()I
    .locals 1

    .line 40
    iget-object p0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result p0

    const v0, 0xffff

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public getCharacterIterator()Ljava/text/CharacterIterator;
    .locals 0

    .line 161
    iget-object p0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/CharacterIterator;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 60
    iget-object p0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p0

    return p0
.end method

.method public getLength()I
    .locals 1

    .line 52
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget-object p0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getText([CI)I
    .locals 4

    .line 113
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    .line 114
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    if-ltz p2, :cond_1

    add-int v2, p2, v0

    .line 115
    array-length v3, p1

    if-gt v2, v3, :cond_1

    .line 119
    iget-object v2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->first()C

    move-result v2

    :goto_0
    const v3, 0xffff

    if-eq v2, v3, :cond_0

    add-int/lit8 v3, p2, 0x1

    .line 120
    aput-char v2, p1, p2

    .line 119
    iget-object p2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    move p2, v3

    goto :goto_0

    .line 122
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    return v0

    .line 116
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public moveIndex(I)I
    .locals 2

    .line 145
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    .line 146
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    add-int/2addr p1, v1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 153
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p0, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p0

    return p0
.end method

.method public next()I
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    .line 69
    iget-object p0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    const p0, 0xffff

    if-ne v0, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0
.end method

.method public previous()I
    .locals 1

    .line 81
    iget-object p0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result p0

    const v0, 0xffff

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public setIndex(I)V
    .locals 0

    .line 94
    :try_start_0
    iget-object p0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 96
    :catch_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public setToLimit()V
    .locals 1

    .line 105
    iget-object p0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    return-void
.end method
