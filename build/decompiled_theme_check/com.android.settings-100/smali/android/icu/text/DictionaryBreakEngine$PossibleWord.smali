.class Landroid/icu/text/DictionaryBreakEngine$PossibleWord;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DictionaryBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PossibleWord"
.end annotation


# static fields
.field private static final POSSIBLE_WORD_LIST_MAX:I = 0x14


# instance fields
.field private count:[I

.field private current:I

.field private lengths:[I

.field private mark:I

.field private offset:I

.field private prefix:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 36
    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 37
    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    return-void
.end method


# virtual methods
.method public acceptMarked(Ljava/text/CharacterIterator;)I
    .locals 3

    .line 62
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget v2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 63
    iget-object p1, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget p0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    aget p0, p1, p0

    return p0
.end method

.method public backUp(Ljava/text/CharacterIterator;)Z
    .locals 4

    .line 69
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    if-lez v0, :cond_0

    .line 70
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    iget-object v2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    aget p0, v2, v0

    add-int/2addr v1, p0

    invoke-interface {p1, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    return v3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I
    .locals 9

    .line 43
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 44
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 45
    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    sub-int v5, p3, v0

    .line 46
    iget-object v6, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget-object v7, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    array-length v8, v6

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II)I

    move-result p2

    iput p2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->prefix:I

    .line 48
    iget-object p2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    aget p2, p2, v2

    if-gtz p2, :cond_0

    .line 49
    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 52
    :cond_0
    iget-object p2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    aget p3, p2, v2

    if-lez p3, :cond_1

    .line 53
    iget-object p3, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    aget p2, p2, v2

    add-int/lit8 p2, p2, -0x1

    aget p2, p3, p2

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 55
    :cond_1
    iget-object p1, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    aget p2, p1, v2

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    .line 56
    iget p2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    iput p2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    .line 57
    aget p0, p1, v2

    return p0
.end method

.method public longestPrefix()I
    .locals 0

    .line 78
    iget p0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->prefix:I

    return p0
.end method

.method public markCurrent()V
    .locals 1

    .line 83
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    return-void
.end method
