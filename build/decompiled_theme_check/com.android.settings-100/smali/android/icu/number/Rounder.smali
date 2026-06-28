.class public abstract Landroid/icu/number/Rounder;
.super Ljava/lang/Object;
.source "Rounder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/number/Rounder$PassThroughRounderImpl;,
        Landroid/icu/number/Rounder$CurrencyRounderImpl;,
        Landroid/icu/number/Rounder$IncrementRounderImpl;,
        Landroid/icu/number/Rounder$FracSigRounderImpl;,
        Landroid/icu/number/Rounder$SignificantRounderImpl;,
        Landroid/icu/number/Rounder$FractionRounderImpl;,
        Landroid/icu/number/Rounder$InfiniteRounderImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final COMPACT_STRATEGY:Landroid/icu/number/Rounder$FracSigRounderImpl;

.field static final FIXED_FRAC_0:Landroid/icu/number/Rounder$FractionRounderImpl;

.field static final FIXED_FRAC_2:Landroid/icu/number/Rounder$FractionRounderImpl;

.field static final FIXED_SIG_2:Landroid/icu/number/Rounder$SignificantRounderImpl;

.field static final FIXED_SIG_3:Landroid/icu/number/Rounder$SignificantRounderImpl;

.field static final MAX_FRAC_6:Landroid/icu/number/Rounder$FractionRounderImpl;

.field static final MONETARY_CASH:Landroid/icu/number/Rounder$CurrencyRounderImpl;

.field static final MONETARY_STANDARD:Landroid/icu/number/Rounder$CurrencyRounderImpl;

.field static final NICKEL:Landroid/icu/number/Rounder$IncrementRounderImpl;

.field static final NONE:Landroid/icu/number/Rounder$InfiniteRounderImpl;

.field static final PASS_THROUGH:Landroid/icu/number/Rounder$PassThroughRounderImpl;

.field static final RANGE_SIG_2_3:Landroid/icu/number/Rounder$SignificantRounderImpl;


