.class public abstract Landroid/icu/number/NumberFormatterSettings;
.super Ljava/lang/Object;
.source "NumberFormatterSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/icu/number/NumberFormatterSettings<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final KEY_DECIMAL:I = 0xb

.field static final KEY_GROUPER:I = 0x5

.field static final KEY_INTEGER:I = 0x7

.field static final KEY_LOCALE:I = 0x1

.field static final KEY_MACROS:I = 0x0

.field static final KEY_MAX:I = 0xd

.field static final KEY_NOTATION:I = 0x2

.field static final KEY_PADDER:I = 0x6

.field static final KEY_ROUNDER:I = 0x4

.field static final KEY_SIGN:I = 0xa

.field static final KEY_SYMBOLS:I = 0x8

.field static final KEY_THRESHOLD:I = 0xc

.field static final KEY_UNIT:I = 0x3

.field static final KEY_UNIT_WIDTH:I = 0x9


# instance fields
.field final key:I

.field final parent:Landroid/icu/number/NumberFormatterSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/number/NumberFormatterSettings<",
            "*>;"
        }
    .end annotation
.end field

.field volatile resolvedMacros:Landroid/icu/impl/number/MacroProps;

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/icu/number/NumberFormatterSettings;->parent:Landroid/icu/number/NumberFormatterSettings;

    .line 52
    iput p2, p0, Landroid/icu/number/NumberFormatterSettings;->key:I

    .line 53
    iput-object p3, p0, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public decimal(Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;)Landroid/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0xb

    .line 399
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 545
    :cond_1
    instance-of v1, p1, Landroid/icu/number/NumberFormatterSettings;

    if-nez v1, :cond_2

    return v0

    .line 548
    :cond_2
    invoke-virtual {p0}, Landroid/icu/number/NumberFormatterSettings;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object p0

    check-cast p1, Landroid/icu/number/NumberFormatterSettings;

    invoke-virtual {p1}, Landroid/icu/number/NumberFormatterSettings;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/number/MacroProps;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public grouping(Landroid/icu/number/Grouper;)Landroid/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/Grouper;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x5

    .line 205
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 529
    invoke-virtual {p0}, Landroid/icu/number/NumberFormatterSettings;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/impl/number/MacroProps;->hashCode()I

    move-result p0

    return p0
.end method

.method public integerWidth(Landroid/icu/number/IntegerWidth;)Landroid/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/IntegerWidth;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x7

    .line 233
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    return-object p0
.end method

