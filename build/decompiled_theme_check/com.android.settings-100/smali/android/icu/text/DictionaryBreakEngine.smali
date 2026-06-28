.class abstract Landroid/icu/text/DictionaryBreakEngine;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"

# interfaces
.implements Landroid/icu/text/LanguageBreakEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DictionaryBreakEngine$DequeI;,
        Landroid/icu/text/DictionaryBreakEngine$PossibleWord;
    }
.end annotation


# instance fields
.field fSet:Landroid/icu/text/UnicodeSet;

.field private fTypes:Ljava/util/BitSet;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Integer;)V
    .locals 4

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    .line 173
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    .line 180
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 181
    iget-object v3, p0, Landroid/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method abstract divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
.end method

.method public findBreaks(Ljava/text/CharacterIterator;IIILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 2

    .line 200
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p2

    .line 204
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result p4

    .line 205
    :goto_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    if-ge v0, p3, :cond_0

    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p4}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 206
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 207
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result p4

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0, p1, p2, v0, p5}, Landroid/icu/text/DictionaryBreakEngine;->divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I

    move-result p0

    .line 215
    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    return p0
.end method

.method public handles(II)Z
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    .line 188
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setCharacters(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    .line 221
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    .line 222
    iget-object p0, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    return-void
.end method
