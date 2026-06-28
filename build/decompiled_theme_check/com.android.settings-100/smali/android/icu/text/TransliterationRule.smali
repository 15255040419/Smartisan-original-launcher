.class Landroid/icu/text/TransliterationRule;
.super Ljava/lang/Object;
.source "TransliterationRule.java"


# static fields
.field static final ANCHOR_END:I = 0x2

.field static final ANCHOR_START:I = 0x1


# instance fields
.field private anteContext:Landroid/icu/text/StringMatcher;

.field private anteContextLength:I

.field private final data:Landroid/icu/text/RuleBasedTransliterator$Data;

.field flags:B

.field private key:Landroid/icu/text/StringMatcher;

.field private keyLength:I

.field private output:Landroid/icu/text/UnicodeReplacer;

.field private pattern:Ljava/lang/String;

.field private postContext:Landroid/icu/text/StringMatcher;

.field segments:[Landroid/icu/text/UnicodeMatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;II[Landroid/icu/text/UnicodeMatcher;ZZLandroid/icu/text/RuleBasedTransliterator$Data;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p10, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    const/4 p10, 0x0

    if-gez p2, :cond_0

    .line 166
    iput p10, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_a

    .line 171
    iput p2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    :goto_0
    if-gez p3, :cond_1

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget p3, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    sub-int/2addr p2, p3

    iput p2, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    goto :goto_1

    .line 176
    :cond_1
    iget p2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    if-lt p3, p2, :cond_9

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p3, p2, :cond_9

    .line 180
    iget p2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    sub-int/2addr p3, p2

    iput p3, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    :goto_1
    if-gez p5, :cond_2

    .line 183
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    goto :goto_2

    .line 184
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p5, p2, :cond_8

    .line 192
    :goto_2
    iput-object p7, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    .line 194
    iput-object p1, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    .line 195
    iput-byte p10, p0, Landroid/icu/text/TransliterationRule;->flags:B

    if-eqz p8, :cond_3

    .line 197
    iget-byte p1, p0, Landroid/icu/text/TransliterationRule;->flags:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/icu/text/TransliterationRule;->flags:B

    :cond_3
    if-eqz p9, :cond_4

    .line 200
    iget-byte p1, p0, Landroid/icu/text/TransliterationRule;->flags:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/icu/text/TransliterationRule;->flags:B

    :cond_4
    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    .line 204
    iget p2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    if-lez p2, :cond_5

    .line 205
    new-instance p3, Landroid/icu/text/StringMatcher;

    iget-object p7, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {p7, p10, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object p7, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {p3, p2, p10, p7}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    iput-object p3, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    .line 209
    :cond_5
    iput-object p1, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    .line 210
    iget p2, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    if-lez p2, :cond_6

    .line 211
    new-instance p3, Landroid/icu/text/StringMatcher;

    iget-object p7, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget p8, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    add-int/2addr p2, p8

    invoke-virtual {p7, p8, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object p7, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {p3, p2, p10, p7}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    iput-object p3, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    .line 215
    :cond_6
    iget-object p2, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget p3, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    sub-int/2addr p2, p3

    iget p7, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    sub-int/2addr p2, p7

    .line 216
    iput-object p1, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    if-lez p2, :cond_7

    .line 218
    new-instance p1, Landroid/icu/text/StringMatcher;

    iget-object p2, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    add-int/2addr p7, p3

    invoke-virtual {p2, p7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {p1, p2, p10, p3}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    iput-object p1, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    .line 222
    :cond_7
    new-instance p1, Landroid/icu/text/StringReplacer;

    add-int/2addr p5, p6

    iget-object p2, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {p1, p4, p5, p2}, Landroid/icu/text/StringReplacer;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    iput-object p1, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    return-void

    .line 185
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid cursor position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid post context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid ante context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final posAfter(Landroid/icu/text/Replaceable;I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 344
    invoke-interface {p0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 345
    invoke-interface {p0, p1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method static final posBefore(Landroid/icu/text/Replaceable;I)I
    .locals 1

    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 339
    invoke-interface {p0, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method


# virtual methods
.method addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 5

    .line 561
    iget p4, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget v0, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    add-int/2addr p4, v0

    .line 562
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 563
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 567
    iget v2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    :goto_0
    if-ge v2, p4, :cond_4

    .line 568
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v3

    .line 569
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 570
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v4, v3}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v4

    if-nez v4, :cond_1

    .line 572
    invoke-virtual {p1, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 575
    :cond_0
    invoke-virtual {v0, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 578
    :cond_1
    :try_start_0
    move-object v3, v4

    check-cast v3, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1, v3}, Landroid/icu/text/UnicodeSet;->containsSome(Landroid/icu/text/UnicodeSet;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 581
    :cond_2
    invoke-interface {v4, v0}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    :catch_0
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 584
    invoke-interface {v4, v1}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    .line 585
    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->containsSome(Landroid/icu/text/UnicodeSet;)Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    .line 588
    :cond_3
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 593
    :cond_4
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 594
    iget-object p0, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    invoke-interface {p0, p3}, Landroid/icu/text/UnicodeReplacer;->addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V

    return-void
.end method

.method public getAnteContextLength()I
    .locals 2

    .line 231
    iget v0, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget-byte p0, p0, Landroid/icu/text/TransliterationRule;->flags:B

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method final getIndexValue()I
    .locals 3

    .line 241
    iget v0, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget-object v1, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 246
    :cond_0
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 247
    iget-object p0, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object p0

    if-nez p0, :cond_1

    and-int/lit16 v2, v0, 0xff

    :cond_1
    return v2
.end method

.method public masks(Landroid/icu/text/TransliterationRule;)Z
    .locals 9

    .line 312
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 313
    iget v1, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    .line 314
    iget v2, p1, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    .line 315
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    .line 316
    iget-object v4, p1, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_3

    if-ne v3, v4, :cond_3

    .line 322
    iget v7, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    iget v8, p1, Landroid/icu/text/TransliterationRule;->keyLength:I

    if-gt v7, v8, :cond_3

    iget-object v7, p1, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    .line 324
    invoke-virtual {v7, v6, v8, v6, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 326
    iget-byte p0, p0, Landroid/icu/text/TransliterationRule;->flags:B

    iget-byte v0, p1, Landroid/icu/text/TransliterationRule;->flags:B

    if-eq p0, v0, :cond_2

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    :cond_0
    iget-byte p0, p1, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    return v5

    :cond_3
    if-gt v1, v2, :cond_5

    if-lt v3, v4, :cond_4

    if-ne v3, v4, :cond_5

    .line 331
    iget v3, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    iget v4, p1, Landroid/icu/text/TransliterationRule;->keyLength:I

    if-gt v3, v4, :cond_5

    :cond_4
    iget-object p1, p1, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    sub-int/2addr v2, v1

    iget-object p0, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    .line 334
    invoke-virtual {p1, v2, p0, v6, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    return v5
.end method

.method public matchAndReplace(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)I
    .locals 8

    .line 382
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 383
    :goto_0
    iget-object v2, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 384
    aget-object v2, v2, v0

    check-cast v2, Landroid/icu/text/StringMatcher;

    invoke-virtual {v2}, Landroid/icu/text/StringMatcher;->resetMatch()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 404
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    invoke-static {p1, v3}, Landroid/icu/text/TransliterationRule;->posBefore(Landroid/icu/text/Replaceable;I)I

    move-result v3

    .line 409
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-static {p1, v4}, Landroid/icu/text/TransliterationRule;->posBefore(Landroid/icu/text/Replaceable;I)I

    move-result v4

    aput v4, v2, v1

    .line 411
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 412
    invoke-virtual {v4, p1, v2, v3, v1}, Landroid/icu/text/StringMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v4

    if-eq v4, v5, :cond_1

    return v1

    .line 418
    :cond_1
    aget v4, v2, v1

    .line 420
    invoke-static {p1, v4}, Landroid/icu/text/TransliterationRule;->posAfter(Landroid/icu/text/Replaceable;I)I

    move-result v6

    .line 424
    iget-byte v7, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/2addr v7, v0

    if-eqz v7, :cond_2

    if-eq v4, v3, :cond_2

    return v1

    .line 430
    :cond_2
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    aput v3, v2, v1

    .line 432
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    if-eqz v3, :cond_3

    .line 433
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v3, p1, v2, v4, p3}, Landroid/icu/text/StringMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v3

    if-eq v3, v5, :cond_3

    return v3

    .line 439
    :cond_3
    aget v3, v2, v1

    .line 441
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    if-eqz v4, :cond_5

    if-eqz p3, :cond_4

    .line 442
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ne v3, v4, :cond_4

    return v0

    .line 450
    :cond_4
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    iget v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v4, p1, v2, v7, p3}, Landroid/icu/text/StringMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v4

    if-eq v4, v5, :cond_5

    return v4

    .line 456
    :cond_5
    aget v4, v2, v1

    .line 460
    iget-byte v7, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/2addr v7, v5

    if-eqz v7, :cond_7

    .line 461
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    if-eq v4, v7, :cond_6

    return v1

    :cond_6
    if-eqz p3, :cond_7

    return v0

    .line 474
    :cond_7
    iget-object p0, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    iget p3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-interface {p0, p1, p3, v3, v2}, Landroid/icu/text/UnicodeReplacer;->replace(Landroid/icu/text/Replaceable;II[I)I

    move-result p0

    .line 475
    iget p1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    sub-int/2addr v3, p1

    sub-int/2addr p0, v3

    .line 476
    aget p1, v2, v1

    add-int/2addr v4, p0

    .line 479
    iget p3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr p3, p0

    iput p3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 480
    iget p3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr p3, p0

    iput p3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 482
    iget p0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    return v5
.end method

.method final matchesIndexValue(I)Z
    .locals 1

    .line 263
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    :goto_0
    if-eqz v0, :cond_1

    .line 264
    invoke-interface {v0, p1}, Landroid/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toRule(Z)Ljava/lang/String;
    .locals 5

    .line 493
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 498
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 502
    iget-object v2, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    .line 506
    :goto_1
    iget-byte v4, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/2addr v4, v3

    if-eqz v4, :cond_2

    const/16 v4, 0x5e

    .line 507
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 511
    :cond_2
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    invoke-static {v0, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    if-eqz v2, :cond_3

    const/16 v4, 0x7b

    .line 514
    invoke-static {v0, v4, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 517
    :cond_3
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    invoke-static {v0, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    if-eqz v2, :cond_4

    const/16 v2, 0x7d

    .line 520
    invoke-static {v0, v2, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 523
    :cond_4
    iget-object v2, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    invoke-static {v0, v2, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    .line 526
    iget-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    const/16 v2, 0x24

    .line 527
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    const-string v2, " > "

    .line 530
    invoke-static {v0, v2, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 534
    iget-object p0, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    invoke-interface {p0, p1}, Landroid/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    const/16 p0, 0x3b

    .line 537
    invoke-static {v0, p0, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 539
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/text/TransliterationRule;->toRule(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
