.class Landroid/icu/number/NumberPropertyMapper$CurrencyPluralInfoAffixProvider;
.super Ljava/lang/Object;
.source "NumberPropertyMapper.java"

# interfaces
.implements Landroid/icu/impl/number/AffixPatternProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberPropertyMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrencyPluralInfoAffixProvider"
.end annotation


# instance fields
.field private final affixesByPlural:[Landroid/icu/impl/number/AffixPatternProvider;


# direct methods
.method public constructor <init>(Landroid/icu/text/CurrencyPluralInfo;)V
    .locals 4

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    new-array v0, v0, [Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    iput-object v0, p0, Landroid/icu/number/NumberPropertyMapper$CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/AffixPatternProvider;

    .line 469
    sget-object v0, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/StandardPlural;

    .line 470
    iget-object v2, p0, Landroid/icu/number/NumberPropertyMapper$CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/AffixPatternProvider;

    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v3

    .line 471
    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object v1

    aput-object v1, v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public charAt(II)C
    .locals 1

    and-int/lit16 v0, p1, 0xff

    .line 478
    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/AffixPatternProvider;

    aget-object p0, p0, v0

    invoke-interface {p0, p1, p2}, Landroid/icu/impl/number/AffixPatternProvider;->charAt(II)C

    move-result p0

    return p0
.end method

.method public containsSymbolType(I)Z
    .locals 1

    .line 509
    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/AffixPatternProvider;

    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    invoke-interface {p0, p1}, Landroid/icu/impl/number/AffixPatternProvider;->containsSymbolType(I)Z

    move-result p0

    return p0
.end method

.method public hasCurrencySign()Z
    .locals 1

    .line 504
    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/AffixPatternProvider;

    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    invoke-interface {p0}, Landroid/icu/impl/number/AffixPatternProvider;->hasCurrencySign()Z

    move-result p0

    return p0
.end method

.method public hasNegativeSubpattern()Z
    .locals 1

    .line 494
    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/AffixPatternProvider;

    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    invoke-interface {p0}, Landroid/icu/impl/number/AffixPatternProvider;->hasNegativeSubpattern()Z

    move-result p0

    return p0
.end method

.method public length(I)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    .line 484
    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/AffixPatternProvider;

    aget-object p0, p0, v0

    invoke-interface {p0, p1}, Landroid/icu/impl/number/AffixPatternProvider;->length(I)I

    move-result p0

    return p0
.end method

.method public negativeHasMinusSign()Z
    .locals 1

    .line 499
    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/AffixPatternProvider;

    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    invoke-interface {p0}, Landroid/icu/impl/number/AffixPatternProvider;->negativeHasMinusSign()Z

    move-result p0

    return p0
.end method

.method public positiveHasPlusSign()Z
    .locals 1

    .line 489
    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/AffixPatternProvider;

    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    invoke-interface {p0}, Landroid/icu/impl/number/AffixPatternProvider;->positiveHasPlusSign()Z

    move-result p0

    return p0
.end method
