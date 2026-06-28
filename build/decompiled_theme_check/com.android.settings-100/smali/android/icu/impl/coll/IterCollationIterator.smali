.class public Landroid/icu/impl/coll/IterCollationIterator;
.super Landroid/icu/impl/coll/CollationIterator;
.source "IterCollationIterator.java"


# instance fields
.field protected iter:Landroid/icu/text/UCharacterIterator;


# direct methods
.method public constructor <init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;Z)V

    .line 28
    iput-object p3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    return-void
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 0

    .line 75
    iget-object p0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    neg-int p1, p1

    invoke-virtual {p0, p1}, Landroid/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    return-void
.end method

.method protected forwardNumCodePoints(I)V
    .locals 0

    .line 70
    iget-object p0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0, p1}, Landroid/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    return-void
.end method

.method public getOffset()I
    .locals 0

    .line 39
    iget-object p0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result p0

    return p0
.end method

.method protected handleGetTrailSurrogate()C
    .locals 2

    .line 63
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 64
    invoke-static {v0}, Landroid/icu/impl/coll/IterCollationIterator;->isTrailSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz v0, :cond_0

    iget-object p0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    :cond_0
    int-to-char p0, v0

    return p0
.end method

.method protected handleNextCE32()J
    .locals 3

    .line 54
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    if-gez v0, :cond_0

    const-wide v0, -0xffffff40L

    return-wide v0

    .line 58
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/IterCollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/IterCollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextCodePoint()I
    .locals 0

    .line 44
    iget-object p0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result p0

    return p0
.end method

.method public previousCodePoint()I
    .locals 0

    .line 49
    iget-object p0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result p0

    return p0
.end method

.method public resetToOffset(I)V
    .locals 0

    .line 33
    invoke-virtual {p0}, Landroid/icu/impl/coll/IterCollationIterator;->reset()V

    .line 34
    iget-object p0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    return-void
.end method
