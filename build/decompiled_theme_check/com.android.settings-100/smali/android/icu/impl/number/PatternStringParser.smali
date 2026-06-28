.class public Landroid/icu/impl/number/PatternStringParser;
.super Ljava/lang/Object;
.source "PatternStringParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/PatternStringParser$ParserState;,
        Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;,
        Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final IGNORE_ROUNDING_ALWAYS:I = 0x2

.field public static final IGNORE_ROUNDING_IF_CURRENCY:I = 0x1

.field public static final IGNORE_ROUNDING_NEVER:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static consumeAffix(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)J
    .locals 5

    .line 283
    iget v0, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    int-to-long v0, v0

    .line 285
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x23

    if-eq v2, v3, :cond_3

    const/16 v3, 0x25

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_3

    const/16 v3, 0x40

    if-eq v2, v3, :cond_3

    const/16 v3, 0xa4

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2030

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 319
    :pswitch_0
    iput-boolean v4, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasMinusSign:Z

    goto :goto_1

    .line 323
    :pswitch_1
    iput-boolean v4, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPlusSign:Z

    goto :goto_1

    .line 311
    :cond_0
    iput-boolean v4, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPerMilleSign:Z

    goto :goto_1

    .line 315
    :cond_1
    iput-boolean v4, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    goto :goto_1

    .line 307
    :cond_2
    iput-boolean v4, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPercentSign:Z

    .line 326
    :goto_1
    invoke-static {p0}, Landroid/icu/impl/number/PatternStringParser;->consumeLiteral(Landroid/icu/impl/number/PatternStringParser$ParserState;)V

    goto :goto_0

    .line 328
    :cond_3
    :pswitch_2
    iget p0, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static consumeExponent(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .locals 4

    .line 485
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x45

    if-eq v0, v1, :cond_0

    return-void

    .line 488
    :cond_0
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const-wide v2, 0xffff0000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 491
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 492
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 493
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_1

    .line 494
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 495
    iput-boolean v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentHasPlusSign:Z

    .line 496
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 498
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_2

    .line 499
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 500
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    .line 501
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string p1, "Cannot have grouping separator in scientific notation"

    .line 489
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static consumeFormat(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .locals 2

    .line 352
    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeIntegerFormat(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 353
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 354
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasDecimal:Z

    .line 356
    iget v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 357
    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeFractionFormat(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    :cond_0
    return-void
.end method

.method private static consumeFractionFormat(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 442
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_3

    packed-switch v2, :pswitch_data_0

    return-void

    .line 460
    :pswitch_0
    iget v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionHashSigns:I

    if-gtz v2, :cond_2

    .line 463
    iget v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 464
    iget v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    .line 465
    iget v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    .line 466
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 469
    :cond_0
    iget-object v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-nez v2, :cond_1

    .line 470
    new-instance v2, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>()V

    iput-object v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 472
    :cond_1
    iget-object v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-byte v3, v4

    invoke-virtual {v2, v3, v1, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->appendDigit(BIZ)V

    move v1, v0

    goto :goto_2

    :cond_2
    const-string p1, "0 cannot follow # after decimal point"

    .line 461
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 444
    :cond_3
    iget v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 445
    iget v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionHashSigns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionHashSigns:I

    .line 446
    iget v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 480
    :goto_2
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static consumeIntegerFormat(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .locals 8

    .line 363
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x23

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-eq v0, v1, :cond_a

    const/16 v1, 0x2c

    const/16 v5, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x40

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    .line 428
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    .line 429
    iget-wide v6, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    ushr-long v4, v6, v5

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-short v1, v1

    .line 430
    iget-wide v4, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 p1, 0x20

    ushr-long/2addr v4, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    int-to-short p1, p1

    const/4 v2, -0x1

    if-nez v0, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "Trailing grouping separator is invalid"

    .line 432
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    if-nez v1, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "Grouping width of zero is invalid"

    .line 435
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_2
    return-void

    .line 406
    :pswitch_0
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    if-gtz v0, :cond_5

    .line 409
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 410
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    .line 411
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    .line 412
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    .line 413
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-nez v0, :cond_4

    .line 414
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>()V

    iput-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 416
    :cond_4
    iget-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-eqz v0, :cond_c

    .line 417
    iget-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->appendDigit(BIZ)V

    goto :goto_4

    :cond_5
    const-string p1, "Cannot mix @ and 0"

    .line 407
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 384
    :cond_6
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    if-gtz v0, :cond_8

    .line 387
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    if-gtz v0, :cond_7

    .line 390
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 391
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    .line 392
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    .line 393
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    goto :goto_4

    :cond_7
    const-string p1, "Cannot nest # inside of a run of @"

    .line 388
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_8
    const-string p1, "Cannot mix 0 and @"

    .line 385
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 365
    :cond_9
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 366
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    shl-long/2addr v0, v5

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    goto :goto_4

    .line 370
    :cond_a
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    if-gtz v0, :cond_d

    .line 373
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 374
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    .line 375
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    if-lez v0, :cond_b

    .line 376
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    goto :goto_3

    .line 378
    :cond_b
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerLeadingHashSigns:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerLeadingHashSigns:I

    .line 380
    :goto_3
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    .line 424
    :cond_c
    :goto_4
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    goto/16 :goto_0

    :cond_d
    const-string p1, "# cannot follow 0 before decimal point"

    .line 371
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static consumeLiteral(Landroid/icu/impl/number/PatternStringParser$ParserState;)V
    .locals 3

    .line 333
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 335
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    .line 336
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 337
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 338
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 341
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    goto :goto_0

    :cond_0
    const-string v0, "Expected quoted literal but found EOL"

    .line 339
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 344
    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    goto :goto_1

    .line 347
    :cond_2
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    :goto_1
    return-void

    :cond_3
    const-string v0, "Expected unquoted literal but found EOL"

    .line 334
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static consumePadding(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Landroid/icu/impl/number/Padder$PadPosition;)V
    .locals 4

    .line 268
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Landroid/icu/impl/number/Padder$PadPosition;

    if-nez v0, :cond_1

    .line 274
    iput-object p2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Landroid/icu/impl/number/Padder$PadPosition;

    .line 275
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 276
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    iget p2, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    int-to-long v2, p2

    or-long/2addr v0, v2

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    .line 277
    invoke-static {p0}, Landroid/icu/impl/number/PatternStringParser;->consumeLiteral(Landroid/icu/impl/number/PatternStringParser$ParserState;)V

    .line 278
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    iget p0, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    int-to-long v2, p0

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    return-void

    :cond_1
    const-string p1, "Cannot have multiple pad specifiers"

    .line 272
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static consumePattern(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;)V
    .locals 3

    .line 240
    new-instance v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    invoke-direct {v0}, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;-><init>()V

    iput-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    .line 241
    iget-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    invoke-static {p0, v0}, Landroid/icu/impl/number/PatternStringParser;->consumeSubpattern(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 242
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_0

    .line 243
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 245
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 246
    new-instance v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    invoke-direct {v0}, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;-><init>()V

    iput-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    .line 247
    iget-object p1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeSubpattern(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 250
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    const-string p1, "Found unquoted special character"

    .line 251
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static consumeSubpattern(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .locals 2

    .line 257
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-static {p0, p1, v0}, Landroid/icu/impl/number/PatternStringParser;->consumePadding(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Landroid/icu/impl/number/Padder$PadPosition;)V

    .line 258
    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeAffix(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->prefixEndpoints:J

    .line 259
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-static {p0, p1, v0}, Landroid/icu/impl/number/PatternStringParser;->consumePadding(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Landroid/icu/impl/number/Padder$PadPosition;)V

    .line 260
    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeFormat(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 261
    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeExponent(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 262
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-static {p0, p1, v0}, Landroid/icu/impl/number/PatternStringParser;->consumePadding(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Landroid/icu/impl/number/Padder$PadPosition;)V

    .line 263
    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeAffix(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->suffixEndpoints:J

    .line 264
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-static {p0, p1, v0}, Landroid/icu/impl/number/PatternStringParser;->consumePadding(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Landroid/icu/impl/number/Padder$PadPosition;)V

    return-void
.end method

.method public static parseToExistingProperties(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-static {p0, p1, v0}, Landroid/icu/impl/number/PatternStringParser;->parseToExistingProperties(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;I)V

    return-void
.end method

.method public static parseToExistingProperties(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;I)V
    .locals 0

    .line 75
    invoke-static {p0, p1, p2}, Landroid/icu/impl/number/PatternStringParser;->parseToExistingPropertiesImpl(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;I)V

    return-void
.end method

.method private static parseToExistingPropertiesImpl(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;I)V
    .locals 1

    if-eqz p0, :cond_1

    .line 510
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    invoke-static {p0}, Landroid/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object p0

    .line 519
    invoke-static {p1, p0, p2}, Landroid/icu/impl/number/PatternStringParser;->patternInfoToProperties(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;I)V

    return-void

    .line 513
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->clear()Landroid/icu/impl/number/DecimalFormatProperties;

    return-void
.end method

.method public static parseToPatternInfo(Ljava/lang/String;)Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    .locals 3

    .line 28
    new-instance v0, Landroid/icu/impl/number/PatternStringParser$ParserState;

    invoke-direct {v0, p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;-><init>(Ljava/lang/String;Landroid/icu/impl/number/PatternStringParser$1;)V

    .line 30
    invoke-static {v0, v1}, Landroid/icu/impl/number/PatternStringParser;->consumePattern(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;)V

    return-object v1
.end method

.method public static parseToProperties(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0}, Landroid/icu/impl/number/PatternStringParser;->parseToProperties(Ljava/lang/String;I)Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object p0

    return-object p0
.end method

.method public static parseToProperties(Ljava/lang/String;I)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 1

    .line 50
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    .line 51
    invoke-static {p0, v0, p1}, Landroid/icu/impl/number/PatternStringParser;->parseToExistingPropertiesImpl(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;I)V

    return-object v0
.end method

.method private static patternInfoToProperties(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;I)V
    .locals 11

    .line 528
    iget-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    .line 534
    iget-boolean p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    goto :goto_0

    :cond_1
    move p2, v2

    .line 541
    :goto_0
    iget-wide v3, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-short v3, v3

    .line 542
    iget-wide v7, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 v4, 0x10

    ushr-long/2addr v7, v4

    and-long/2addr v7, v5

    long-to-int v4, v7

    int-to-short v4, v4

    .line 543
    iget-wide v7, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-short v5, v5

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 545
    invoke-virtual {p0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_1

    .line 547
    :cond_2
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    :goto_1
    if-eq v5, v6, :cond_3

    .line 550
    invoke-virtual {p0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setSecondaryGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_2

    .line 552
    :cond_3
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setSecondaryGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 557
    :goto_2
    iget v3, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    if-nez v3, :cond_4

    iget v3, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    if-lez v3, :cond_4

    .line 560
    iget v3, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v1

    goto :goto_3

    .line 561
    :cond_4
    iget v3, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    if-nez v3, :cond_5

    iget v3, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    if-nez v3, :cond_5

    move v3, v1

    move v4, v2

    goto :goto_3

    .line 566
    :cond_5
    iget v3, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    .line 567
    iget v4, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    move v10, v4

    move v4, v3

    move v3, v10

    .line 572
    :goto_3
    iget v5, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    const/4 v7, 0x0

    if-lez v5, :cond_6

    .line 573
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 574
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 575
    invoke-virtual {p0, v7}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 576
    iget p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    invoke-virtual {p0, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 577
    iget p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    iget v3, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    add-int/2addr p2, v3

    invoke-virtual {p0, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_6

    .line 578
    :cond_6
    iget-object v5, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-eqz v5, :cond_8

    if-nez p2, :cond_7

    .line 580
    invoke-virtual {p0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 581
    iget p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    invoke-virtual {p0, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 582
    iget-object p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p2

    iget v3, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    invoke-virtual {p2, v3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_4

    .line 584
    :cond_7
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 585
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 586
    invoke-virtual {p0, v7}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 588
    :goto_4
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 589
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_6

    :cond_8
    if-nez p2, :cond_9

    .line 592
    invoke-virtual {p0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 593
    iget p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    invoke-virtual {p0, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 594
    invoke-virtual {p0, v7}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_5

    .line 596
    :cond_9
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 597
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 598
    invoke-virtual {p0, v7}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 600
    :goto_5
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 601
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 605
    :goto_6
    iget-boolean p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasDecimal:Z

    if-eqz p2, :cond_a

    iget p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    if-nez p2, :cond_a

    .line 606
    invoke-virtual {p0, v2}, Landroid/icu/impl/number/DecimalFormatProperties;->setDecimalSeparatorAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_7

    .line 608
    :cond_a
    invoke-virtual {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setDecimalSeparatorAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 612
    :goto_7
    iget p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    if-lez p2, :cond_c

    .line 613
    iget-boolean p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentHasPlusSign:Z

    invoke-virtual {p0, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setExponentSignAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 614
    iget p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    invoke-virtual {p0, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 615
    iget p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    if-nez p2, :cond_b

    .line 617
    iget p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    invoke-virtual {p0, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 618
    iget p2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    invoke-virtual {p0, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_8

    .line 621
    :cond_b
    invoke-virtual {p0, v2}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 622
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_8

    .line 625
    :cond_c
    invoke-virtual {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setExponentSignAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 626
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 627
    invoke-virtual {p0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 628
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    :goto_8
    const/16 p2, 0x100

    .line 632
    invoke-virtual {p1, p2}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 633
    invoke-virtual {p1, v1}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 636
    iget-object v4, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Landroid/icu/impl/number/Padder$PadPosition;

    const/4 v5, 0x2

    if-eqz v4, :cond_10

    .line 638
    iget v4, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    invoke-static {p2}, Landroid/icu/impl/number/AffixUtils;->estimateLength(Ljava/lang/CharSequence;)I

    move-result v6

    add-int/2addr v4, v6

    .line 639
    invoke-static {v3}, Landroid/icu/impl/number/AffixUtils;->estimateLength(Ljava/lang/CharSequence;)I

    move-result v6

    add-int/2addr v4, v6

    .line 640
    invoke-virtual {p0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setFormatWidth(I)Landroid/icu/impl/number/DecimalFormatProperties;

    const/16 v4, 0x400

    .line 641
    invoke-virtual {p1, v4}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 642
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v2, :cond_d

    .line 643
    invoke-virtual {p0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_9

    .line 644
    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_f

    .line 645
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x27

    if-ne v2, v6, :cond_e

    const-string v2, "\'"

    .line 646
    invoke-virtual {p0, v2}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_9

    .line 648
    :cond_e
    invoke-virtual {p0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_9

    .line 651
    :cond_f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 654
    :goto_9
    iget-object v2, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-virtual {p0, v2}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadPosition(Landroid/icu/impl/number/Padder$PadPosition;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_a

    .line 656
    :cond_10
    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setFormatWidth(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 657
    invoke-virtual {p0, v7}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 658
    invoke-virtual {p0, v7}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadPosition(Landroid/icu/impl/number/Padder$PadPosition;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 664
    :goto_a
    invoke-virtual {p0, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositivePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 665
    invoke-virtual {p0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositiveSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 666
    iget-object p2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    if-eqz p2, :cond_11

    const/16 p2, 0x300

    .line 668
    invoke-virtual {p1, p2}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 667
    invoke-virtual {p0, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    const/16 p2, 0x200

    .line 669
    invoke-virtual {p1, p2}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativeSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_b

    .line 671
    :cond_11
    invoke-virtual {p0, v7}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 672
    invoke-virtual {p0, v7}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativeSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 676
    :goto_b
    iget-boolean p1, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPercentSign:Z

    if-eqz p1, :cond_12

    .line 677
    invoke-virtual {p0, v5}, Landroid/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_c

    .line 678
    :cond_12
    iget-boolean p1, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPerMilleSign:Z

    if-eqz p1, :cond_13

    const/4 p1, 0x3

    .line 679
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_c

    .line 681
    :cond_13
    invoke-virtual {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Landroid/icu/impl/number/DecimalFormatProperties;

    :goto_c
    return-void
.end method
