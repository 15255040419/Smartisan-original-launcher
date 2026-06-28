.class public Landroid/icu/impl/UCharacterIteratorWrapper;
.super Ljava/lang/Object;
.source "UCharacterIteratorWrapper.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private iterator:Landroid/icu/text/UCharacterIterator;


# direct methods
.method public constructor <init>(Landroid/icu/text/UCharacterIterator;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 146
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/UCharacterIteratorWrapper;

    .line 147
    iget-object p0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/UCharacterIterator;

    iput-object p0, v0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public current()C
    .locals 0

    .line 65
    iget-object p0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public first()C
    .locals 1

    .line 41
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    .line 42
    iget-object p0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public getBeginIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEndIndex()I
    .locals 0

    .line 127
    iget-object p0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result p0

    return p0
.end method

.method public getIndex()I
    .locals 0

    .line 136
    iget-object p0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result p0

    return p0
.end method

.method public last()C
    .locals 1

    .line 53
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToLimit()V

    .line 54
    iget-object p0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public next()C
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    .line 80
    iget-object p0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public previous()C
    .locals 0

    .line 93
    iget-object p0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public setIndex(I)C
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 107
    iget-object p0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result p0

    int-to-char p0, p0

    return p0
.end method
