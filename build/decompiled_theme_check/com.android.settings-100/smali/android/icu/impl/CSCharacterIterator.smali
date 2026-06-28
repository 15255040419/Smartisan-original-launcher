.class public Landroid/icu/impl/CSCharacterIterator;
.super Ljava/lang/Object;
.source "CSCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private index:I

.field private seq:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 27
    iput-object p1, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 104
    new-instance v0, Landroid/icu/impl/CSCharacterIterator;

    iget-object v1, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/icu/impl/CSCharacterIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    iget p0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    invoke-virtual {v0, p0}, Landroid/icu/impl/CSCharacterIterator;->setIndex(I)C

    return-object v0
.end method

.method public current()C
    .locals 2

    .line 48
    iget v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    iget-object v1, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const p0, 0xffff

    return p0

    .line 51
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    iget p0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    invoke-interface {v0, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    return p0
.end method

.method public first()C
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    .line 35
    invoke-virtual {p0}, Landroid/icu/impl/CSCharacterIterator;->current()C

    move-result p0

    return p0
.end method

.method public getBeginIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEndIndex()I
    .locals 0

    .line 92
    iget-object p0, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public getIndex()I
    .locals 0

    .line 98
    iget p0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    return p0
.end method

.method public last()C
    .locals 1

    .line 41
    iget-object v0, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    .line 42
    invoke-virtual {p0}, Landroid/icu/impl/CSCharacterIterator;->previous()C

    move-result p0

    return p0
.end method

.method public next()C
    .locals 2

    .line 57
    iget v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    iget-object v1, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 58
    iget v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/CSCharacterIterator;->current()C

    move-result p0

    return p0
.end method

.method public previous()C
    .locals 1

    .line 66
    iget v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    if-nez v0, :cond_0

    const p0, 0xffff

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 69
    iput v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    .line 70
    invoke-virtual {p0}, Landroid/icu/impl/CSCharacterIterator;->current()C

    move-result p0

    return p0
.end method

.method public setIndex(I)C
    .locals 1

    if-ltz p1, :cond_0

    .line 76
    iget-object v0, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 79
    iput p1, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    .line 80
    invoke-virtual {p0}, Landroid/icu/impl/CSCharacterIterator;->current()C

    move-result p0

    return p0

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
