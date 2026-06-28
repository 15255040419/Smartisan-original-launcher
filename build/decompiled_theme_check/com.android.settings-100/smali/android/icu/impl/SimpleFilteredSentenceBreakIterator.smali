.class public Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;
.super Landroid/icu/text/BreakIterator;
.source "SimpleFilteredSentenceBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;
    }
.end annotation


# instance fields
.field private backwardsTrie:Landroid/icu/util/CharsTrie;

.field private delegate:Landroid/icu/text/BreakIterator;

.field private forwardsPartialTrie:Landroid/icu/util/CharsTrie;

.field private text:Landroid/icu/text/UCharacterIterator;


# direct methods
.method public constructor <init>(Landroid/icu/text/BreakIterator;Landroid/icu/util/CharsTrie;Landroid/icu/util/CharsTrie;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/icu/text/BreakIterator;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    .line 48
    iput-object p2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    .line 49
    iput-object p3, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    return-void
.end method

.method private final breakExceptionAt(I)Z
    .locals 4

    .line 73
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 74
    iget-object p1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {p1}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    .line 80
    iget-object p1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    .line 86
    :goto_0
    sget-object p1, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    const/4 v0, -0x1

    move v1, v0

    move v2, v1

    .line 88
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v3

    if-eq v3, v0, :cond_2

    iget-object p1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    .line 89
    invoke-virtual {p1, v3}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    invoke-virtual {p1}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v1

    .line 92
    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v2}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result v2

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p1}, Landroid/icu/util/BytesTrie$Result;->matches()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 97
    iget-object p1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {p1}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result v2

    .line 98
    iget-object p1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v1

    :cond_3
    if-ltz v1, :cond_6

    const/4 p1, 0x2

    const/4 v3, 0x1

    if-ne v2, p1, :cond_4

    return v3

    :cond_4
    if-ne v2, v3, :cond_6

    .line 104
    iget-object p1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    if-eqz p1, :cond_6

    .line 108
    invoke-virtual {p1}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    .line 110
    sget-object p1, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 111
    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2, v1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 112
    :goto_2
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v1

    if-eq v1, v0, :cond_5

    iget-object p1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    .line 113
    invoke-virtual {p1, v1}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 115
    :cond_5
    invoke-virtual {p1}, Landroid/icu/util/BytesTrie$Result;->matches()Z

    move-result p0

    if-eqz p0, :cond_6

    return v3

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private final internalNext(I)I
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 131
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    if-nez v1, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->resetState()V

    .line 137
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v1

    :goto_0
    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    .line 143
    invoke-direct {p0, p1}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->breakExceptionAt(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object p1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {p1}, Landroid/icu/text/BreakIterator;->next()I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private final internalPrev(I)I
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 161
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    if-nez v1, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->resetState()V

    :goto_0
    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 171
    invoke-direct {p0, p1}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->breakExceptionAt(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget-object p1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {p1}, Landroid/icu/text/BreakIterator;->previous()I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private final resetState()V
    .locals 1

    .line 57
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    invoke-static {v0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-super {p0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;

    return-object p0
.end method

.method public current()I
    .locals 0

    .line 225
    iget-object p0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {p0}, Landroid/icu/text/BreakIterator;->current()I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 188
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    .line 190
    :cond_2
    check-cast p1, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;

    .line 191
    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    iget-object v3, p1, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    iget-object v3, p1, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    iget-object v3, p1, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    iget-object p1, p1, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    .line 192
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public first()I
    .locals 0

    .line 210
    iget-object p0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {p0}, Landroid/icu/text/BreakIterator;->first()I

    move-result p0

    return p0
.end method

.method public following(I)I
    .locals 1

    .line 255
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->internalNext(I)I

    move-result p0

    return p0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 0

    .line 266
    iget-object p0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {p0}, Landroid/icu/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 197
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x27

    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget-object p0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isBoundary(I)Z
    .locals 2

    .line 230
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 235
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 239
    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->resetState()V

    .line 240
    invoke-direct {p0, p1}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->breakExceptionAt(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public last()I
    .locals 0

    .line 261
    iget-object p0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {p0}, Landroid/icu/text/BreakIterator;->last()I

    move-result p0

    return p0
.end method

.method public next()I
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->next()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->internalNext(I)I

    move-result p0

    return p0
.end method

.method public next(I)I
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->next(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->internalNext(I)I

    move-result p0

    return p0
.end method

.method public preceding(I)I
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->internalPrev(I)I

    move-result p0

    return p0
.end method

.method public previous()I
    .locals 1

    .line 220
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->previous()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->internalPrev(I)I

    move-result p0

    return p0
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 0

    .line 271
    iget-object p0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {p0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method
