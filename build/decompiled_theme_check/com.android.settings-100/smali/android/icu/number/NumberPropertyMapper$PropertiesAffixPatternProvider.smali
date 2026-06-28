.class Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;
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
    name = "PropertiesAffixPatternProvider"
.end annotation


# instance fields
.field private final negPrefix:Ljava/lang/String;

.field private final negSuffix:Ljava/lang/String;

.field private final posPrefix:Ljava/lang/String;

.field private final posSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/icu/impl/number/DecimalFormatProperties;)V
    .locals 8

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v6

    .line 369
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object p1

    const-string v7, ""

    if-eqz v0, :cond_0

    .line 372
    iput-object v0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 374
    iput-object v4, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    goto :goto_0

    .line 377
    :cond_1
    iput-object v7, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    :goto_0
    if-eqz v1, :cond_2

    .line 381
    iput-object v1, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 383
    iput-object v5, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    goto :goto_1

    .line 386
    :cond_3
    iput-object v7, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    :goto_1
    if-eqz v2, :cond_4

    .line 390
    iput-object v2, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    .line 392
    iput-object v6, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string v0, "-"

    if-nez v4, :cond_6

    goto :goto_2

    .line 396
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    :goto_3
    if-eqz v3, :cond_7

    .line 400
    iput-object v3, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    .line 402
    iput-object p1, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    goto :goto_4

    :cond_8
    if-nez v5, :cond_9

    move-object v5, v7

    .line 405
    :cond_9
    iput-object v5, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    :goto_4
    return-void
.end method

.method private getStringForFlags(I)Ljava/lang/String;
    .locals 3

    and-int/lit16 v0, p1, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 423
    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    .line 425
    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    return-object p0

    :cond_3
    if-eqz v1, :cond_4

    .line 427
    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    return-object p0

    .line 429
    :cond_4
    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public charAt(II)C
    .locals 0

    .line 411
    invoke-direct {p0, p1}, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->getStringForFlags(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public containsSymbolType(I)Z
    .locals 1

    .line 459
    iget-object v0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    .line 460
    invoke-static {v0, p1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

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

.method public hasCurrencySign()Z
    .locals 1

    .line 453
    iget-object v0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    .line 454
    invoke-static {v0}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    invoke-static {p0}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

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

.method public hasNegativeSubpattern()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public length(I)I
    .locals 0

    .line 416
    invoke-direct {p0, p1}, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->getStringForFlags(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public negativeHasMinusSign()Z
    .locals 2

    .line 447
    iget-object v0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    .line 448
    invoke-static {p0, v1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

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

.method public positiveHasPlusSign()Z
    .locals 2

    .line 435
    iget-object v0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    .line 436
    invoke-static {p0, v1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

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
