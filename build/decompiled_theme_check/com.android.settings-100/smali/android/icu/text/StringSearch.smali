.class public final Landroid/icu/text/StringSearch;
.super Landroid/icu/text/SearchIterator;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/StringSearch$CEBuffer;,
        Landroid/icu/text/StringSearch$CEI;,
        Landroid/icu/text/StringSearch$CollationPCE;,
        Landroid/icu/text/StringSearch$Pattern;,
        Landroid/icu/text/StringSearch$Match;
    }
.end annotation


# static fields
.field private static CE_LEVEL2_BASE:I = 0x5

.field private static CE_LEVEL3_BASE:I = 0x50000

.field private static final CE_MATCH:I = -0x1

.field private static final CE_NO_MATCH:I = 0x0

.field private static final CE_SKIP_PATN:I = 0x2

.field private static final CE_SKIP_TARG:I = 0x1

.field private static final INITIAL_ARRAY_SIZE_:I = 0x100

.field private static final PRIMARYORDERMASK:I = -0x10000

.field private static final SECONDARYORDERMASK:I = 0xff00

.field private static final TERTIARYORDERMASK:I = 0xff


# instance fields
.field ceMask_:I

.field private collator_:Landroid/icu/text/RuleBasedCollator;

.field private nfd_:Landroid/icu/text/Normalizer2;

.field private pattern_:Landroid/icu/text/StringSearch$Pattern;

.field private strength_:I

.field private textIter_:Landroid/icu/text/CollationElementIterator;

.field private textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

.field private toShift_:Z

.field private utilIter_:Landroid/icu/text/CollationElementIterator;

