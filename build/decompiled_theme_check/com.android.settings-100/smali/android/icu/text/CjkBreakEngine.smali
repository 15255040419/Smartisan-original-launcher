.class Landroid/icu/text/CjkBreakEngine;
.super Landroid/icu/text/DictionaryBreakEngine;
.source "CjkBreakEngine.java"


# static fields
.field private static final fHanWordSet:Landroid/icu/text/UnicodeSet;

.field private static final fHangulWordSet:Landroid/icu/text/UnicodeSet;

.field private static final fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

.field private static final fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

.field private static final kMaxKatakanaGroupLength:I = 0x14

.field private static final kMaxKatakanaLength:I = 0x8

.field private static final kint32max:I = 0x7fffffff

.field private static final maxSnlp:I = 0xff


# instance fields
.field private fDictionary:Landroid/icu/text/DictionaryMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    .line 23
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/CjkBreakEngine;->fHanWordSet:Landroid/icu/text/UnicodeSet;

    .line 24
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/CjkBreakEngine;->fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

    .line 25
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/CjkBreakEngine;->fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

    .line 27
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    const-string v1, "[\\uac00-\\ud7a3]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    .line 28
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHanWordSet:Landroid/icu/text/UnicodeSet;

    const-string v1, "[:Han:]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    .line 29
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

    const-string v1, "[[:Katakana:]\\uff9e\\uff9f]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    .line 30
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

    const-string v1, "[:Hiragana:]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    .line 33
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 34
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHanWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 35
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 36
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Landroid/icu/text/DictionaryBreakEngine;-><init>([Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Landroid/icu/text/CjkBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    const-string v0, "Hira"

    .line 43
    invoke-static {v0}, Landroid/icu/text/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Landroid/icu/text/DictionaryMatcher;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CjkBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    if-eqz p1, :cond_0

    .line 45
    sget-object p1, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/CjkBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Landroid/icu/text/UnicodeSet;

    invoke-direct {p1}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 48
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHanWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 49
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 50
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const v0, 0xff70

    .line 51
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v0, 0x30fc

    .line 52
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 53
    invoke-virtual {p0, p1}, Landroid/icu/text/CjkBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    :goto_0
    return-void
.end method

.method private static getKatakanaCost(I)I
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 76
    fill-array-data v0, :array_0

    const/16 v1, 0x8

    if-le p0, v1, :cond_0

    const/16 p0, 0x2000

    goto :goto_0

    .line 77
    :cond_0
    aget p0, v0, p0

    :goto_0
    return p0

    nop

    :array_0
    .array-data 4
        0x2000
        0x3d8
        0x198
        0xf0
        0xcc
        0xfc
        0x12c
        0x174
        0x1e0
    .end array-data
.end method

.method private static isKatakana(I)Z
    .locals 1

    const/16 v0, 0x30a1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x30fe

    if-gt p0, v0, :cond_0

    const/16 v0, 0x30fb

    if-ne p0, v0, :cond_1

    :cond_0
    const v0, 0xff66

    if-lt p0, v0, :cond_2

    const v0, 0xff9f

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 22

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    return v3

    .line 92
    :cond_0
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    sub-int v4, v1, v0

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 95
    new-array v4, v4, [I

    .line 96
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 98
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v7

    if-ge v7, v1, :cond_1

    .line 99
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 103
    sget-object v7, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    invoke-static {v6, v7}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v7

    sget-object v8, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-eq v7, v8, :cond_3

    sget-object v7, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    .line 104
    invoke-static {v6, v7, v3}, Landroid/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v5

    :goto_2
    if-eqz v7, :cond_4

    .line 108
    new-instance v7, Ljava/text/StringCharacterIterator;

    invoke-direct {v7, v6}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 110
    aput v3, v4, v3

    move v8, v3

    move v9, v8

    .line 111
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_5

    .line 112
    invoke-virtual {v6, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 113
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    .line 115
    aput v8, v4, v9

    goto :goto_3

    .line 118
    :cond_4
    sget-object v4, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    invoke-static {v6, v4}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Ljava/lang/String;

    move-result-object v4

    .line 119
    new-instance v7, Ljava/text/StringCharacterIterator;

    invoke-direct {v7, v4}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    new-array v4, v4, [I

    .line 121
    new-instance v8, Landroid/icu/text/Normalizer;

    sget-object v9, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    invoke-direct {v8, v6, v9, v3}, Landroid/icu/text/Normalizer;-><init>(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)V

    .line 123
    aput v3, v4, v3

    move v6, v3

    move v9, v6

    .line 124
    :goto_4
    invoke-virtual {v8}, Landroid/icu/text/Normalizer;->endIndex()I

    move-result v10

    if-ge v6, v10, :cond_5

    .line 125
    invoke-virtual {v8}, Landroid/icu/text/Normalizer;->next()I

    add-int/lit8 v9, v9, 0x1

    .line 127
    invoke-virtual {v8}, Landroid/icu/text/Normalizer;->getIndex()I

    move-result v6

    .line 128
    aput v6, v4, v9

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v9, 0x1

    .line 134
    new-array v8, v6, [I

    .line 135
    aput v3, v8, v3

    move v10, v5

    :goto_5
    const v15, 0x7fffffff

    if-gt v10, v9, :cond_6

    .line 137
    aput v15, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 140
    :cond_6
    new-array v14, v6, [I

    move v10, v3

    :goto_6
    if-gt v10, v9, :cond_7

    const/4 v11, -0x1

    .line 142
    aput v11, v14, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 146
    :cond_7
    new-array v13, v9, [I

    .line 147
    new-array v12, v9, [I

    move v11, v3

    move/from16 v17, v11

    :goto_7
    if-ge v11, v9, :cond_10

    .line 151
    invoke-interface {v7, v11}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 152
    aget v10, v8, v11

    if-ne v10, v15, :cond_8

    move v5, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move v3, v15

    goto/16 :goto_b

    :cond_8
    add-int/lit8 v10, v11, 0x14

    if-ge v10, v9, :cond_9

    const/16 v16, 0x14

    goto :goto_8

    :cond_9
    sub-int v10, v9, v11

    move/from16 v16, v10

    :goto_8
    new-array v10, v5, [I

    move-object/from16 v3, p0

    .line 158
    iget-object v15, v3, Landroid/icu/text/CjkBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    move-object/from16 v18, v10

    move-object v10, v15

    move v15, v11

    move-object v11, v7

    move-object/from16 v19, v12

    move/from16 v12, v16

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    move-object/from16 v21, v14

    move-object/from16 v14, v18

    move v5, v15

    const v3, 0x7fffffff

    move/from16 v15, v16

    move-object/from16 v16, v20

    invoke-virtual/range {v10 .. v16}, Landroid/icu/text/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II[I)I

    const/4 v10, 0x0

    .line 159
    aget v11, v18, v10

    .line 166
    invoke-interface {v7, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    if-eqz v11, :cond_a

    .line 167
    aget v12, v19, v10

    const/4 v10, 0x1

    if-eq v12, v10, :cond_b

    :cond_a
    invoke-static {v7}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v10

    if-eq v10, v3, :cond_b

    sget-object v10, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v7}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v10

    if-nez v10, :cond_b

    const/16 v10, 0xff

    .line 168
    aput v10, v20, v11

    const/4 v10, 0x1

    .line 169
    aput v10, v19, v11

    add-int/lit8 v11, v11, 0x1

    :cond_b
    const/4 v10, 0x0

    :goto_9
    if-ge v10, v11, :cond_d

    .line 174
    aget v12, v8, v5

    aget v13, v20, v10

    add-int/2addr v12, v13

    .line 175
    aget v13, v19, v10

    add-int/2addr v13, v5

    aget v13, v8, v13

    if-ge v12, v13, :cond_c

    .line 176
    aget v13, v19, v10

    add-int/2addr v13, v5

    aput v12, v8, v13

    .line 177
    aget v12, v19, v10

    add-int/2addr v12, v5

    aput v5, v21, v12

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 186
    :cond_d
    invoke-static {v7}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v10

    invoke-static {v10}, Landroid/icu/text/CjkBreakEngine;->isKatakana(I)Z

    move-result v10

    if-nez v17, :cond_f

    if-eqz v10, :cond_f

    add-int/lit8 v11, v5, 0x1

    .line 189
    invoke-static {v7}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    :goto_a
    if-ge v11, v9, :cond_e

    sub-int v12, v11, v5

    const/16 v13, 0x14

    if-ge v12, v13, :cond_e

    .line 190
    invoke-static {v7}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v12

    invoke-static {v12}, Landroid/icu/text/CjkBreakEngine;->isKatakana(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 191
    invoke-static {v7}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_e
    sub-int v12, v11, v5

    const/16 v13, 0x14

    if-ge v12, v13, :cond_f

    .line 196
    aget v13, v8, v5

    invoke-static {v12}, Landroid/icu/text/CjkBreakEngine;->getKatakanaCost(I)I

    move-result v12

    add-int/2addr v13, v12

    .line 197
    aget v12, v8, v11

    if-ge v13, v12, :cond_f

    .line 198
    aput v13, v8, v11

    .line 199
    aput v5, v21, v11

    :cond_f
    move/from16 v17, v10

    :goto_b
    add-int/lit8 v11, v5, 0x1

    move v15, v3

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_10
    move-object/from16 v21, v14

    move v3, v15

    .line 206
    new-array v5, v6, [I

    .line 208
    aget v6, v8, v9

    if-ne v6, v3, :cond_11

    const/4 v3, 0x0

    .line 209
    aput v9, v5, v3

    const/4 v3, 0x1

    goto :goto_e

    :cond_11
    const/4 v3, 0x0

    :goto_c
    if-lez v9, :cond_12

    .line 213
    aput v9, v5, v3

    add-int/lit8 v3, v3, 0x1

    .line 212
    aget v9, v21, v9

    goto :goto_c

    :cond_12
    add-int/lit8 v6, v3, -0x1

    .line 216
    aget v6, v5, v6

    aget v6, v21, v6

    if-nez v6, :cond_13

    const/4 v6, 0x1

    goto :goto_d

    :cond_13
    const/4 v6, 0x0

    :goto_d
    invoke-static {v6}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 219
    :goto_e
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v6

    if-ge v6, v0, :cond_14

    goto :goto_f

    :cond_14
    const/4 v6, 0x1

    const/4 v10, 0x0

    goto :goto_10

    :cond_15
    :goto_f
    add-int/lit8 v6, v3, 0x1

    const/4 v10, 0x0

    .line 220
    aput v10, v5, v3

    move v3, v6

    const/4 v6, 0x1

    :goto_10
    sub-int/2addr v3, v6

    :goto_11
    if-ltz v3, :cond_17

    .line 225
    aget v6, v5, v3

    aget v6, v4, v6

    add-int/2addr v6, v0

    .line 226
    invoke-virtual {v2, v6}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->contains(I)Z

    move-result v7

    if-nez v7, :cond_16

    if-eq v6, v0, :cond_16

    .line 227
    aget v6, v5, v3

    aget v6, v4, v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v6}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    add-int/lit8 v10, v10, 0x1

    :cond_16
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 232
    :cond_17
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v0

    if-ne v0, v1, :cond_18

    .line 233
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    add-int/lit8 v10, v10, -0x1

    .line 236
    :cond_18
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 237
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    :cond_19
    return v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 59
    instance-of v0, p1, Landroid/icu/text/CjkBreakEngine;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Landroid/icu/text/CjkBreakEngine;

    .line 61
    iget-object p0, p0, Landroid/icu/text/CjkBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    iget-object p1, p1, Landroid/icu/text/CjkBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