.method public macros(Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/number/MacroProps;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    return-object p0
.end method

.method public notation(Landroid/icu/number/Notation;)Landroid/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/Notation;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 85
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    return-object p0
.end method

.method public padding(Landroid/icu/impl/number/Padder;)Landroid/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/number/Padder;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x6

    .line 421
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    return-object p0
.end method

.method resolve()Landroid/icu/impl/number/MacroProps;
    .locals 3

    .line 439
    iget-object v0, p0, Landroid/icu/number/NumberFormatterSettings;->resolvedMacros:Landroid/icu/impl/number/MacroProps;

    if-eqz v0, :cond_0

    .line 440
    iget-object p0, p0, Landroid/icu/number/NumberFormatterSettings;->resolvedMacros:Landroid/icu/impl/number/MacroProps;

    return-object p0

    .line 446
    :cond_0
    new-instance v0, Landroid/icu/impl/number/MacroProps;

    invoke-direct {v0}, Landroid/icu/impl/number/MacroProps;-><init>()V

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    .line 449
    iget v2, v1, Landroid/icu/number/NumberFormatterSettings;->key:I

    packed-switch v2, :pswitch_data_0

    .line 514
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/icu/number/NumberFormatterSettings;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 509
    :pswitch_0
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->threshold:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 510
    iget-object v2, v1, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    iput-object v2, v0, Landroid/icu/impl/number/MacroProps;->threshold:Ljava/lang/Long;

    goto/16 :goto_1

    .line 504
    :pswitch_1
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-nez v2, :cond_1

    .line 505
    iget-object v2, v1, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v2, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iput-object v2, v0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    goto/16 :goto_1

    .line 499
    :pswitch_2
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-nez v2, :cond_1

    .line 500
    iget-object v2, v1, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v2, Landroid/icu/number/NumberFormatter$SignDisplay;

    iput-object v2, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    goto/16 :goto_1

    .line 494
    :pswitch_3
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-nez v2, :cond_1

    .line 495
    iget-object v2, v1, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v2, Landroid/icu/number/NumberFormatter$UnitWidth;

    iput-object v2, v0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    goto :goto_1

    .line 489
    :pswitch_4
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 490
    iget-object v2, v1, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    iput-object v2, v0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    goto :goto_1

    .line 484
    :pswitch_5
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    if-nez v2, :cond_1

    .line 485
    iget-object v2, v1, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v2, Landroid/icu/number/IntegerWidth;

    iput-object v2, v0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    goto :goto_1

    .line 479
    :pswitch_6
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    if-nez v2, :cond_1

    .line 480
    iget-object v2, v1, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v2, Landroid/icu/impl/number/Padder;

    iput-object v2, v0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    goto :goto_1

    .line 474
    :pswitch_7
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->grouper:Landroid/icu/number/Grouper;

    if-nez v2, :cond_1

    .line 475
    iget-object v2, v1, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v2, Landroid/icu/number/Grouper;

    iput-object v2, v0, Landroid/icu/impl/number/MacroProps;->grouper:Landroid/icu/number/Grouper;

    goto :goto_1

    .line 469
    :pswitch_8
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    if-nez v2, :cond_1

    .line 470
    iget-object v2, v1, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v2, Landroid/icu/number/Rounder;

    iput-object v2, v0, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    goto :goto_1

    .line 464
    :pswitch_9
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    if-nez v2, :cond_1

    .line 465
    iget-object v2, v1, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v2, Landroid/icu/util/MeasureUnit;

    iput-object v2, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    goto :goto_1

    .line 459
    :pswitch_a
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    if-nez v2, :cond_1

    .line 460
    iget-object v2, v1, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v2, Landroid/icu/number/Notation;

    iput-object v2, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    goto :goto_1

    .line 454
    :pswitch_b
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    if-nez v2, :cond_1

    .line 455
    iget-object v2, v1, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v2, Landroid/icu/util/ULocale;

    iput-object v2, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    goto :goto_1

    .line 451
    :pswitch_c
    iget-object v2, v1, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v2, Landroid/icu/impl/number/MacroProps;

    invoke-virtual {v0, v2}, Landroid/icu/impl/number/MacroProps;->fallback(Landroid/icu/impl/number/MacroProps;)V

    .line 516
    :cond_1
    :goto_1
    iget-object v1, v1, Landroid/icu/number/NumberFormatterSettings;->parent:Landroid/icu/number/NumberFormatterSettings;

    goto/16 :goto_0

    .line 518
    :cond_2
    iput-object v0, p0, Landroid/icu/number/NumberFormatterSettings;->resolvedMacros:Landroid/icu/impl/number/MacroProps;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public rounding(Landroid/icu/number/Rounder;)Landroid/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/Rounder;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 171
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    return-object p0
.end method

.method public sign(Landroid/icu/number/NumberFormatter$SignDisplay;)Landroid/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberFormatter$SignDisplay;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 370
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    return-object p0
.end method

.method public symbols(Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DecimalFormatSymbols;",
            ")TT;"
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/DecimalFormatSymbols;

    const/16 v0, 0x8

    .line 278
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    return-object p0
.end method

.method public symbols(Landroid/icu/text/NumberingSystem;)Landroid/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/NumberingSystem;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 312
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    return-object p0
.end method

.method public threshold(Ljava/lang/Long;)Landroid/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    .line 433
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    return-object p0
.end method

.method public unit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/MeasureUnit;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 137
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    return-object p0
.end method

.method public unitWidth(Landroid/icu/number/NumberFormatter$UnitWidth;)Landroid/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberFormatter$UnitWidth;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x9

    .line 341
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    return-object p0
.end method