.field variableTop_:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 281
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p2}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Landroid/icu/text/Collator;->getInstance()Landroid/icu/text/Collator;

    move-result-object p2

    check-cast p2, Landroid/icu/text/RuleBasedCollator;

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0, p1, v0, p2, v1}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V
    .locals 0

    .line 180
    invoke-direct {p0, p2, p4}, Landroid/icu/text/SearchIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/BreakIterator;)V

    .line 183
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getNumericCollation()Z

    move-result p4

    if-nez p4, :cond_1

    .line 187
    iput-object p3, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    .line 188
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result p4

    iput p4, p0, Landroid/icu/text/StringSearch;->strength_:I

    .line 189
    iget p4, p0, Landroid/icu/text/StringSearch;->strength_:I

    invoke-static {p4}, Landroid/icu/text/StringSearch;->getMask(I)I

    move-result p4

    iput p4, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    .line 190
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result p4

    iput-boolean p4, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    .line 191
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result p4

    iput p4, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    .line 193
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object p4

    iput-object p4, p0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    .line 195
    new-instance p4, Landroid/icu/text/StringSearch$Pattern;

    invoke-direct {p4, p1}, Landroid/icu/text/StringSearch$Pattern;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    .line 197
    iget-object p1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 198
    iget-object p1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 p4, -0x1

    iput p4, p1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    .line 201
    new-instance p4, Landroid/icu/text/CollationElementIterator;

    invoke-direct {p4, p2, p3}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V

    iput-object p4, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    .line 203
    iput-object p1, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    .line 213
    sget-object p1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p3, p1}, Landroid/icu/text/RuleBasedCollator;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object p1

    .line 214
    iget-object p3, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    if-nez p1, :cond_0

    sget-object p1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :cond_0
    invoke-static {p1}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p1

    iput-object p1, p3, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    .line 215
    iget-object p1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object p1, p1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    invoke-interface {p2}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/text/CharacterIterator;

    invoke-virtual {p1, p2}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 217
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    return-void

    .line 184
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Numeric collation is not supported by StringSearch"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/util/ULocale;)V
    .locals 1

    .line 267
    invoke-static {p3}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object p3

    check-cast p3, Landroid/icu/text/RuleBasedCollator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Ljava/util/Locale;)V
    .locals 0

    .line 247
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method static synthetic access$500(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$Pattern;
    .locals 0

    .line 133
    iget-object p0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    return-object p0
.end method

.method static synthetic access$600(Landroid/icu/text/StringSearch;)Z
    .locals 0

    .line 133
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initTextProcessedIter()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$CollationPCE;
    .locals 0

    .line 133
    iget-object p0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    return-object p0
.end method

.method private static addToIntArray([IIII)[I
    .locals 2

    .line 644
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_0

    add-int/2addr v0, p3

    .line 647
    new-array p3, v0, [I

    const/4 v0, 0x0

    .line 648
    invoke-static {p0, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p3

    .line 651
    :cond_0
    aput p2, p0, p1

    return-object p0
.end method

.method private static addToLongArray([JIIJI)[J
    .locals 1

    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_0

    add-int/2addr p2, p5

    .line 672
    new-array p2, p2, [J

    const/4 p5, 0x0

    .line 673
    invoke-static {p0, p5, p2, p5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p2

    .line 676
    :cond_0
    aput-wide p3, p0, p1

    return-object p0
.end method

.method private checkIdentical(II)Z
    .locals 2

    .line 856
    iget v0, p0, Landroid/icu/text/StringSearch;->strength_:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 861
    :cond_0
    iget-object v0, p0, Landroid/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p2}, Landroid/icu/text/StringSearch;->getString(Ljava/text/CharacterIterator;II)Ljava/lang/String;

    move-result-object p1

    .line 862
    sget-object p2, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object p2

    sget-object v1, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-ne p2, v1, :cond_1

    .line 863
    invoke-static {p1, v0}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 865
    :cond_1
    iget-object p0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object p0, p0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    .line 866
    sget-object p2, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    invoke-static {p0, p2, v0}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object p2

    sget-object v1, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-ne p2, v1, :cond_2

    .line 867
    invoke-static {p0, v0}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 869
    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static codePointAt(Ljava/text/CharacterIterator;I)I
    .locals 3

    .line 1234
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 1235
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p1

    .line 1237
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1238
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    .line 1239
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1240
    invoke-static {p1, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    .line 1243
    :cond_0
    invoke-interface {p0, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    return p1
.end method

.method private static codePointBefore(Ljava/text/CharacterIterator;I)I
    .locals 3

    .line 1248
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 1249
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1250
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result p1

    .line 1252
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1253
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v1

    .line 1254
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1255
    invoke-static {v1, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    .line 1258
    :cond_0
    invoke-interface {p0, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    return p1
.end method

.method private static compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I
    .locals 15

    move-object/from16 v0, p4

    cmp-long v1, p0, p2

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 929
    :cond_0
    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    const/16 v1, 0x20

    ushr-long v4, p0, v1

    ushr-long v6, p2, v1

    const-wide v8, 0xffff0000L

    and-long v10, v4, v8

    long-to-int v1, v10

    and-long v10, v6, v8

    long-to-int v10, v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v1, v10, :cond_4

    if-nez v1, :cond_2

    return v12

    :cond_2
    if-nez v10, :cond_3

    .line 944
    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    if-ne v0, v1, :cond_3

    return v11

    :cond_3
    return v3

    :cond_4
    const-wide/32 v13, 0xffff

    and-long/2addr v4, v13

    long-to-int v1, v4

    and-long v4, v6, v13

    long-to-int v4, v4

    if-eq v1, v4, :cond_9

    if-nez v1, :cond_5

    return v12

    :cond_5
    if-nez v4, :cond_6

    .line 958
    sget-object v5, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    if-ne v0, v5, :cond_6

    return v11

    .line 962
    :cond_6
    sget v5, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    if-eq v4, v5, :cond_8

    sget-object v4, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    if-ne v0, v4, :cond_7

    sget v0, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    if-ne v1, v0, :cond_7

    goto :goto_0

    :cond_7
    move v2, v3

    :cond_8
    :goto_0
    return v2

    :cond_9
    and-long v4, p0, v8

    long-to-int v1, v4

    and-long v4, p2, v8

    long-to-int v4, v4

    if-eq v1, v4, :cond_b

    .line 971
    sget v5, Landroid/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    if-eq v4, v5, :cond_b

    sget-object v4, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    if-ne v0, v4, :cond_a

    sget v0, Landroid/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    if-ne v1, v0, :cond_a

    goto :goto_1

    :cond_a
    move v2, v3

    :cond_b
    :goto_1
    return v2
.end method

.method private getCE(I)I
    .locals 2

    .line 609
    iget v0, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    and-int/2addr p1, v0

    .line 611
    iget-boolean v0, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 617
    iget v0, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    if-le v0, p1, :cond_2

    .line 618
    iget p0, p0, Landroid/icu/text/StringSearch;->strength_:I

    if-lt p0, v1, :cond_0

    const/high16 p0, -0x10000

    and-int/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 624
    :cond_1
    iget p0, p0, Landroid/icu/text/StringSearch;->strength_:I

    if-lt p0, v1, :cond_2

    if-nez p1, :cond_2

    const p1, 0xffff

    :cond_2
    :goto_0
    return p1
.end method

.method private static getMask(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, -0x100

    return p0

    :cond_1
    const/high16 p0, -0x10000

    return p0
.end method

.method private static final getString(Ljava/text/CharacterIterator;II)Ljava/lang/String;
    .locals 3

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1581
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    .line 1582
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 1584
    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1585
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1587
    :cond_0
    invoke-interface {p0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleNextCanonical()Z
    .locals 0

    .line 1502
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextCommonImpl()Z

    move-result p0

    return p0
.end method

.method private handleNextCommonImpl()Z
    .locals 3

    .line 1506
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    .line 1507
    new-instance v1, Landroid/icu/text/StringSearch$Match;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/text/StringSearch$Match;-><init>(Landroid/icu/text/StringSearch$1;)V

    .line 1509
    invoke-direct {p0, v0, v1}, Landroid/icu/text/StringSearch;->search(ILandroid/icu/text/StringSearch$Match;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v2, v1, Landroid/icu/text/StringSearch$Match;->start_:I

    iput v2, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 1511
    iget-object p0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v1, Landroid/icu/text/StringSearch$Match;->limit_:I

    iget v1, v1, Landroid/icu/text/StringSearch$Match;->start_:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    const/4 p0, 0x1

    return p0

    .line 1514
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    const/4 p0, 0x0

    return p0
.end method

.method private handleNextExact()Z
    .locals 0

    .line 1498
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextCommonImpl()Z

    move-result p0

    return p0
.end method

.method private handlePreviousCanonical()Z
    .locals 0

    .line 1529
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousCommonImpl()Z

    move-result p0

    return p0
.end method

.method private handlePreviousCommonImpl()Z
    .locals 8

    .line 1535
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 1536
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 1537
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v4, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v4}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v4

    add-int/2addr v0, v4

    sub-int/2addr v0, v3

    goto :goto_2

    .line 1540
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    .line 1541
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initTextProcessedIter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1542
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    return v2

    :cond_1
    move v0, v2

    .line 1545
    :goto_0
    iget-object v4, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v4, v4, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    sub-int/2addr v4, v3

    if-ge v0, v4, :cond_3

    .line 1546
    iget-object v4, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    invoke-virtual {v4, v1}, Landroid/icu/text/StringSearch$CollationPCE;->nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1552
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    goto :goto_2

    .line 1555
    :cond_4
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    .line 1558
    :goto_2
    new-instance v4, Landroid/icu/text/StringSearch$Match;

    invoke-direct {v4, v1}, Landroid/icu/text/StringSearch$Match;-><init>(Landroid/icu/text/StringSearch$1;)V

    .line 1559
    invoke-direct {p0, v0, v4}, Landroid/icu/text/StringSearch;->searchBackwards(ILandroid/icu/text/StringSearch$Match;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1560
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v1, v4, Landroid/icu/text/StringSearch$Match;->start_:I

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 1561
    iget-object p0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v4, Landroid/icu/text/StringSearch$Match;->limit_:I

    iget v1, v4, Landroid/icu/text/StringSearch$Match;->start_:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    return v3

    .line 1564
    :cond_5
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    return v2
.end method

.method private handlePreviousExact()Z
    .locals 0

    .line 1525
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousCommonImpl()Z

    move-result p0

    return p0
.end method

.method private initTextProcessedIter()Z
    .locals 2

    .line 873
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Landroid/icu/text/StringSearch$CollationPCE;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch$CollationPCE;-><init>(Landroid/icu/text/CollationElementIterator;)V

    iput-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    goto :goto_0

    .line 876
    :cond_0
    iget-object p0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p0}, Landroid/icu/text/StringSearch$CollationPCE;->init(Landroid/icu/text/CollationElementIterator;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private initialize()V
    .locals 0

    .line 803
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePattern()I

    return-void
.end method

.method private initializePattern()I
    .locals 2

    .line 782
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    .line 785
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePatternCETable()I

    move-result p0

    return p0
.end method

.method private initializePatternCETable()I
    .locals 9

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 691
    iget-object v1, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v1, v1, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 692
    iget-object v2, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    if-nez v2, :cond_0

    .line 695
    new-instance v2, Landroid/icu/text/CollationElementIterator;

    iget-object v3, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v2, v3, v4}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    .line 696
    iput-object v2, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    goto :goto_0

    .line 698
    :cond_0
    iget-object v3, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 705
    :goto_1
    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 706
    invoke-direct {p0, v6}, Landroid/icu/text/StringSearch;->getCE(I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 709
    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v8

    sub-int v8, v1, v8

    add-int/lit8 v8, v8, 0x1

    .line 708
    invoke-static {v0, v4, v7, v8}, Landroid/icu/text/StringSearch;->addToIntArray([IIII)[I

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    .line 713
    :cond_1
    invoke-virtual {v2, v6}, Landroid/icu/text/CollationElementIterator;->getMaxExpansion(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    goto :goto_1

    .line 716
    :cond_2
    aput v3, v0, v4

    .line 717
    iget-object p0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iput-object v0, p0, Landroid/icu/text/StringSearch$Pattern;->CE_:[I

    .line 718
    iput v4, p0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    return v5
.end method

.method private initializePatternPCETable()I
    .locals 12

    const/16 v0, 0x100

    new-array v0, v0, [J

    .line 733
    array-length v7, v0

    .line 734
    iget-object v1, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v1, v1, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    .line 735
    iget-object v1, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    if-nez v1, :cond_0

    .line 738
    new-instance v1, Landroid/icu/text/CollationElementIterator;

    iget-object v2, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v2, v2, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    .line 739
    iput-object v1, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    goto :goto_0

    .line 741
    :cond_0
    iget-object v2, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v2, v2, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    :goto_0
    move-object v9, v1

    .line 748
    new-instance v10, Landroid/icu/text/StringSearch$CollationPCE;

    invoke-direct {v10, v9}, Landroid/icu/text/StringSearch$CollationPCE;-><init>(Landroid/icu/text/CollationElementIterator;)V

    const/4 v11, 0x0

    move-object v1, v0

    move v0, v11

    :goto_1
    const/4 v2, 0x0

    .line 753
    invoke-virtual {v10, v2}, Landroid/icu/text/StringSearch$CollationPCE;->nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v4

    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    .line 754
    invoke-virtual {v9}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v2

    sub-int v2, v8, v2

    add-int/lit8 v6, v2, 0x1

    move v2, v0

    move v3, v7

    invoke-static/range {v1 .. v6}, Landroid/icu/text/StringSearch;->addToLongArray([JIIJI)[J

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 759
    aput-wide v2, v1, v0

    .line 760
    iget-object p0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iput-object v1, p0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    .line 761
    iput v0, p0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    return v11
.end method

.method private isBreakBoundary(I)Z
    .locals 1

    .line 906
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 909
    iget-object p0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    :cond_0
    if-eqz v0, :cond_1

    .line 912
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isOutOfBounds(III)Z
    .locals 0

    if-lt p2, p0, :cond_1

    if-le p2, p1, :cond_0

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

.method private nextBoundaryAfter(I)I
    .locals 1

    .line 887
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 890
    iget-object p0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    :cond_0
    if-eqz v0, :cond_1

    .line 894
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method private search(ILandroid/icu/text/StringSearch$Match;)Z
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 990
    iget-object v3, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v3, v3, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    if-eqz v3, :cond_1d

    iget-object v3, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 991
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v3

    if-lt v1, v3, :cond_1d

    iget-object v3, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 992
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v3

    if-gt v1, v3, :cond_1d

    .line 997
    iget-object v3, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    if-nez v3, :cond_0

    .line 998
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    .line 1001
    :cond_0
    iget-object v3, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v3, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 1002
    new-instance v1, Landroid/icu/text/StringSearch$CEBuffer;

    invoke-direct {v1, v0}, Landroid/icu/text/StringSearch$CEBuffer;-><init>(Landroid/icu/text/StringSearch;)V

    const/4 v3, 0x0

    move-object v6, v3

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 1036
    :goto_0
    invoke-virtual {v1, v3}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v9

    if-eqz v9, :cond_1c

    move-object v13, v6

    const/4 v6, 0x0

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    .line 1041
    :goto_1
    iget-object v4, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v4, v4, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    const/4 v5, 0x1

    if-ge v6, v4, :cond_4

    .line 1042
    iget-object v4, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v4, v4, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    aget-wide v14, v4, v6

    add-int v4, v3, v6

    add-int/2addr v4, v12

    .line 1043
    invoke-virtual {v1, v4}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v13

    .line 1047
    iget-wide v10, v13, Landroid/icu/text/StringSearch$CEI;->ce_:J

    iget-object v4, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v4, v4, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    invoke-static {v10, v11, v14, v15, v4}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    move-result v4

    if-nez v4, :cond_1

    move-object v6, v13

    const/4 v4, 0x0

    goto :goto_3

    :cond_1
    if-lez v4, :cond_3

    if-ne v4, v5, :cond_2

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v12, -0x1

    :cond_3
    :goto_2
    add-int/2addr v6, v5

    goto :goto_1

    :cond_4
    move v4, v5

    move-object v6, v13

    .line 1062
    :goto_3
    iget-object v10, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v10, v10, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/2addr v12, v10

    const-wide/16 v10, -0x1

    move v13, v7

    move/from16 v18, v8

    if-nez v4, :cond_6

    if-eqz v6, :cond_5

    .line 1064
    iget-wide v7, v6, Landroid/icu/text/StringSearch$CEI;->ce_:J

    cmp-long v7, v7, v10

    if-eqz v7, :cond_6

    :cond_5
    move-object/from16 v25, v1

    move v7, v13

    move/from16 v8, v18

    goto/16 :goto_d

    :cond_6
    if-nez v4, :cond_7

    goto/16 :goto_b

    :cond_7
    add-int v7, v3, v12

    add-int/lit8 v8, v7, -0x1

    .line 1079
    invoke-virtual {v1, v8}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v8

    .line 1081
    iget v13, v9, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1082
    iget v5, v8, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1093
    iget-object v10, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v10, v10, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    sget-object v11, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    const-wide v21, 0xffff0000L

    const/16 v23, 0x20

    if-ne v10, v11, :cond_9

    .line 1094
    invoke-virtual {v1, v7}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v7

    .line 1095
    iget v10, v7, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1096
    iget v11, v7, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    iget v12, v7, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v11, v12, :cond_8

    iget-wide v11, v7, Landroid/icu/text/StringSearch$CEI;->ce_:J

    const-wide/16 v19, -0x1

    cmp-long v11, v11, v19

    if-eqz v11, :cond_8

    move-object/from16 v25, v1

    :goto_4
    const/4 v4, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v25, v1

    goto :goto_8

    :cond_9
    const-wide/16 v19, -0x1

    :goto_5
    add-int v7, v3, v12

    .line 1101
    invoke-virtual {v1, v7}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v7

    .line 1102
    iget v10, v7, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    move/from16 v24, v10

    .line 1104
    iget-wide v10, v7, Landroid/icu/text/StringSearch$CEI;->ce_:J

    cmp-long v10, v10, v19

    if-nez v10, :cond_a

    move-object/from16 v25, v1

    goto :goto_7

    .line 1110
    :cond_a
    iget-wide v10, v7, Landroid/icu/text/StringSearch$CEI;->ce_:J

    ushr-long v10, v10, v23

    and-long v10, v10, v21

    const-wide/16 v16, 0x0

    cmp-long v10, v10, v16

    if-nez v10, :cond_c

    .line 1111
    iget-wide v10, v7, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-object/from16 v25, v1

    iget-object v1, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v1, v1, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    invoke-static {v10, v11, v14, v15, v1}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v10, 0x2

    if-ne v1, v10, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v25

    goto :goto_5

    :cond_c
    move-object/from16 v25, v1

    .line 1118
    iget v1, v7, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    iget v10, v7, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v1, v10, :cond_e

    :cond_d
    :goto_6
    move/from16 v10, v24

    goto :goto_4

    :cond_e
    :goto_7
    move/from16 v10, v24

    .line 1134
    :goto_8
    invoke-direct {v0, v13}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v4, 0x0

    .line 1143
    :cond_f
    iget v1, v9, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v13, v1, :cond_10

    const/4 v4, 0x0

    .line 1159
    :cond_10
    iget-object v1, v0, Landroid/icu/text/StringSearch;->breakIterator:Landroid/icu/text/BreakIterator;

    if-nez v1, :cond_12

    iget-wide v11, v7, Landroid/icu/text/StringSearch$CEI;->ce_:J

    ushr-long v11, v11, v23

    and-long v11, v11, v21

    const-wide/16 v14, 0x0

    cmp-long v1, v11, v14

    if-eqz v1, :cond_12

    iget v1, v8, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-lt v10, v1, :cond_12

    iget v1, v7, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-le v1, v10, :cond_12

    iget-object v1, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    iget-object v7, v0, Landroid/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    .line 1163
    invoke-static {v7, v10}, Landroid/icu/text/StringSearch;->codePointAt(Ljava/text/CharacterIterator;I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    iget-object v7, v0, Landroid/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    .line 1164
    invoke-static {v7, v10}, Landroid/icu/text/StringSearch;->codePointBefore(Ljava/text/CharacterIterator;I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const/16 v18, 0x1

    goto :goto_9

    :cond_12
    const/16 v18, 0x0

    :goto_9
    if-ge v5, v10, :cond_14

    .line 1184
    iget v1, v8, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v5, v1, :cond_13

    invoke-direct {v0, v5}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_a

    .line 1187
    :cond_13
    invoke-direct {v0, v5}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    move-result v5

    .line 1191
    iget v1, v8, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-lt v5, v1, :cond_14

    if-eqz v18, :cond_15

    if-ge v5, v10, :cond_14

    goto :goto_a

    :cond_14
    move v5, v10

    :cond_15
    :goto_a
    if-nez v18, :cond_17

    if-le v5, v10, :cond_16

    const/4 v4, 0x0

    .line 1204
    :cond_16
    invoke-direct {v0, v5}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v4, 0x0

    .line 1209
    :cond_17
    invoke-direct {v0, v13, v5}, Landroid/icu/text/StringSearch;->checkIdentical(II)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v4, 0x0

    :cond_18
    if-eqz v4, :cond_1b

    move/from16 v18, v5

    :goto_b
    if-nez v4, :cond_19

    const/4 v0, -0x1

    const/4 v13, -0x1

    goto :goto_c

    :cond_19
    move/from16 v0, v18

    :goto_c
    if-eqz v2, :cond_1a

    .line 1226
    iput v13, v2, Landroid/icu/text/StringSearch$Match;->start_:I

    .line 1227
    iput v0, v2, Landroid/icu/text/StringSearch$Match;->limit_:I

    :cond_1a
    return v4

    :cond_1b
    move v8, v5

    move v7, v13

    :goto_d
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v25

    goto/16 :goto_0

    .line 1038
    :cond_1c
    new-instance v0, Landroid/icu/util/ICUException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CEBuffer.get("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") returned null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_1d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "search("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m) - expected position to be between "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 994
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private searchBackwards(ILandroid/icu/text/StringSearch$Match;)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1266
    iget-object v3, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v3, v3, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    if-eqz v3, :cond_1c

    iget-object v3, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 1267
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v3

    if-lt v1, v3, :cond_1c

    iget-object v3, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 1268
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v3

    if-gt v1, v3, :cond_1c

    .line 1273
    iget-object v3, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    if-nez v3, :cond_0

    .line 1274
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    .line 1277
    :cond_0
    new-instance v3, Landroid/icu/text/StringSearch$CEBuffer;

    invoke-direct {v3, v0}, Landroid/icu/text/StringSearch$CEBuffer;-><init>(Landroid/icu/text/StringSearch;)V

    .line 1289
    iget-object v4, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v4}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1290
    iget-object v4, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v4, v4, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    .line 1291
    invoke-virtual {v4, v1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v4

    .line 1293
    iget-object v6, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v6, v4}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    const/4 v4, 0x0

    .line 1296
    :goto_0
    invoke-virtual {v3, v4}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v6

    iget v6, v6, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    if-ge v6, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1301
    :cond_2
    iget-object v4, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v4, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 1325
    :goto_2
    invoke-virtual {v3, v4}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v10

    if-eqz v10, :cond_1b

    .line 1332
    iget-object v11, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v11, v11, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    move-object v13, v6

    const/4 v6, 0x0

    :goto_3
    if-ltz v11, :cond_6

    .line 1333
    iget-object v13, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v13, v13, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    aget-wide v13, v13, v11

    .line 1335
    iget-object v15, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v15, v15, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/2addr v15, v4

    sub-int/2addr v15, v12

    sub-int/2addr v15, v11

    add-int/2addr v15, v6

    invoke-virtual {v3, v15}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v15

    move/from16 v16, v8

    .line 1339
    iget-wide v7, v15, Landroid/icu/text/StringSearch$CEI;->ce_:J

    iget-object v5, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v5, v5, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    invoke-static {v7, v8, v13, v14, v5}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    move-result v5

    if-nez v5, :cond_3

    move-object v13, v15

    const/4 v5, -0x1

    const/4 v7, 0x0

    goto :goto_5

    :cond_3
    if-lez v5, :cond_5

    if-ne v5, v12, :cond_4

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, -0x1

    :cond_5
    :goto_4
    const/4 v5, -0x1

    add-int/2addr v11, v5

    move-object v13, v15

    move/from16 v8, v16

    goto :goto_3

    :cond_6
    move/from16 v16, v8

    const/4 v5, -0x1

    move v7, v12

    :goto_5
    const-wide/16 v14, -0x1

    if-nez v7, :cond_8

    if-eqz v13, :cond_7

    move v8, v6

    .line 1355
    iget-wide v5, v13, Landroid/icu/text/StringSearch$CEI;->ce_:J

    cmp-long v5, v5, v14

    if-eqz v5, :cond_9

    :cond_7
    move-object v11, v13

    move/from16 v8, v16

    goto/16 :goto_c

    :cond_8
    move v8, v6

    :cond_9
    if-nez v7, :cond_a

    move v5, v7

    move/from16 v7, v16

    goto/16 :goto_b

    .line 1370
    :cond_a
    iget-object v5, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v5, v5, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/2addr v5, v4

    sub-int/2addr v5, v12

    add-int/2addr v5, v8

    invoke-virtual {v3, v5}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v5

    .line 1371
    iget v6, v5, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1379
    invoke-direct {v0, v6}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v7, 0x0

    .line 1385
    :cond_b
    iget v5, v5, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v6, v5, :cond_c

    const/4 v5, 0x0

    goto :goto_6

    :cond_c
    move v5, v7

    .line 1389
    :goto_6
    iget v7, v10, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    if-lez v4, :cond_14

    add-int/lit8 v8, v4, -0x1

    .line 1400
    invoke-virtual {v3, v8}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v8

    .line 1402
    iget v9, v8, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    iget v11, v8, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v9, v11, :cond_d

    move-object v11, v13

    iget-wide v12, v8, Landroid/icu/text/StringSearch$CEI;->ce_:J

    cmp-long v12, v12, v14

    if-eqz v12, :cond_e

    const/4 v5, 0x0

    goto :goto_7

    :cond_d
    move-object v11, v13

    .line 1406
    :cond_e
    :goto_7
    iget v12, v8, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1419
    iget-object v13, v0, Landroid/icu/text/StringSearch;->breakIterator:Landroid/icu/text/BreakIterator;

    if-nez v13, :cond_10

    iget-wide v13, v8, Landroid/icu/text/StringSearch$CEI;->ce_:J

    const/16 v15, 0x20

    ushr-long/2addr v13, v15

    const-wide v17, 0xffff0000L

    and-long v13, v13, v17

    const-wide/16 v17, 0x0

    cmp-long v13, v13, v17

    if-eqz v13, :cond_10

    iget v13, v10, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-lt v12, v13, :cond_10

    iget v8, v8, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-le v8, v12, :cond_10

    iget-object v8, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    iget-object v13, v0, Landroid/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    .line 1423
    invoke-static {v13, v12}, Landroid/icu/text/StringSearch;->codePointAt(Ljava/text/CharacterIterator;I)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    iget-object v13, v0, Landroid/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    .line 1424
    invoke-static {v13, v12}, Landroid/icu/text/StringSearch;->codePointBefore(Ljava/text/CharacterIterator;I)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    move-result v8

    if-eqz v8, :cond_10

    :cond_f
    const/4 v9, 0x1

    goto :goto_8

    :cond_10
    const/4 v9, 0x0

    :goto_8
    if-ge v7, v12, :cond_11

    .line 1437
    invoke-direct {v0, v7}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    move-result v7

    .line 1441
    iget v8, v10, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-lt v7, v8, :cond_11

    if-eqz v9, :cond_12

    if-ge v7, v12, :cond_11

    goto :goto_9

    :cond_11
    move v7, v12

    :cond_12
    :goto_9
    if-nez v9, :cond_16

    if-le v7, v12, :cond_13

    const/4 v5, 0x0

    .line 1454
    :cond_13
    invoke-direct {v0, v7}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v8

    if-nez v8, :cond_16

    const/4 v5, 0x0

    goto :goto_a

    :cond_14
    move-object v11, v13

    .line 1464
    invoke-direct {v0, v7}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    move-result v7

    if-lez v7, :cond_15

    if-le v1, v7, :cond_15

    goto :goto_a

    :cond_15
    move v7, v1

    .line 1468
    :cond_16
    :goto_a
    invoke-direct {v0, v6, v7}, Landroid/icu/text/StringSearch;->checkIdentical(II)Z

    move-result v8

    if-nez v8, :cond_17

    const/4 v5, 0x0

    :cond_17
    if-eqz v5, :cond_1a

    move v9, v7

    move v7, v6

    :goto_b
    if-nez v5, :cond_18

    const/4 v7, -0x1

    const/4 v9, -0x1

    :cond_18
    if-eqz v2, :cond_19

    .line 1485
    iput v7, v2, Landroid/icu/text/StringSearch$Match;->start_:I

    .line 1486
    iput v9, v2, Landroid/icu/text/StringSearch$Match;->limit_:I

    :cond_19
    return v5

    :cond_1a
    move v8, v6

    move v9, v7

    :goto_c
    add-int/lit8 v4, v4, 0x1

    move-object v6, v11

    goto/16 :goto_2

    .line 1327
    :cond_1b
    new-instance v0, Landroid/icu/util/ICUException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CEBuffer.getPrevious("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") returned null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1269
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "searchBackwards("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m) - expected position to be between "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 1270
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getCollator()Landroid/icu/text/RuleBasedCollator;
    .locals 0

    .line 298
    iget-object p0, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    return-object p0
.end method

.method public getIndex()I
    .locals 2

    .line 391
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    .line 392
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    iget-object p0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {p0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result p0

    invoke-static {v1, p0, v0}, Landroid/icu/text/StringSearch;->isOutOfBounds(III)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 0

    .line 334
    iget-object p0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object p0, p0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    return-object p0
.end method

.method protected handleNext(I)I
    .locals 3

    .line 471
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 472
    iget-object p1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    if-ne v0, v1, :cond_0

    .line 473
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->getIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 474
    iget-object p1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 475
    iget-object p1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-virtual {p1, v0}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 476
    iget-object p1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget p1, p1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 477
    iget-object p0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iput v1, p0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    :cond_1
    return v1

    .line 480
    :cond_2
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v0

    if-gtz v0, :cond_3

    .line 487
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    add-int/lit8 v2, p1, -0x1

    iput v2, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 490
    :cond_3
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 496
    iget-object p1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean p1, p1, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    if-eqz p1, :cond_4

    .line 498
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextCanonical()Z

    goto :goto_1

    .line 500
    :cond_4
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextExact()Z

    .line 503
    :goto_1
    iget-object p1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget p1, p1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    if-ne p1, v1, :cond_5

    .line 504
    iget-object p1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    goto :goto_2

    .line 506
    :cond_5
    iget-object p1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-virtual {p1, v0}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 509
    :goto_2
    iget-object p0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget p0, p0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    return p0
.end method

.method protected handlePrevious(I)I
    .locals 2

    .line 520
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    if-nez v0, :cond_2

    .line 521
    iget-object p1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 522
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->getIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    :goto_0
    iput v0, p1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 523
    iget-object p1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget p1, p1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 524
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    goto :goto_1

    .line 526
    :cond_1
    iget-object p1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, p1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 527
    iget-object p1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-virtual {p1, v0}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 528
    iget-object p1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    goto :goto_1

    .line 531
    :cond_2
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 533
    iget-object p1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean p1, p1, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    if-eqz p1, :cond_3

    .line 535
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousCanonical()Z

    goto :goto_1

    .line 537
    :cond_3
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousExact()Z

    .line 541
    :goto_1
    iget-object p0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget p0, p0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    return p0
.end method

.method public isCanonical()Z
    .locals 0

    .line 363
    iget-object p0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean p0, p0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    return p0
.end method

.method public reset()V
    .locals 5

    .line 426
    iget-object v0, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    .line 427
    iget v1, p0, Landroid/icu/text/StringSearch;->strength_:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    iget v1, p0, Landroid/icu/text/StringSearch;->strength_:I

    if-lt v1, v3, :cond_2

    if-ge v0, v3, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    .line 432
    :goto_0
    iget-object v1, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v1

    iput v1, p0, Landroid/icu/text/StringSearch;->strength_:I

    .line 433
    iget v1, p0, Landroid/icu/text/StringSearch;->strength_:I

    invoke-static {v1}, Landroid/icu/text/StringSearch;->getMask(I)I

    move-result v1

    .line 434
    iget v3, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    if-eq v3, v1, :cond_3

    .line 435
    iput v1, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    move v0, v4

    .line 439
    :cond_3
    iget-object v1, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v1

    .line 440
    iget-boolean v3, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    if-eq v3, v1, :cond_4

    .line 441
    iput-boolean v1, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    move v0, v4

    .line 445
    :cond_4
    iget-object v1, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v1

    .line 446
    iget v3, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    if-eq v3, v1, :cond_5

    .line 447
    iput v1, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    move v0, v4

    :cond_5
    if-nez v0, :cond_6

    .line 452
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    .line 455
    :cond_6
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 457
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, v4}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 458
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, -0x1

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 459
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v4, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    .line 460
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v4, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    .line 461
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    iput-object v1, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    .line 462
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 463
    iget-object p0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v2, p0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    return-void
.end method

.method public setCanonical(Z)V
    .locals 0

    .line 374
    iget-object p0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean p1, p0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    return-void
.end method

.method public setCollator(Landroid/icu/text/RuleBasedCollator;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 313
    iput-object p1, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    .line 314
    iget-object v0, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/StringSearch;->getMask(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    .line 316
    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p1, v0}, Landroid/icu/text/RuleBasedCollator;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 317
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    if-nez v0, :cond_0

    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :cond_0
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    .line 318
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    invoke-virtual {v0, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 320
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    .line 321
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v0

    iput v0, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    .line 322
    new-instance v0, Landroid/icu/text/CollationElementIterator;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v1, v1, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    iput-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    .line 323
    new-instance v0, Landroid/icu/text/CollationElementIterator;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v1, v1, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    iput-object v0, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    .line 326
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    return-void

    .line 311
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Collator can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIndex(I)V
    .locals 0

    .line 407
    invoke-super {p0, p1}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    .line 408
    iget-object p0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    return-void
.end method

.method protected setMatchNotFound()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 827
    invoke-super {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    .line 831
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object p0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {p0}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    goto :goto_0

    .line 834
    :cond_0
    iget-object p0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    :goto_0
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 350
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iput-object p1, v0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    .line 351
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    return-void

    .line 347
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pattern to search for can not be null or of length 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTarget(Ljava/text/CharacterIterator;)V
    .locals 0

    .line 382
    invoke-super {p0, p1}, Landroid/icu/text/SearchIterator;->setTarget(Ljava/text/CharacterIterator;)V

    .line 383
    iget-object p0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method
