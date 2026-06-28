.class Landroid/icu/text/NameUnicodeTransliterator;
.super Landroid/icu/text/Transliterator;
.source "NameUnicodeTransliterator.java"


# static fields
.field static final CLOSE_DELIM:C = '}'

.field static final OPEN_DELIM:C = '\\'

.field static final OPEN_PAT:Ljava/lang/String; = "\\N~{~"

.field static final SPACE:C = ' '

.field static final _ID:Ljava/lang/String; = "Name-Any"


# direct methods
.method public constructor <init>(Landroid/icu/text/UnicodeFilter;)V
    .locals 1

    const-string v0, "Name-Any"

    .line 44
    invoke-direct {p0, v0, p1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    return-void
.end method

.method static register()V
    .locals 2

    .line 32
    new-instance v0, Landroid/icu/text/NameUnicodeTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/NameUnicodeTransliterator$1;-><init>()V

    const-string v1, "Name-Any"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 4

    .line 179
    invoke-virtual {p0, p1}, Landroid/icu/text/NameUnicodeTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    const-string p1, "\\N{"

    .line 180
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/16 v2, 0x30

    const/16 v3, 0x39

    .line 184
    invoke-virtual {v1, v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x41

    const/16 v3, 0x46

    .line 185
    invoke-virtual {v1, v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x61

    const/16 v3, 0x7a

    .line 186
    invoke-virtual {v1, v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x3c

    .line 187
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x28

    .line 188
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x2d

    .line 189
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x20

    .line 190
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 191
    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object p1

    .line 192
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object p1

    .line 193
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 194
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 195
    invoke-virtual {p2, p1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const/4 p0, 0x0

    const p1, 0x10ffff

    .line 197
    invoke-virtual {p3, p0, p1}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 54
    sget-object v2, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    invoke-virtual {v2}, Landroid/icu/impl/UCharacterName;->getMaxCharNameLength()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 56
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 59
    new-instance v5, Landroid/icu/text/UnicodeSet;

    invoke-direct {v5}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 60
    sget-object v6, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    invoke-virtual {v6, v5}, Landroid/icu/impl/UCharacterName;->getCharNameCharacters(Landroid/icu/text/UnicodeSet;)V

    .line 62
    iget v6, v1, Landroid/icu/text/Transliterator$Position;->start:I

    .line 63
    iget v7, v1, Landroid/icu/text/Transliterator$Position;->limit:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    move v11, v8

    move v10, v9

    :goto_1
    if-ge v6, v7, :cond_9

    .line 73
    invoke-interface {v0, v6}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v12

    if-eqz v10, :cond_6

    if-eq v10, v3, :cond_1

    goto/16 :goto_4

    .line 97
    :cond_1
    invoke-static {v12}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v13

    const/16 v14, 0x20

    if-eqz v13, :cond_2

    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_8

    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    sub-int/2addr v13, v3

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    if-eq v13, v14, :cond_8

    .line 101
    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-le v13, v2, :cond_8

    goto :goto_2

    :cond_2
    const/16 v13, 0x7d

    if-ne v12, v13, :cond_4

    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_3

    add-int/lit8 v12, v10, -0x1

    .line 117
    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v12

    if-ne v12, v14, :cond_3

    add-int/lit8 v10, v10, -0x1

    .line 118
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 121
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/icu/lang/UCharacter;->getCharFromExtendedName(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    .line 128
    invoke-static {v10}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 129
    invoke-interface {v0, v11, v6, v10}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    sub-int v11, v6, v11

    .line 134
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v11, v10

    sub-int/2addr v6, v11

    sub-int/2addr v7, v11

    goto :goto_0

    .line 146
    :cond_4
    invoke-virtual {v5, v12}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 147
    invoke-static {v4, v12}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lt v13, v2, :cond_8

    :goto_2
    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, -0x1

    :goto_3
    move v10, v9

    goto :goto_4

    :cond_6
    const/16 v13, 0x5c

    if-ne v12, v13, :cond_8

    const-string v11, "\\N~{~"

    .line 79
    invoke-static {v11, v0, v6, v7}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;Landroid/icu/text/Replaceable;II)I

    move-result v11

    if-ltz v11, :cond_7

    if-ge v11, v7, :cond_7

    .line 82
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    move v10, v3

    move v15, v11

    move v11, v6

    move v6, v15

    goto/16 :goto_1

    :cond_7
    move v11, v6

    .line 164
    :cond_8
    :goto_4
    invoke-static {v12}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v12

    add-int/2addr v6, v12

    goto/16 :goto_1

    .line 167
    :cond_9
    iget v0, v1, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v2, v1, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int v2, v7, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 168
    iput v7, v1, Landroid/icu/text/Transliterator$Position;->limit:I

    if-eqz p3, :cond_a

    if-ltz v11, :cond_a

    move v6, v11

    .line 171
    :cond_a
    iput v6, v1, Landroid/icu/text/Transliterator$Position;->start:I

    return-void
.end method