# instance fields
.field mathContext:Ljava/math/MathContext;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 366
    new-instance v0, Landroid/icu/number/Rounder$InfiniteRounderImpl;

    invoke-direct {v0}, Landroid/icu/number/Rounder$InfiniteRounderImpl;-><init>()V

    sput-object v0, Landroid/icu/number/Rounder;->NONE:Landroid/icu/number/Rounder$InfiniteRounderImpl;

    .line 368
    new-instance v0, Landroid/icu/number/Rounder$FractionRounderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/icu/number/Rounder$FractionRounderImpl;-><init>(II)V

    sput-object v0, Landroid/icu/number/Rounder;->FIXED_FRAC_0:Landroid/icu/number/Rounder$FractionRounderImpl;

    .line 369
    new-instance v0, Landroid/icu/number/Rounder$FractionRounderImpl;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v2}, Landroid/icu/number/Rounder$FractionRounderImpl;-><init>(II)V

    sput-object v0, Landroid/icu/number/Rounder;->FIXED_FRAC_2:Landroid/icu/number/Rounder$FractionRounderImpl;

    .line 370
    new-instance v0, Landroid/icu/number/Rounder$FractionRounderImpl;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3}, Landroid/icu/number/Rounder$FractionRounderImpl;-><init>(II)V

    sput-object v0, Landroid/icu/number/Rounder;->MAX_FRAC_6:Landroid/icu/number/Rounder$FractionRounderImpl;

    .line 372
    new-instance v0, Landroid/icu/number/Rounder$SignificantRounderImpl;

    invoke-direct {v0, v2, v2}, Landroid/icu/number/Rounder$SignificantRounderImpl;-><init>(II)V

    sput-object v0, Landroid/icu/number/Rounder;->FIXED_SIG_2:Landroid/icu/number/Rounder$SignificantRounderImpl;

    .line 373
    new-instance v0, Landroid/icu/number/Rounder$SignificantRounderImpl;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v3}, Landroid/icu/number/Rounder$SignificantRounderImpl;-><init>(II)V

    sput-object v0, Landroid/icu/number/Rounder;->FIXED_SIG_3:Landroid/icu/number/Rounder$SignificantRounderImpl;

    .line 374
    new-instance v0, Landroid/icu/number/Rounder$SignificantRounderImpl;

    invoke-direct {v0, v2, v3}, Landroid/icu/number/Rounder$SignificantRounderImpl;-><init>(II)V

    sput-object v0, Landroid/icu/number/Rounder;->RANGE_SIG_2_3:Landroid/icu/number/Rounder$SignificantRounderImpl;

    .line 376
    new-instance v0, Landroid/icu/number/Rounder$FracSigRounderImpl;

    const/4 v3, -0x1

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/icu/number/Rounder$FracSigRounderImpl;-><init>(IIII)V

    sput-object v0, Landroid/icu/number/Rounder;->COMPACT_STRATEGY:Landroid/icu/number/Rounder$FracSigRounderImpl;

    .line 378
    new-instance v0, Landroid/icu/number/Rounder$IncrementRounderImpl;

    const-wide v1, 0x3fa999999999999aL    # 0.05

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/number/Rounder$IncrementRounderImpl;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Landroid/icu/number/Rounder;->NICKEL:Landroid/icu/number/Rounder$IncrementRounderImpl;

    .line 380
    new-instance v0, Landroid/icu/number/Rounder$CurrencyRounderImpl;

    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-direct {v0, v1}, Landroid/icu/number/Rounder$CurrencyRounderImpl;-><init>(Landroid/icu/util/Currency$CurrencyUsage;)V

    sput-object v0, Landroid/icu/number/Rounder;->MONETARY_STANDARD:Landroid/icu/number/Rounder$CurrencyRounderImpl;

    .line 381
    new-instance v0, Landroid/icu/number/Rounder$CurrencyRounderImpl;

    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-direct {v0, v1}, Landroid/icu/number/Rounder$CurrencyRounderImpl;-><init>(Landroid/icu/util/Currency$CurrencyUsage;)V

    sput-object v0, Landroid/icu/number/Rounder;->MONETARY_CASH:Landroid/icu/number/Rounder$CurrencyRounderImpl;

    .line 383
    new-instance v0, Landroid/icu/number/Rounder$PassThroughRounderImpl;

    invoke-direct {v0}, Landroid/icu/number/Rounder$PassThroughRounderImpl;-><init>()V

    sput-object v0, Landroid/icu/number/Rounder;->PASS_THROUGH:Landroid/icu/number/Rounder$PassThroughRounderImpl;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Landroid/icu/impl/number/RoundingUtils;->DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;

    invoke-static {v0}, Landroid/icu/impl/number/RoundingUtils;->mathContextUnlimited(Ljava/math/RoundingMode;)Ljava/math/MathContext;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/number/Rounder;->mathContext:Ljava/math/MathContext;

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 26
    invoke-static {p0}, Landroid/icu/number/Rounder;->getRoundingMagnitudeFraction(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(I)I
    .locals 0

    .line 26
    invoke-static {p0}, Landroid/icu/number/Rounder;->getDisplayMagnitudeFraction(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/icu/impl/number/DecimalQuantity;I)I
    .locals 0

    .line 26
    invoke-static {p0, p1}, Landroid/icu/number/Rounder;->getRoundingMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroid/icu/impl/number/DecimalQuantity;I)I
    .locals 0

    .line 26
    invoke-static {p0, p1}, Landroid/icu/number/Rounder;->getDisplayMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I

    move-result p0

    return p0
.end method

