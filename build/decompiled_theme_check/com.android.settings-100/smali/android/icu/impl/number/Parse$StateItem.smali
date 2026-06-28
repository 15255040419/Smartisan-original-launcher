.class Landroid/icu/impl/number/Parse$StateItem;
.super Ljava/lang/Object;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateItem"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field affix:Landroid/icu/impl/number/Parse$AffixHolder;

.field currentAffixPattern:Ljava/lang/CharSequence;

.field currentCurrencyTrieState:Landroid/icu/impl/TextTrieMap$ParseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">.ParseState;"
        }
    .end annotation
.end field

.field currentDigitTrieState:Landroid/icu/impl/TextTrieMap$ParseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Ljava/lang/Byte;",
            ">.ParseState;"
        }
    .end annotation
.end field

.field currentDigitType:Landroid/icu/impl/number/Parse$DigitType;

.field currentOffset:I

.field currentStepwiseParserTag:J

.field currentString:Ljava/lang/CharSequence;

.field currentTrailing:Z

.field exponent:I

.field fq:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

.field groupingCp:I

.field groupingWidths:J

.field final id:C

.field isoCode:Ljava/lang/String;

.field name:Landroid/icu/impl/number/Parse$StateName;

.field numDigits:I

.field path:Ljava/lang/String;

.field returnTo1:Landroid/icu/impl/number/Parse$StateName;

.field returnTo2:Landroid/icu/impl/number/Parse$StateName;

.field sawCurrency:Z

.field sawDecimalPoint:Z

.field sawExponentDigit:Z

.field sawInfinity:Z

.field sawNaN:Z

.field sawNegative:Z

.field sawNegativeExponent:Z

.field sawPrefix:Z

.field sawSuffix:Z

.field score:I

.field trailingCount:I

.field trailingZeros:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 198
    const-class v0, Landroid/icu/impl/number/Parse;

    return-void
.end method

.method constructor <init>(C)V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/number/Parse$StateItem;->fq:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 250
    iput-char p1, p0, Landroid/icu/impl/number/Parse$StateItem;->id:C

    return-void
.end method


