.class Landroid/icu/text/LaoBreakEngine;
.super Landroid/icu/text/DictionaryBreakEngine;
.source "LaoBreakEngine.java"


# static fields
.field private static final LAO_LOOKAHEAD:B = 0x3t

.field private static final LAO_MIN_WORD:B = 0x2t

.field private static final LAO_PREFIX_COMBINE_THRESHOLD:B = 0x3t

.field private static final LAO_ROOT_COMBINE_THRESHOLD:B = 0x3t

.field private static fBeginWordSet:Landroid/icu/text/UnicodeSet;

.field private static fEndWordSet:Landroid/icu/text/UnicodeSet;

.field private static fLaoWordSet:Landroid/icu/text/UnicodeSet;

.field private static fMarkSet:Landroid/icu/text/UnicodeSet;


# instance fields
.field private fDictionary:Landroid/icu/text/DictionaryMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/LaoBreakEngine;->fLaoWordSet:Landroid/icu/text/UnicodeSet;

    .line 41
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/LaoBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    .line 42
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/LaoBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    .line 44
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fLaoWordSet:Landroid/icu/text/UnicodeSet;

    const-string v1, "[[:Laoo:]&[:LineBreak=SA:]]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    .line 45
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fLaoWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 47
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    const-string v1, "[[:Laoo:]&[:LineBreak=SA:]&[:M:]]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    .line 48
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 49
    new-instance v0, Landroid/icu/text/UnicodeSet;

    sget-object v1, Landroid/icu/text/LaoBreakEngine;->fLaoWordSet:Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    sput-object v0, Landroid/icu/text/LaoBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    .line 50
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    const/16 v1, 0xec4

    const/16 v2, 0xec0

    invoke-virtual {v0, v2, v1}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    .line 51
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    const/16 v3, 0xe81

    const/16 v4, 0xeae

    invoke-virtual {v0, v3, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 52
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    const/16 v3, 0xedc

    const/16 v4, 0xedd

    invoke-virtual {v0, v3, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 53
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v2, v1}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 56
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 57
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 58
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 61
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fLaoWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 62
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 63
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 64
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Landroid/icu/text/DictionaryBreakEngine;-><init>([Ljava/lang/Integer;)V

    .line 69
    sget-object v0, Landroid/icu/text/LaoBreakEngine;->fLaoWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Landroid/icu/text/LaoBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    const-string v0, "Laoo"

    .line 71
    invoke-static {v0}, Landroid/icu/text/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Landroid/icu/text/DictionaryMatcher;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/LaoBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    return-void
.end method


# virtual methods
.method public divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sub-int v3, v2, p2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    return v5

    :cond_0
    const/4 v3, 0x3

    new-array v4, v3, [Landroid/icu/text/DictionaryBreakEngine$PossibleWord;

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_1

    .line 104
    new-instance v7, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;

    invoke-direct {v7}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;-><init>()V

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move v6, v5

    .line 109
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v7

    if-ge v7, v2, :cond_11

    .line 113
    rem-int/lit8 v8, v6, 0x3

    aget-object v9, v4, v8

    iget-object v10, v0, Landroid/icu/text/LaoBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    invoke-virtual {v9, v1, v10, v2}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 117
    aget-object v8, v4, v8

    invoke-virtual {v8, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    move-result v8

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_2
    if-le v9, v10, :cond_8

    .line 125
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v9

    if-ge v9, v2, :cond_7

    move v9, v5

    :cond_3
    add-int/lit8 v11, v6, 0x1

    .line 128
    rem-int/2addr v11, v3

    aget-object v12, v4, v11

    iget-object v13, v0, Landroid/icu/text/LaoBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    invoke-virtual {v12, v1, v13, v2}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v12

    if-lez v12, :cond_6

    .line 131
    aget-object v12, v4, v8

    invoke-virtual {v12}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    .line 136
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v12

    if-lt v12, v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v12, v6, 0x2

    .line 143
    rem-int/2addr v12, v3

    aget-object v12, v4, v12

    iget-object v13, v0, Landroid/icu/text/LaoBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    invoke-virtual {v12, v1, v13, v2}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v12

    if-lez v12, :cond_5

    .line 144
    aget-object v9, v4, v8

    invoke-virtual {v9}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    move v9, v10

    goto :goto_3

    .line 148
    :cond_5
    aget-object v12, v4, v11

    invoke-virtual {v12, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 150
    :cond_6
    :goto_3
    aget-object v11, v4, v8

    invoke-virtual {v11, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v9, :cond_3

    .line 152
    :cond_7
    :goto_4
    aget-object v8, v4, v8

    invoke-virtual {v8, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    move-result v8

    goto :goto_2

    :cond_8
    move v8, v5

    .line 161
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v9

    if-ge v9, v2, :cond_e

    if-ge v8, v3, :cond_e

    .line 165
    rem-int/lit8 v9, v6, 0x3

    aget-object v11, v4, v9

    iget-object v12, v0, Landroid/icu/text/LaoBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    invoke-virtual {v11, v1, v12, v2}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v11

    if-gtz v11, :cond_d

    if-eqz v8, :cond_9

    aget-object v9, v4, v9

    .line 167
    invoke-virtual {v9}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->longestPrefix()I

    move-result v9

    if-ge v9, v3, :cond_d

    :cond_9
    add-int v9, v7, v8

    sub-int v11, v2, v9

    .line 170
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v12

    move v13, v12

    move v12, v11

    move v11, v5

    .line 173
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    .line 174
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v14

    add-int/2addr v11, v10

    add-int/lit8 v12, v12, -0x1

    if-gtz v12, :cond_a

    goto :goto_7

    .line 179
    :cond_a
    sget-object v15, Landroid/icu/text/LaoBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v15, v13}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v13

    if-eqz v13, :cond_c

    sget-object v13, Landroid/icu/text/LaoBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v13, v14}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v13

    if-eqz v13, :cond_c

    add-int/lit8 v13, v6, 0x1

    .line 181
    rem-int/2addr v13, v3

    aget-object v13, v4, v13

    iget-object v15, v0, Landroid/icu/text/LaoBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    invoke-virtual {v13, v1, v15, v2}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v13

    add-int v15, v9, v11

    .line 182
    invoke-interface {v1, v15}, Ljava/text/CharacterIterator;->setIndex(I)C

    if-lez v13, :cond_c

    :goto_7
    if-gtz v8, :cond_b

    add-int/lit8 v6, v6, 0x1

    :cond_b
    add-int/2addr v8, v11

    goto :goto_8

    :cond_c
    move v13, v14

    goto :goto_6

    :cond_d
    add-int v9, v7, v8

    .line 199
    invoke-interface {v1, v9}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 205
    :cond_e
    :goto_8
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v9

    if-ge v9, v2, :cond_f

    sget-object v10, Landroid/icu/text/LaoBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v11

    invoke-virtual {v10, v11}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 206
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    .line 207
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v10

    sub-int/2addr v10, v9

    add-int/2addr v8, v10

    goto :goto_8

    :cond_f
    if-lez v8, :cond_10

    add-int/2addr v7, v8

    .line 218
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v8, p4

    invoke-virtual {v8, v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    goto/16 :goto_1

    :cond_10
    move-object/from16 v8, p4

    goto/16 :goto_1

    :cond_11
    move-object/from16 v8, p4

    .line 223
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v0

    if-lt v0, v2, :cond_12

    .line 224
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    add-int/lit8 v6, v6, -0x1

    :cond_12
    return v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 77
    instance-of p0, p1, Landroid/icu/text/LaoBreakEngine;

    return p0
.end method

.method public handles(II)Z
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const/16 p2, 0x100a

    .line 86
    invoke-static {p1, p2}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result p1

    const/16 p2, 0x18

    if-ne p1, p2, :cond_2

    move p0, v0

    :cond_2
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