.method static constructCurrency(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/number/CurrencyRounder;
    .locals 1

    .line 434
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    if-ne p0, v0, :cond_0

    .line 435
    sget-object p0, Landroid/icu/number/Rounder;->MONETARY_STANDARD:Landroid/icu/number/Rounder$CurrencyRounderImpl;

    return-object p0

    .line 436
    :cond_0
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    if-ne p0, v0, :cond_1

    .line 437
    sget-object p0, Landroid/icu/number/Rounder;->MONETARY_CASH:Landroid/icu/number/Rounder$CurrencyRounderImpl;

    return-object p0

    .line 439
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method static constructFraction(II)Landroid/icu/number/FractionRounder;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 391
    sget-object p0, Landroid/icu/number/Rounder;->FIXED_FRAC_0:Landroid/icu/number/Rounder$FractionRounderImpl;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_1

    .line 393
    sget-object p0, Landroid/icu/number/Rounder;->FIXED_FRAC_2:Landroid/icu/number/Rounder$FractionRounderImpl;

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 395
    sget-object p0, Landroid/icu/number/Rounder;->MAX_FRAC_6:Landroid/icu/number/Rounder$FractionRounderImpl;

    return-object p0

    .line 397
    :cond_2
    new-instance v0, Landroid/icu/number/Rounder$FractionRounderImpl;

    invoke-direct {v0, p0, p1}, Landroid/icu/number/Rounder$FractionRounderImpl;-><init>(II)V

    return-object v0
.end method

.method static constructFractionSignificant(Landroid/icu/number/FractionRounder;II)Landroid/icu/number/Rounder;
    .locals 2

    .line 416
    check-cast p0, Landroid/icu/number/Rounder$FractionRounderImpl;

    .line 417
    iget v0, p0, Landroid/icu/number/Rounder$FractionRounderImpl;->minFrac:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/icu/number/Rounder$FractionRounderImpl;->maxFrac:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 418
    sget-object p0, Landroid/icu/number/Rounder;->COMPACT_STRATEGY:Landroid/icu/number/Rounder$FracSigRounderImpl;

    return-object p0

    .line 420
    :cond_0
    new-instance v0, Landroid/icu/number/Rounder$FracSigRounderImpl;

    iget v1, p0, Landroid/icu/number/Rounder$FractionRounderImpl;->minFrac:I

    iget p0, p0, Landroid/icu/number/Rounder$FractionRounderImpl;->maxFrac:I

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/icu/number/Rounder$FracSigRounderImpl;-><init>(IIII)V

    return-object v0
.end method

.method static constructFromCurrency(Landroid/icu/number/CurrencyRounder;Landroid/icu/util/Currency;)Landroid/icu/number/Rounder;
    .locals 4

    .line 445
    check-cast p0, Landroid/icu/number/Rounder$CurrencyRounderImpl;

    .line 446
    iget-object v0, p0, Landroid/icu/number/Rounder$CurrencyRounderImpl;->usage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p1, v0}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    .line 448
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 449
    invoke-static {p0}, Landroid/icu/number/Rounder;->constructIncrement(Ljava/math/BigDecimal;)Landroid/icu/number/Rounder;

    move-result-object p0

    return-object p0

    .line 451
    :cond_0
    iget-object p0, p0, Landroid/icu/number/Rounder$CurrencyRounderImpl;->usage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p1, p0}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result p0

    .line 452
    invoke-static {p0, p0}, Landroid/icu/number/Rounder;->constructFraction(II)Landroid/icu/number/FractionRounder;

    move-result-object p0

    return-object p0
.end method

.method static constructIncrement(Ljava/math/BigDecimal;)Landroid/icu/number/Rounder;
    .locals 1

    .line 426
    sget-object v0, Landroid/icu/number/Rounder;->NICKEL:Landroid/icu/number/Rounder$IncrementRounderImpl;

    iget-object v0, v0, Landroid/icu/number/Rounder$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    sget-object p0, Landroid/icu/number/Rounder;->NICKEL:Landroid/icu/number/Rounder$IncrementRounderImpl;

    return-object p0

    .line 429
    :cond_0
    new-instance v0, Landroid/icu/number/Rounder$IncrementRounderImpl;

    invoke-direct {v0, p0}, Landroid/icu/number/Rounder$IncrementRounderImpl;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method static constructInfinite()Landroid/icu/number/Rounder;
    .locals 1

    .line 386
    sget-object v0, Landroid/icu/number/Rounder;->NONE:Landroid/icu/number/Rounder$InfiniteRounderImpl;

    return-object v0
.end method

.method static constructPassThrough()Landroid/icu/number/Rounder;
    .locals 1

    .line 457
    sget-object v0, Landroid/icu/number/Rounder;->PASS_THROUGH:Landroid/icu/number/Rounder$PassThroughRounderImpl;

    return-object v0