# virtual methods
.method appendDigit(BLandroid/icu/impl/number/Parse$DigitType;)V
    .locals 3

    .line 373
    sget-object v0, Landroid/icu/impl/number/Parse$DigitType;->EXPONENT:Landroid/icu/impl/number/Parse$DigitType;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 374
    iput-boolean v1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawExponentDigit:Z

    .line 375
    iget p2, p0, Landroid/icu/impl/number/Parse$StateItem;->exponent:I

    mul-int/lit8 v0, p2, 0xa

    add-int/2addr v0, p1

    if-ge v0, p2, :cond_0

    const p1, 0x7fffffff

    .line 378
    iput p1, p0, Landroid/icu/impl/number/Parse$StateItem;->exponent:I

    goto :goto_0

    .line 380
    :cond_0
    iput v0, p0, Landroid/icu/impl/number/Parse$StateItem;->exponent:I

    goto :goto_0

    .line 383
    :cond_1
    iget v0, p0, Landroid/icu/impl/number/Parse$StateItem;->numDigits:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/number/Parse$StateItem;->numDigits:I

    .line 384
    sget-object v0, Landroid/icu/impl/number/Parse$DigitType;->FRACTION:Landroid/icu/impl/number/Parse$DigitType;

    if-ne p2, v0, :cond_2

    if-nez p1, :cond_2

    .line 385
    iget p1, p0, Landroid/icu/impl/number/Parse$StateItem;->trailingZeros:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/icu/impl/number/Parse$StateItem;->trailingZeros:I

    goto :goto_0

    .line 386
    :cond_2
    sget-object v0, Landroid/icu/impl/number/Parse$DigitType;->FRACTION:Landroid/icu/impl/number/Parse$DigitType;

    const/4 v2, 0x0

    if-ne p2, v0, :cond_3

    .line 387
    iget-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->fq:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    iget v0, p0, Landroid/icu/impl/number/Parse$StateItem;->trailingZeros:I

    invoke-virtual {p2, p1, v0, v2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->appendDigit(BIZ)V

    .line 388
    iput v2, p0, Landroid/icu/impl/number/Parse$StateItem;->trailingZeros:I

    goto :goto_0

    .line 390
    :cond_3
    iget-object p0, p0, Landroid/icu/impl/number/Parse$StateItem;->fq:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p0, p1, v2, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->appendDigit(BIZ)V

    :goto_0
    return-void
.end method

.method clear()Landroid/icu/impl/number/Parse$StateItem;
    .locals 4

    .line 260
    sget-object v0, Landroid/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    iput-object v0, p0, Landroid/icu/impl/number/Parse$StateItem;->name:Landroid/icu/impl/number/Parse$StateName;

    const/4 v0, 0x0

    .line 261
    iput v0, p0, Landroid/icu/impl/number/Parse$StateItem;->trailingCount:I

    .line 262
    iput v0, p0, Landroid/icu/impl/number/Parse$StateItem;->score:I

    .line 265
    iget-object v1, p0, Landroid/icu/impl/number/Parse$StateItem;->fq:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->clear()Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;

    .line 266
    iput v0, p0, Landroid/icu/impl/number/Parse$StateItem;->numDigits:I

    .line 267
    iput v0, p0, Landroid/icu/impl/number/Parse$StateItem;->trailingZeros:I

    .line 268
    iput v0, p0, Landroid/icu/impl/number/Parse$StateItem;->exponent:I

    const/4 v1, -0x1

    .line 271
    iput v1, p0, Landroid/icu/impl/number/Parse$StateItem;->groupingCp:I

    const-wide/16 v1, 0x0

    .line 272
    iput-wide v1, p0, Landroid/icu/impl/number/Parse$StateItem;->groupingWidths:J

    const/4 v3, 0x0

    .line 273
    iput-object v3, p0, Landroid/icu/impl/number/Parse$StateItem;->isoCode:Ljava/lang/String;

    .line 274
    iput-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegative:Z

    .line 275
    iput-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    .line 276
    iput-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    .line 277
    iput-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNaN:Z

    .line 278
    iput-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawInfinity:Z

    .line 279
    iput-object v3, p0, Landroid/icu/impl/number/Parse$StateItem;->affix:Landroid/icu/impl/number/Parse$AffixHolder;

    .line 280
    iput-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    .line 281
    iput-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    .line 282
    iput-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    .line 283
    iput-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawExponentDigit:Z

    .line 286
    iput-object v3, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    .line 287
    iput-object v3, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo2:Landroid/icu/impl/number/Parse$StateName;

    .line 288
    iput-object v3, p0, Landroid/icu/impl/number/Parse$StateItem;->currentString:Ljava/lang/CharSequence;

    .line 289
    iput v0, p0, Landroid/icu/impl/number/Parse$StateItem;->currentOffset:I

    .line 290
    iput-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->currentTrailing:Z

    .line 291
    iput-object v3, p0, Landroid/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    .line 292
    iput-wide v1, p0, Landroid/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    .line 293
    iput-object v3, p0, Landroid/icu/impl/number/Parse$StateItem;->currentCurrencyTrieState:Landroid/icu/impl/TextTrieMap$ParseState;

    .line 294
    iput-object v3, p0, Landroid/icu/impl/number/Parse$StateItem;->currentDigitTrieState:Landroid/icu/impl/TextTrieMap$ParseState;

    .line 295
    iput-object v3, p0, Landroid/icu/impl/number/Parse$StateItem;->currentDigitType:Landroid/icu/impl/number/Parse$DigitType;

    const-string v0, ""

    .line 299
    iput-object v0, p0, Landroid/icu/impl/number/Parse$StateItem;->path:Ljava/lang/String;

    return-object p0
.end method

.method copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;
    .locals 0

    .line 319
    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->name:Landroid/icu/impl/number/Parse$StateName;

    .line 320
    iget p2, p1, Landroid/icu/impl/number/Parse$StateItem;->score:I

    iput p2, p0, Landroid/icu/impl/number/Parse$StateItem;->score:I

    if-gez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 323
    :cond_0
    iget p2, p1, Landroid/icu/impl/number/Parse$StateItem;->trailingCount:I

    invoke-static {p3}, Ljava/lang/Character;->charCount(I)I

    move-result p3

    add-int/2addr p2, p3

    :goto_0
    iput p2, p0, Landroid/icu/impl/number/Parse$StateItem;->trailingCount:I

    .line 326
    iget-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->fq:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    iget-object p3, p1, Landroid/icu/impl/number/Parse$StateItem;->fq:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p2, p3}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->copyFrom(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 327
    iget p2, p1, Landroid/icu/impl/number/Parse$StateItem;->numDigits:I

    iput p2, p0, Landroid/icu/impl/number/Parse$StateItem;->numDigits:I

    .line 328
    iget p2, p1, Landroid/icu/impl/number/Parse$StateItem;->trailingZeros:I

    iput p2, p0, Landroid/icu/impl/number/Parse$StateItem;->trailingZeros:I

    .line 329
    iget p2, p1, Landroid/icu/impl/number/Parse$StateItem;->exponent:I

    iput p2, p0, Landroid/icu/impl/number/Parse$StateItem;->exponent:I

    .line 332
    iget p2, p1, Landroid/icu/impl/number/Parse$StateItem;->groupingCp:I

    iput p2, p0, Landroid/icu/impl/number/Parse$StateItem;->groupingCp:I

    .line 333
    iget-wide p2, p1, Landroid/icu/impl/number/Parse$StateItem;->groupingWidths:J

    iput-wide p2, p0, Landroid/icu/impl/number/Parse$StateItem;->groupingWidths:J

    .line 334
    iget-object p2, p1, Landroid/icu/impl/number/Parse$StateItem;->isoCode:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->isoCode:Ljava/lang/String;

    .line 335
    iget-boolean p2, p1, Landroid/icu/impl/number/Parse$StateItem;->sawNegative:Z

    iput-boolean p2, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegative:Z

    .line 336
    iget-boolean p2, p1, Landroid/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    iput-boolean p2, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    .line 337
    iget-boolean p2, p1, Landroid/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    iput-boolean p2, p0, Landroid/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    .line 338
    iget-boolean p2, p1, Landroid/icu/impl/number/Parse$StateItem;->sawNaN:Z

    iput-boolean p2, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNaN:Z

    .line 339
    iget-boolean p2, p1, Landroid/icu/impl/number/Parse$StateItem;->sawInfinity:Z

    iput-boolean p2, p0, Landroid/icu/impl/number/Parse$StateItem;->sawInfinity:Z

    .line 340
    iget-object p2, p1, Landroid/icu/impl/number/Parse$StateItem;->affix:Landroid/icu/impl/number/Parse$AffixHolder;

    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->affix:Landroid/icu/impl/number/Parse$AffixHolder;

    .line 341
    iget-boolean p2, p1, Landroid/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    iput-boolean p2, p0, Landroid/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    .line 342
    iget-boolean p2, p1, Landroid/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    iput-boolean p2, p0, Landroid/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    .line 343
    iget-boolean p2, p1, Landroid/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    iput-boolean p2, p0, Landroid/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    .line 344
    iget-boolean p2, p1, Landroid/icu/impl/number/Parse$StateItem;->sawExponentDigit:Z

    iput-boolean p2, p0, Landroid/icu/impl/number/Parse$StateItem;->sawExponentDigit:Z

    .line 347
    iget-object p2, p1, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    .line 348
    iget-object p2, p1, Landroid/icu/impl/number/Parse$StateItem;->returnTo2:Landroid/icu/impl/number/Parse$StateName;

    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo2:Landroid/icu/impl/number/Parse$StateName;

    .line 349
    iget-object p2, p1, Landroid/icu/impl/number/Parse$StateItem;->currentString:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->currentString:Ljava/lang/CharSequence;

    .line 350
    iget p2, p1, Landroid/icu/impl/number/Parse$StateItem;->currentOffset:I

    iput p2, p0, Landroid/icu/impl/number/Parse$StateItem;->currentOffset:I

    .line 351
    iget-boolean p2, p1, Landroid/icu/impl/number/Parse$StateItem;->currentTrailing:Z

    iput-boolean p2, p0, Landroid/icu/impl/number/Parse$StateItem;->currentTrailing:Z

    .line 352
    iget-object p2, p1, Landroid/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    .line 353
    iget-wide p2, p1, Landroid/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    iput-wide p2, p0, Landroid/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    .line 354
    iget-object p2, p1, Landroid/icu/impl/number/Parse$StateItem;->currentCurrencyTrieState:Landroid/icu/impl/TextTrieMap$ParseState;

    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->currentCurrencyTrieState:Landroid/icu/impl/TextTrieMap$ParseState;

    .line 355
    iget-object p2, p1, Landroid/icu/impl/number/Parse$StateItem;->currentDigitTrieState:Landroid/icu/impl/TextTrieMap$ParseState;

    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->currentDigitTrieState:Landroid/icu/impl/TextTrieMap$ParseState;

    .line 356
    iget-object p2, p1, Landroid/icu/impl/number/Parse$StateItem;->currentDigitType:Landroid/icu/impl/number/Parse$DigitType;

    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->currentDigitType:Landroid/icu/impl/number/Parse$DigitType;

    .line 359
    sget-boolean p2, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz p2, :cond_1

    .line 360
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p1, Landroid/icu/impl/number/Parse$StateItem;->path:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p1, Landroid/icu/impl/number/Parse$StateItem;->id:C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/number/Parse$StateItem;->path:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public hasNumber()Z
    .locals 1

    .line 397
    iget v0, p0, Landroid/icu/impl/number/Parse$StateItem;->numDigits:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNaN:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawInfinity:Z

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

.method public toCurrencyAmount(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/util/CurrencyAmount;
    .locals 1

    .line 478
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/Parse$StateItem;->toNumber(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/lang/Number;

    move-result-object p1

    .line 479
    iget-object p0, p0, Landroid/icu/impl/number/Parse$StateItem;->isoCode:Ljava/lang/String;

    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object p0

    .line 480
    new-instance v0, Landroid/icu/util/CurrencyAmount;

    invoke-direct {v0, p1, p0}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    return-object v0
.end method

.method toNumber(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/lang/Number;
    .locals 9

    .line 408
    iget-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNaN:Z

    if-eqz v0, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    .line 409
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 411
    :cond_0
    iget-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawInfinity:Z

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v0, :cond_2

    .line 412
    iget-boolean p0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegative:Z

    if-eqz p0, :cond_1

    .line 413
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 415
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 418
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/number/Parse$StateItem;->fq:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->isZero()Z

    move-result v0

    const-wide/high16 v5, -0x8000000000000000L

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegative:Z

    if-eqz v0, :cond_3

    .line 419
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 423
    :cond_3
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseToBigDecimal()Z

    move-result v0

    .line 424
    iget v7, p0, Landroid/icu/impl/number/Parse$StateItem;->exponent:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_7

    .line 425
    iget-boolean p1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegative:Z

    if-eqz p1, :cond_4

    .line 426
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 427
    :cond_4
    iget-boolean p1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    if-eqz p1, :cond_5

    const-wide/16 p0, 0x0

    .line 428
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 429
    :cond_5
    iget-boolean p0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegative:Z

    if-eqz p0, :cond_6

    .line 430
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 432
    :cond_6
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-le v7, v1, :cond_8

    move v0, v2

    .line 440
    :cond_8
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v1

    .line 441
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getMagnitudeMultiplier()I

    move-result v3

    if-eqz v3, :cond_a

    if-nez v1, :cond_9

    .line 442
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 443
    :cond_9
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->getMagnitudeMultiplier()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v1

    .line 445
    :cond_a
    iget-boolean v3, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    if-eqz v3, :cond_b

    const/4 v2, -0x1

    :cond_b
    iget v3, p0, Landroid/icu/impl/number/Parse$StateItem;->exponent:I

    mul-int/2addr v2, v3

    .line 449
    invoke-static {p1}, Landroid/icu/impl/number/RoundingUtils;->getMathContextOr34Digits(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/math/MathContext;

    move-result-object p1

    .line 453
    iget-object v3, p0, Landroid/icu/impl/number/Parse$StateItem;->fq:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v3}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v3

    .line 454
    iget-boolean p0, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegative:Z

    if-eqz p0, :cond_c

    invoke-virtual {v3}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v3

    .line 455
    :cond_c
    invoke-virtual {v3, v2}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object p0

    if-eqz v1, :cond_d

    .line 457
    invoke-virtual {p0, v1, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 459
    :cond_d
    invoke-virtual {p0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p0

    if-nez v0, :cond_10

    .line 460
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    if-lez p1, :cond_e

    goto :goto_0

    .line 462
    :cond_e
    invoke-static {}, Landroid/icu/impl/number/Parse;->access$500()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ltz p1, :cond_f

    .line 463
    invoke-static {}, Landroid/icu/impl/number/Parse;->access$600()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-gtz p1, :cond_f

    .line 464
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 466
    :cond_f
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object p0

    :cond_10
    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    iget-object v1, p0, Landroid/icu/impl/number/Parse$StateItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-object v1, p0, Landroid/icu/impl/number/Parse$StateItem;->name:Landroid/icu/impl/number/Parse$StateName;

    invoke-virtual {v1}, Landroid/icu/impl/number/Parse$StateName;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v1, p0, Landroid/icu/impl/number/Parse$StateItem;->name:Landroid/icu/impl/number/Parse$StateName;

    sget-object v2, Landroid/icu/impl/number/Parse$StateName;->INSIDE_STRING:Landroid/icu/impl/number/Parse$StateName;

    const-string/jumbo v3, "}"

    const-string v4, ":"

    const-string/jumbo v5, "{"

    if-ne v1, v2, :cond_0

    .line 491
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v1, p0, Landroid/icu/impl/number/Parse$StateItem;->currentString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget v1, p0, Landroid/icu/impl/number/Parse$StateItem;->currentOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/number/Parse$StateItem;->name:Landroid/icu/impl/number/Parse$StateName;

    sget-object v2, Landroid/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Landroid/icu/impl/number/Parse$StateName;

    const/4 v6, 0x1

    if-ne v1, v2, :cond_1

    .line 498
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v1, p0, Landroid/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-wide v1, p0, Landroid/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getOffset(J)I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " "

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    iget-object v1, p0, Landroid/icu/impl/number/Parse$StateItem;->fq:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " grouping:"

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget v1, p0, Landroid/icu/impl/number/Parse$StateItem;->groupingCp:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    new-array v1, v6, [C

    const/4 v2, 0x0

    const/16 v3, 0x3f

    aput-char v3, v1, v2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string v1, " widths:"

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-wide v1, p0, Landroid/icu/impl/number/Parse$StateItem;->groupingWidths:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " seen:"

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-boolean v1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegative:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    iget-boolean v1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    iget-boolean v1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNaN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    iget-boolean v1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawInfinity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    iget-boolean v1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    iget-boolean v1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    iget-boolean v1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trailing:"

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget v1, p0, Landroid/icu/impl/number/Parse$StateItem;->trailingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " score:"

    .line 520
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget v1, p0, Landroid/icu/impl/number/Parse$StateItem;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " affix:"

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v1, p0, Landroid/icu/impl/number/Parse$StateItem;->affix:Landroid/icu/impl/number/Parse$AffixHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " currency:"

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget-object p0, p0, Landroid/icu/impl/number/Parse$StateItem;->isoCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
