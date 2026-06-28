.class public final Landroid/icu/impl/LocaleIDParser;
.super Ljava/lang/Object;
.source "LocaleIDParser.java"


# static fields
.field private static final COMMA:C = ','

.field private static final DONE:C = '\uffff'

.field private static final DOT:C = '.'

.field private static final HYPHEN:C = '-'

.field private static final ITEM_SEPARATOR:C = ';'

.field private static final KEYWORD_ASSIGN:C = '='

.field private static final KEYWORD_SEPARATOR:C = '@'

.field private static final UNDERSCORE:C = '_'


# instance fields
.field baseName:Ljava/lang/String;

.field private buffer:Ljava/lang/StringBuilder;

.field private canonicalize:Z

.field private hadCountry:Z

.field private id:[C

.field private index:I

.field keywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    .line 69
    iput-boolean p2, p0, Landroid/icu/impl/LocaleIDParser;->canonicalize:Z

    return-void
.end method

.method private addSeparator()V
    .locals 1

    const/16 v0, 0x5f

    .line 87
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    return-void
.end method

.method private append(C)V
    .locals 0

    .line 83
    iget-object p0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 0

    .line 109
    iget-object p0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private atTerminator()Z
    .locals 3

    .line 145
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-char v0, v1, v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminator(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getKeyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 595
    new-instance v0, Landroid/icu/impl/LocaleIDParser$1;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser$1;-><init>(Landroid/icu/impl/LocaleIDParser;)V

    return-object v0
.end method

.method private getKeyword()Ljava/lang/String;
    .locals 3

    .line 579
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 580
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/LocaleIDParser;->isDoneOrKeywordAssign(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 583
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget p0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr p0, v0

    invoke-direct {v1, v2, v0, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getValue()Ljava/lang/String;
    .locals 3

    .line 587
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 588
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/LocaleIDParser;->isDoneOrItemSeparator(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 591
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget p0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr p0, v0

    invoke-direct {v1, v2, v0, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private haveExperimentalLanguagePrefix()Z
    .locals 4

    .line 169
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v1, v3, :cond_3

    const/4 v1, 0x1

    .line 170
    aget-char v0, v0, v1

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x5f

    if-ne v0, v3, :cond_3

    .line 172
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    aget-char p0, p0, v2

    const/16 v0, 0x78

    if-eq p0, v0, :cond_2

    const/16 v0, 0x58

    if-eq p0, v0, :cond_2

    const/16 v0, 0x69

    if-eq p0, v0, :cond_2

    const/16 v0, 0x49

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method private haveKeywordAssign()Z
    .locals 3

    .line 184
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :goto_0
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 185
    aget-char v1, v1, v0

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isDoneOrItemSeparator(C)Z
    .locals 1

    const v0, 0xffff

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isDoneOrKeywordAssign(C)Z
    .locals 1

    const v0, 0xffff

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isTerminator(C)Z
    .locals 0

    const/16 p0, 0x40

    if-eq p1, p0, :cond_1

    const p0, 0xffff

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2e

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isTerminatorOrIDSeparator(C)Z
    .locals 1

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    .line 161
    invoke-direct {p0, p1}, Landroid/icu/impl/LocaleIDParser;->isTerminator(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private next()C
    .locals 3

    .line 125
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 126
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    const p0, 0xffff

    return p0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 130
    iput v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    aget-char p0, v1, v0

    return p0
.end method

.method private parseCountry()I
    .locals 7

    .line 302
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v0

    if-nez v0, :cond_6

    .line 303
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v0, 0x1

    .line 304
    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 306
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    move v3, v2

    .line 309
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v4

    invoke-direct {p0, v4}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    if-eqz v3, :cond_0

    .line 311
    iput-boolean v2, p0, Landroid/icu/impl/LocaleIDParser;->hadCountry:Z

    .line 312
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    add-int/lit8 v1, v1, 0x1

    move v3, v6

    .line 316
    :cond_0
    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_0

    .line 318
    :cond_1
    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 320
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    const/4 v3, 0x3

    if-le v2, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne v2, v3, :cond_5

    .line 334
    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/LocaleIDs;->threeToTwoLetterRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 336
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    goto :goto_2

    .line 328
    :cond_4
    :goto_1
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v1, -0x1

    .line 330
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 331
    iput-boolean v6, p0, Landroid/icu/impl/LocaleIDParser;->hadCountry:Z

    :cond_5
    :goto_2
    return v1

    .line 343
    :cond_6
    iget-object p0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    return p0
.end method

.method private parseKeywords()I
    .locals 5

    .line 651
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 652
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v1

    .line 653
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 655
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    const/16 v2, 0x40

    goto :goto_1

    :cond_0
    const/16 v2, 0x3b

    .line 656
    :goto_1
    invoke-direct {p0, v2}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    const/4 v2, 0x0

    .line 658
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/icu/impl/LocaleIDParser;->append(Ljava/lang/String;)V

    const/16 v4, 0x3d

    .line 659
    invoke-direct {p0, v4}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    .line 660
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method private parseLanguage()I
    .locals 4

    .line 198
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 200
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->haveExperimentalLanguagePrefix()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    aget-char v1, v1, v2

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    const/16 v1, 0x2d

    .line 202
    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    const/4 v1, 0x2

    .line 203
    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 207
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_0

    .line 210
    :cond_1
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 212
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    .line 213
    invoke-direct {p0, v2}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/LocaleIDs;->threeToTwoLetterLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 215
    invoke-direct {p0, v2, v0}, Landroid/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    :cond_2
    return v2
.end method

.method private parseScript()I
    .locals 6

    .line 243
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v0

    if-nez v0, :cond_3

    .line 244
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v0, 0x1

    .line 245
    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 247
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    move v3, v2

    .line 250
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v4

    invoke-direct {p0, v4}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_0

    .line 252
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    .line 253
    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    const/4 v3, 0x0

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_0

    .line 259
    :cond_1
    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 262
    iget v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v2, v0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    .line 263
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 264
    iget-object p0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_1
    return v1

    .line 271
    :cond_3
    iget-object p0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    return p0
.end method

.method private parseVariant()I
    .locals 10

    .line 395
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v0

    move v3, v1

    move v0, v2

    move v5, v0

    move v6, v5

    .line 403
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v7

    const v8, 0xffff

    if-eq v7, v8, :cond_b

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_1

    move v0, v1

    move v3, v2

    goto :goto_0

    :cond_1
    const/16 v8, 0x40

    if-ne v7, v8, :cond_3

    .line 408
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->haveKeywordAssign()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    move v3, v0

    move v5, v2

    goto :goto_0

    :cond_3
    const/16 v8, 0x2d

    const/16 v9, 0x5f

    if-eqz v0, :cond_5

    if-eq v7, v9, :cond_4

    if-eq v7, v8, :cond_4

    .line 417
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_0

    if-eqz v5, :cond_8

    if-eqz v6, :cond_6

    .line 422
    iget-boolean v5, p0, Landroid/icu/impl/LocaleIDParser;->hadCountry:Z

    if-nez v5, :cond_6

    .line 423
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    add-int/lit8 v4, v4, 0x1

    .line 426
    :cond_6
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    if-eqz v6, :cond_7

    add-int/lit8 v4, v4, 0x1

    move v5, v1

    move v6, v5

    goto :goto_1

    :cond_7
    move v5, v1

    .line 432
    :cond_8
    :goto_1
    invoke-static {v7}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v7

    if-eq v7, v8, :cond_9

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_a

    :cond_9
    move v7, v9

    .line 436
    :cond_a
    invoke-direct {p0, v7}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_0

    .line 439
    :cond_b
    :goto_2
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    return v4
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private set(ILjava/lang/String;)V
    .locals 2

    .line 101
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 102
    iget-object p0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    if-eqz p3, :cond_6

    .line 713
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    goto :goto_1

    .line 716
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 717
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_2

    .line 721
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 722
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 723
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "value must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 726
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v0

    .line 727
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_6

    .line 730
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object p3, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    .line 731
    iget-object p0, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    .line 734
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    :cond_4
    if-eqz p2, :cond_5

    .line 736
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 738
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 741
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    :cond_6
    :goto_1
    return-void

    .line 718
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyword must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setToKeywordStart()Z
    .locals 5

    .line 549
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :goto_0
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 550
    aget-char v2, v1, v0

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    .line 551
    iget-boolean v2, p0, Landroid/icu/impl/LocaleIDParser;->canonicalize:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    add-int/2addr v0, v3

    move v1, v0

    .line 552
    :goto_1
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 553
    aget-char v2, v2, v1

    const/16 v4, 0x3d

    if-ne v2, v4, :cond_0

    .line 554
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v3

    .line 559
    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 560
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private skipCountry()V
    .locals 4

    .line 352
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v0

    if-nez v0, :cond_3

    .line 353
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    aget-char v2, v0, v1

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_0

    aget-char v0, v0, v1

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    .line 354
    :cond_0
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 360
    :cond_1
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 362
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipUntilTerminatorOrIDSeparator()V

    .line 363
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    .line 365
    :cond_2
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :cond_3
    return-void
.end method

.method private skipLanguage()V
    .locals 1

    .line 227
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->haveExperimentalLanguagePrefix()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 228
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 230
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipUntilTerminatorOrIDSeparator()V

    return-void
.end method

.method private skipScript()V
    .locals 3

    .line 282
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v0, 0x1

    .line 284
    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 287
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 290
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v1, v0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 291
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :cond_1
    return-void
.end method

.method private skipUntilTerminatorOrIDSeparator()V
    .locals 1

    .line 137
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    return-void
.end method


# virtual methods
.method public defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 690
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 1

    .line 525
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 528
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->parseBaseName()V

    const/4 v0, 0x0

    .line 529
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 468
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    .line 469
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipLanguage()V

    .line 470
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipScript()V

    .line 471
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseCountry()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeywordMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 610
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->setToKeywordStart()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 613
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getKeyword()Ljava/lang/String;

    move-result-object v1

    .line 614
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 617
    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_2

    const v1, 0xffff

    if-ne v2, v1, :cond_6

    goto :goto_2

    .line 626
    :cond_2
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 627
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 632
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_0

    .line 633
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 637
    :cond_5
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_6
    :goto_1
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    goto :goto_3

    .line 640
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    .line 643
    :cond_9
    iget-object p0, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    return-object p0
.end method

.method public getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 682
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object p0

    .line 683
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getKeywords()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 673
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object p0

    .line 674
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 451
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    .line 452
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseLanguage()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLanguageScriptCountryVariant()[Ljava/lang/String;
    .locals 3

    .line 489
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 491
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseLanguage()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 492
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseScript()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 493
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseCountry()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 494
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseVariant()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 537
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->parseBaseName()V

    .line 538
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseKeywords()I

    const/4 v0, 0x0

    .line 539
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .line 459
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    .line 460
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipLanguage()V

    .line 461
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseScript()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .line 478
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    .line 479
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipLanguage()V

    .line 480
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipScript()V

    .line 481
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipCountry()V

    .line 482
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseVariant()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public parseBaseName()V
    .locals 3

    .line 503
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 504
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    .line 507
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseLanguage()I

    .line 508
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseScript()I

    .line 509
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseCountry()I

    .line 510
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseVariant()I

    .line 513
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 514
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    .line 515
    iget-object p0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-void
.end method

.method public setBaseName(Ljava/lang/String;)V
    .locals 0

    .line 499
    iput-object p1, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    return-void
.end method

.method public setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 699
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