.end method

.method static constructSignificant(II)Landroid/icu/number/Rounder;
    .locals 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 404
    sget-object p0, Landroid/icu/number/Rounder;->FIXED_SIG_2:Landroid/icu/number/Rounder$SignificantRounderImpl;

    return-object p0

    :cond_0
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    if-ne p1, v1, :cond_1

    .line 406
    sget-object p0, Landroid/icu/number/Rounder;->FIXED_SIG_3:Landroid/icu/number/Rounder$SignificantRounderImpl;

    return-object p0

    :cond_1
    if-ne p0, v0, :cond_2

    if-ne p1, v1, :cond_2

    .line 408
    sget-object p0, Landroid/icu/number/Rounder;->RANGE_SIG_2_3:Landroid/icu/number/Rounder$SignificantRounderImpl;

    return-object p0

    .line 410
    :cond_2
    new-instance v0, Landroid/icu/number/Rounder$SignificantRounderImpl;

    invoke-direct {v0, p0, p1}, Landroid/icu/number/Rounder$SignificantRounderImpl;-><init>(II)V

    return-object v0
.end method

.method public static currency(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/number/CurrencyRounder;
    .locals 1

    if-eqz p0, :cond_0

    .line 304
    invoke-static {p0}, Landroid/icu/number/Rounder;->constructCurrency(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/number/CurrencyRounder;

    move-result-object p0

    return-object p0

    .line 306
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CurrencyUsage must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fixedDigits(I)Landroid/icu/number/Rounder;
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    .line 186
    invoke-static {p0, p0}, Landroid/icu/number/Rounder;->constructSignificant(II)Landroid/icu/number/Rounder;

    move-result-object p0

    return-object p0

    .line 188
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Significant digits must be between 0 and 100"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fixedFraction(I)Landroid/icu/number/FractionRounder;
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    .line 96
    invoke-static {p0, p0}, Landroid/icu/number/Rounder;->constructFraction(II)Landroid/icu/number/FractionRounder;

    move-result-object p0

    return-object p0

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fraction length must be between 0 and 100"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getDisplayMagnitudeFraction(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    neg-int p0, p0

    return p0
.end method

.method private static getDisplayMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I
    .locals 1

    .line 648
    invoke-interface {p0}, Landroid/icu/impl/number/DecimalQuantity;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result p0

    :goto_0
    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static getRoundingMagnitudeFraction(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    neg-int p0, p0

    return p0
.end method

.method private static getRoundingMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 636
    :cond_0
    invoke-interface {p0}, Landroid/icu/impl/number/DecimalQuantity;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroid/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result p0

    :goto_0
    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static increment(Ljava/math/BigDecimal;)Landroid/icu/number/Rounder;
    .locals 1

    if-eqz p0, :cond_0

    .line 278
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_0

    .line 279
    invoke-static {p0}, Landroid/icu/number/Rounder;->constructIncrement(Ljava/math/BigDecimal;)Landroid/icu/number/Rounder;

    move-result-object p0

    return-object p0

    .line 281
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rounding increment must be positive and non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static integer()Landroid/icu/number/FractionRounder;
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-static {v0, v0}, Landroid/icu/number/Rounder;->constructFraction(II)Landroid/icu/number/FractionRounder;

    move-result-object v0

    return-object v0
.end method

.method public static maxDigits(I)Landroid/icu/number/Rounder;
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    .line 226
    invoke-static {v0, p0}, Landroid/icu/number/Rounder;->constructSignificant(II)Landroid/icu/number/Rounder;

    move-result-object p0

    return-object p0

    .line 228
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Significant digits must be between 0 and 100"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static maxFraction(I)Landroid/icu/number/FractionRounder;
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 v0, 0x0

    .line 139
    invoke-static {v0, p0}, Landroid/icu/number/Rounder;->constructFraction(II)Landroid/icu/number/FractionRounder;

    move-result-object p0

    return-object p0

    .line 141
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fraction length must be between 0 and 100"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static minDigits(I)Landroid/icu/number/Rounder;
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    const/4 v0, -0x1

    .line 208
    invoke-static {p0, v0}, Landroid/icu/number/Rounder;->constructSignificant(II)Landroid/icu/number/Rounder;

    move-result-object p0

    return-object p0

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Significant digits must be between 0 and 100"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static minFraction(I)Landroid/icu/number/FractionRounder;
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 v0, -0x1

    .line 119
    invoke-static {p0, v0}, Landroid/icu/number/Rounder;->constructFraction(II)Landroid/icu/number/FractionRounder;

    move-result-object p0

    return-object p0

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fraction length must be between 0 and 100"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static minMaxDigits(II)Landroid/icu/number/Rounder;
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 248
    invoke-static {p0, p1}, Landroid/icu/number/Rounder;->constructSignificant(II)Landroid/icu/number/Rounder;

    move-result-object p0

    return-object p0

    .line 250
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Significant digits must be between 0 and 100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static minMaxFraction(II)Landroid/icu/number/FractionRounder;
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 163
    invoke-static {p0, p1}, Landroid/icu/number/Rounder;->constructFraction(II)Landroid/icu/number/FractionRounder;

    move-result-object p0

    return-object p0

    .line 165
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fraction length must be between 0 and 100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unlimited()Landroid/icu/number/Rounder;
    .locals 1

    .line 52
    invoke-static {}, Landroid/icu/number/Rounder;->constructInfinite()Landroid/icu/number/Rounder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method chooseMultiplierAndApply(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MultiplierProducer;)I
    .locals 5

    .line 479
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->createCopy()Landroid/icu/impl/number/DecimalQuantity;

    move-result-object v0

    .line 482
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v1

    .line 483
    invoke-interface {p2, v1}, Landroid/icu/impl/number/MultiplierProducer;->getMultiplier(I)I

    move-result v2

    .line 484
    invoke-interface {p1, v2}, Landroid/icu/impl/number/DecimalQuantity;->adjustMagnitude(I)V

    .line 485
    invoke-virtual {p0, p1}, Landroid/icu/number/Rounder;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 488
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v3

    add-int v4, v1, v2

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 490
    invoke-interface {p1, v0}, Landroid/icu/impl/number/DecimalQuantity;->copyFrom(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 491
    invoke-interface {p2, v1}, Landroid/icu/impl/number/MultiplierProducer;->getMultiplier(I)I

    move-result v2

    .line 492
    invoke-interface {p1, v2}, Landroid/icu/impl/number/DecimalQuantity;->adjustMagnitude(I)V

    .line 494
    invoke-virtual {p0, p1}, Landroid/icu/number/Rounder;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    :cond_0
    return v2
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 351
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method withLocaleData(Landroid/icu/util/Currency;)Landroid/icu/number/Rounder;
    .locals 1

    .line 469
    instance-of v0, p0, Landroid/icu/number/CurrencyRounder;

    if-eqz v0, :cond_0

    .line 470
    check-cast p0, Landroid/icu/number/CurrencyRounder;

    invoke-virtual {p0, p1}, Landroid/icu/number/CurrencyRounder;->withCurrency(Landroid/icu/util/Currency;)Landroid/icu/number/Rounder;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public withMode(Ljava/math/MathContext;)Landroid/icu/number/Rounder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    iget-object v0, p0, Landroid/icu/number/Rounder;->mathContext:Ljava/math/MathContext;

    invoke-virtual {v0, p1}, Ljava/math/MathContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 335
    :cond_0
    invoke-virtual {p0}, Landroid/icu/number/Rounder;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/number/Rounder;

    .line 336
    iput-object p1, p0, Landroid/icu/number/Rounder;->mathContext:Ljava/math/MathContext;

    return-object p0
.end method

.method public withMode(Ljava/math/RoundingMode;)Landroid/icu/number/Rounder;
    .locals 0

    .line 321
    invoke-static {p1}, Landroid/icu/impl/number/RoundingUtils;->mathContextUnlimited(Ljava/math/RoundingMode;)Ljava/math/MathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/number/Rounder;->withMode(Ljava/math/MathContext;)Landroid/icu/number/Rounder;

    move-result-object p0

    return-object p0
.end method
