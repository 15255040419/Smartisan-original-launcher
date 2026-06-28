.class public Landroid/icu/impl/number/MutablePatternModifier;
.super Ljava/lang/Object;
.source "MutablePatternModifier.java"

# interfaces
.implements Landroid/icu/impl/number/Modifier;
.implements Landroid/icu/impl/number/AffixUtils$SymbolProvider;
.implements Ljava/lang/CharSequence;
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field currency:Landroid/icu/util/Currency;

.field flags:I

.field inCharSequenceMode:Z

.field isNegative:Z

.field final isStrong:Z

.field length:I

.field parent:Landroid/icu/impl/number/MicroPropsGenerator;

.field patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

.field perMilleReplacesPercent:Z

.field plural:Landroid/icu/impl/StandardPlural;

.field plusReplacesMinusSign:Z

.field prependSign:Z

.field rules:Landroid/icu/text/PluralRules;

.field signDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

.field symbols:Landroid/icu/text/DecimalFormatSymbols;

.field unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->isStrong:Z

    return-void
.end method

.method private createConstantModifier(Landroid/icu/impl/number/NumberStringBuilder;Landroid/icu/impl/number/NumberStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;
    .locals 2

    .line 200
    invoke-virtual {p1}, Landroid/icu/impl/number/NumberStringBuilder;->clear()Landroid/icu/impl/number/NumberStringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->insertPrefix(Landroid/icu/impl/number/NumberStringBuilder;I)I

    .line 201
    invoke-virtual {p2}, Landroid/icu/impl/number/NumberStringBuilder;->clear()Landroid/icu/impl/number/NumberStringBuilder;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->insertSuffix(Landroid/icu/impl/number/NumberStringBuilder;I)I

    .line 202
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    invoke-interface {v0}, Landroid/icu/impl/number/AffixPatternProvider;->hasCurrencySign()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;

    iget-boolean v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->isStrong:Z

    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p1, p2, v1, p0}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;-><init>(Landroid/icu/impl/number/NumberStringBuilder;Landroid/icu/impl/number/NumberStringBuilder;ZLandroid/icu/text/DecimalFormatSymbols;)V

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Landroid/icu/impl/number/ConstantMultiFieldModifier;

    iget-boolean p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->isStrong:Z

    invoke-direct {v0, p1, p2, p0}, Landroid/icu/impl/number/ConstantMultiFieldModifier;-><init>(Landroid/icu/impl/number/NumberStringBuilder;Landroid/icu/impl/number/NumberStringBuilder;Z)V

    return-object v0
.end method

.method private enterCharSequenceMode(Z)V
    .locals 5

    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->inCharSequenceMode:Z

    .line 358
    iget-boolean v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->isNegative:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->signDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v3, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->signDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v3, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-ne v1, v3, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    .line 360
    invoke-interface {v1}, Landroid/icu/impl/number/AffixPatternProvider;->positiveHasPlusSign()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->plusReplacesMinusSign:Z

    .line 363
    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    invoke-interface {v1}, Landroid/icu/impl/number/AffixPatternProvider;->hasNegativeSubpattern()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->isNegative:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    .line 364
    invoke-interface {v1}, Landroid/icu/impl/number/AffixPatternProvider;->negativeHasMinusSign()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->plusReplacesMinusSign:Z

    if-eqz v1, :cond_3

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 367
    :goto_1
    iput v2, p0, Landroid/icu/impl/number/MutablePatternModifier;->flags:I

    if-eqz v1, :cond_4

    .line 369
    iget v3, p0, Landroid/icu/impl/number/MutablePatternModifier;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Landroid/icu/impl/number/MutablePatternModifier;->flags:I

    :cond_4
    if-eqz p1, :cond_5

    .line 372
    iget v3, p0, Landroid/icu/impl/number/MutablePatternModifier;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Landroid/icu/impl/number/MutablePatternModifier;->flags:I

    .line 374
    :cond_5
    iget-object v3, p0, Landroid/icu/impl/number/MutablePatternModifier;->plural:Landroid/icu/impl/StandardPlural;

    if-eqz v3, :cond_6

    .line 376
    iget v4, p0, Landroid/icu/impl/number/MutablePatternModifier;->flags:I

    invoke-virtual {v3}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v3

    or-int/2addr v3, v4

    iput v3, p0, Landroid/icu/impl/number/MutablePatternModifier;->flags:I

    :cond_6
    if-eqz p1, :cond_a

    if-eqz v1, :cond_7

    goto :goto_3

    .line 382
    :cond_7
    iget-boolean p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->isNegative:Z

    if-eqz p1, :cond_9

    .line 383
    iget-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->signDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v1, Landroid/icu/number/NumberFormatter$SignDisplay;->NEVER:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-eq p1, v1, :cond_8

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->prependSign:Z

    goto :goto_4

    .line 385
    :cond_9
    iget-boolean p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->plusReplacesMinusSign:Z

    iput-boolean p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->prependSign:Z

    goto :goto_4

    .line 381
    :cond_a
    :goto_3
    iput-boolean v2, p0, Landroid/icu/impl/number/MutablePatternModifier;->prependSign:Z

    .line 389
    :goto_4
    iget-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    iget v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->flags:I

    invoke-interface {p1, v0}, Landroid/icu/impl/number/AffixPatternProvider;->length(I)I

    move-result p1

    iget-boolean v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->prependSign:Z

    add-int/2addr p1, v0

    iput p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->length:I

    return-void
.end method

.method private exitCharSequenceMode()V
    .locals 1

    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->inCharSequenceMode:Z

    return-void
.end method

.method private insertPrefix(Landroid/icu/impl/number/NumberStringBuilder;I)I
    .locals 1

    const/4 v0, 0x1

    .line 297
    invoke-direct {p0, v0}, Landroid/icu/impl/number/MutablePatternModifier;->enterCharSequenceMode(Z)V

    .line 298
    invoke-static {p0, p1, p2, p0}, Landroid/icu/impl/number/AffixUtils;->unescape(Ljava/lang/CharSequence;Landroid/icu/impl/number/NumberStringBuilder;ILandroid/icu/impl/number/AffixUtils$SymbolProvider;)I

    move-result p1

    .line 299
    invoke-direct {p0}, Landroid/icu/impl/number/MutablePatternModifier;->exitCharSequenceMode()V

    return p1
.end method

.method private insertSuffix(Landroid/icu/impl/number/NumberStringBuilder;I)I
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-direct {p0, v0}, Landroid/icu/impl/number/MutablePatternModifier;->enterCharSequenceMode(Z)V

    .line 305
    invoke-static {p0, p1, p2, p0}, Landroid/icu/impl/number/AffixUtils;->unescape(Ljava/lang/CharSequence;Landroid/icu/impl/number/NumberStringBuilder;ILandroid/icu/impl/number/AffixUtils$SymbolProvider;)I

    move-result p1

    .line 306
    invoke-direct {p0}, Landroid/icu/impl/number/MutablePatternModifier;->exitCharSequenceMode()V

    return p1
.end method


# virtual methods
.method public addToChain(Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;
    .locals 0

    .line 242
    iput-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    return-object p0
.end method

.method public apply(Landroid/icu/impl/number/NumberStringBuilder;II)I
    .locals 7

    .line 263
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/number/MutablePatternModifier;->insertPrefix(Landroid/icu/impl/number/NumberStringBuilder;I)I

    move-result v6

    add-int v3, p3, v6

    .line 264
    invoke-direct {p0, p1, v3}, Landroid/icu/impl/number/MutablePatternModifier;->insertSuffix(Landroid/icu/impl/number/NumberStringBuilder;I)I

    move-result p3

    .line 265
    iget-object v5, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object v0, p1

    move v1, p2

    move v2, v6

    move v4, p3

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->applyCurrencySpacing(Landroid/icu/impl/number/NumberStringBuilder;IIIILandroid/icu/text/DecimalFormatSymbols;)I

    add-int/2addr v6, p3

    return v6
.end method

.method public charAt(I)C
    .locals 3

    .line 407
    iget-boolean v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->prependSign:Z

    const/16 v1, 0x2d

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    .line 409
    :cond_0
    iget-boolean v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->prependSign:Z

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    iget v2, p0, Landroid/icu/impl/number/MutablePatternModifier;->flags:I

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, v2, p1}, Landroid/icu/impl/number/AffixPatternProvider;->charAt(II)C

    move-result p1

    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    iget v2, p0, Landroid/icu/impl/number/MutablePatternModifier;->flags:I

    invoke-interface {v0, v2, p1}, Landroid/icu/impl/number/AffixPatternProvider;->charAt(II)C

    move-result p1

    .line 414
    :goto_0
    iget-boolean v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->plusReplacesMinusSign:Z

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_2

    const/16 p0, 0x2b

    return p0

    .line 417
    :cond_2
    iget-boolean p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->perMilleReplacesPercent:Z

    if-eqz p0, :cond_3

    const/16 p0, 0x25

    if-ne p1, p0, :cond_3

    const/16 p0, 0x2030

    return p0

    :cond_3
    return p1
.end method

.method public createImmutable()Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/MutablePatternModifier;->createImmutableAndChain(Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    move-result-object p0

    return-object p0
.end method

.method public createImmutableAndChain(Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .locals 8

    .line 164
    new-instance v0, Landroid/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0}, Landroid/icu/impl/number/NumberStringBuilder;-><init>()V

    .line 165
    new-instance v1, Landroid/icu/impl/number/NumberStringBuilder;

    invoke-direct {v1}, Landroid/icu/impl/number/NumberStringBuilder;-><init>()V

    .line 166
    invoke-virtual {p0}, Landroid/icu/impl/number/MutablePatternModifier;->needsPlurals()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 168
    new-instance v2, Landroid/icu/impl/number/ParameterizedModifier;

    invoke-direct {v2}, Landroid/icu/impl/number/ParameterizedModifier;-><init>()V

    .line 169
    sget-object v5, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/impl/StandardPlural;

    .line 170
    invoke-virtual {p0, v4, v6}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(ZLandroid/icu/impl/StandardPlural;)V

    .line 171
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->createConstantModifier(Landroid/icu/impl/number/NumberStringBuilder;Landroid/icu/impl/number/NumberStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v7

    invoke-virtual {v2, v4, v6, v7}, Landroid/icu/impl/number/ParameterizedModifier;->setModifier(ZLandroid/icu/impl/StandardPlural;Landroid/icu/impl/number/Modifier;)V

    .line 172
    invoke-virtual {p0, v3, v6}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(ZLandroid/icu/impl/StandardPlural;)V

    .line 173
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->createConstantModifier(Landroid/icu/impl/number/NumberStringBuilder;Landroid/icu/impl/number/NumberStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v7

    invoke-virtual {v2, v3, v6, v7}, Landroid/icu/impl/number/ParameterizedModifier;->setModifier(ZLandroid/icu/impl/StandardPlural;Landroid/icu/impl/number/Modifier;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v2}, Landroid/icu/impl/number/ParameterizedModifier;->freeze()V

    .line 176
    new-instance v0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->rules:Landroid/icu/text/PluralRules;

    invoke-direct {v0, v2, p0, p1}, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;-><init>(Landroid/icu/impl/number/ParameterizedModifier;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)V

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 179
    invoke-virtual {p0, v4, v2}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(ZLandroid/icu/impl/StandardPlural;)V

    .line 180
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->createConstantModifier(Landroid/icu/impl/number/NumberStringBuilder;Landroid/icu/impl/number/NumberStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v4

    .line 181
    invoke-virtual {p0, v3, v2}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(ZLandroid/icu/impl/StandardPlural;)V

    .line 182
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->createConstantModifier(Landroid/icu/impl/number/NumberStringBuilder;Landroid/icu/impl/number/NumberStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object p0

    .line 183
    new-instance v0, Landroid/icu/impl/number/ParameterizedModifier;

    invoke-direct {v0, v4, p0}, Landroid/icu/impl/number/ParameterizedModifier;-><init>(Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;)V

    .line 184
    new-instance p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    invoke-direct {p0, v0, v2, p1}, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;-><init>(Landroid/icu/impl/number/ParameterizedModifier;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)V

    return-object p0
.end method

.method public getCodePointCount()I
    .locals 2

    const/4 v0, 0x1

    .line 282
    invoke-direct {p0, v0}, Landroid/icu/impl/number/MutablePatternModifier;->enterCharSequenceMode(Z)V

    .line 283
    invoke-static {p0, p0}, Landroid/icu/impl/number/AffixUtils;->unescapedCodePointCount(Ljava/lang/CharSequence;Landroid/icu/impl/number/AffixUtils$SymbolProvider;)I

    move-result v0

    .line 284
    invoke-direct {p0}, Landroid/icu/impl/number/MutablePatternModifier;->exitCharSequenceMode()V

    const/4 v1, 0x0

    .line 285
    invoke-direct {p0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->enterCharSequenceMode(Z)V

    .line 286
    invoke-static {p0, p0}, Landroid/icu/impl/number/AffixUtils;->unescapedCodePointCount(Ljava/lang/CharSequence;Landroid/icu/impl/number/AffixUtils$SymbolProvider;)I

    move-result v1

    add-int/2addr v0, v1

    .line 287
    invoke-direct {p0}, Landroid/icu/impl/number/MutablePatternModifier;->exitCharSequenceMode()V

    return v0
.end method

.method public getPrefixLength()I
    .locals 1

    const/4 v0, 0x1

    .line 273
    invoke-direct {p0, v0}, Landroid/icu/impl/number/MutablePatternModifier;->enterCharSequenceMode(Z)V

    .line 274
    invoke-static {p0, p0}, Landroid/icu/impl/number/AffixUtils;->unescapedCodePointCount(Ljava/lang/CharSequence;Landroid/icu/impl/number/AffixUtils$SymbolProvider;)I

    move-result v0

    .line 275
    invoke-direct {p0}, Landroid/icu/impl/number/MutablePatternModifier;->exitCharSequenceMode()V

    return v0
.end method

.method public getSymbol(I)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 348
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 317
    :pswitch_0
    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 319
    :pswitch_1
    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 321
    :pswitch_2
    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 323
    :pswitch_3
    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 326
    :pswitch_4
    iget-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v2, Landroid/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p1, v2, :cond_0

    .line 327
    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->currency:Landroid/icu/util/Currency;

    invoke-virtual {p0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 328
    :cond_0
    iget-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v2, Landroid/icu/number/NumberFormatter$UnitWidth;->HIDDEN:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p1, v2, :cond_1

    const-string p0, ""

    return-object p0

    .line 330
    :cond_1
    iget-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v2, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p1, v2, :cond_2

    .line 331
    iget-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->currency:Landroid/icu/util/Currency;

    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-virtual {p1, p0, v0, v1}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 333
    :cond_2
    iget-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->currency:Landroid/icu/util/Currency;

    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 336
    :pswitch_5
    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->currency:Landroid/icu/util/Currency;

    invoke-virtual {p0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 342
    :pswitch_6
    iget-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->currency:Landroid/icu/util/Currency;

    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v2, 0x2

    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->plural:Landroid/icu/impl/StandardPlural;

    invoke-virtual {p0}, Landroid/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "\ufffd"

    return-object p0

    .line 346
    :pswitch_8
    iget-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->currency:Landroid/icu/util/Currency;

    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-virtual {p1, p0, v0, v1}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x9
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

.method public isStrong()Z
    .locals 0

    .line 293
    iget-boolean p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->isStrong:Z

    return p0
.end method

.method public length()I
    .locals 0

    .line 400
    iget p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->length:I

    return p0
.end method

.method public needsPlurals()Z
    .locals 1

    .line 137
    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    const/4 v0, -0x7

    invoke-interface {p0, v0}, Landroid/icu/impl/number/AffixPatternProvider;->containsSymbolType(I)Z

    move-result p0

    return p0
.end method

.method public processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .locals 3

    .line 248
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Landroid/icu/impl/number/MutablePatternModifier;->needsPlurals()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->createCopy()Landroid/icu/impl/number/DecimalQuantity;

    move-result-object v1

    .line 252
    iget-object v2, v0, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    invoke-virtual {v2, v1}, Landroid/icu/number/Rounder;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 253
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isNegative()Z

    move-result p1

    iget-object v2, p0, Landroid/icu/impl/number/MutablePatternModifier;->rules:Landroid/icu/text/PluralRules;

    invoke-interface {v1, v2}, Landroid/icu/impl/number/DecimalQuantity;->getStandardPlural(Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(ZLandroid/icu/impl/StandardPlural;)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isNegative()Z

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(ZLandroid/icu/impl/StandardPlural;)V

    .line 257
    :goto_0
    iput-object p0, v0, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    return-object v0
.end method

.method public setNumberProperties(ZLandroid/icu/impl/StandardPlural;)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->isNegative:Z

    .line 129
    iput-object p2, p0, Landroid/icu/impl/number/MutablePatternModifier;->plural:Landroid/icu/impl/StandardPlural;

    return-void
.end method

.method public setPatternAttributes(Landroid/icu/number/NumberFormatter$SignDisplay;Z)V
    .locals 0

    .line 92
    iput-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->signDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 93
    iput-boolean p2, p0, Landroid/icu/impl/number/MutablePatternModifier;->perMilleReplacesPercent:Z

    return-void
.end method

.method public setPatternInfo(Landroid/icu/impl/number/AffixPatternProvider;)V
    .locals 0

    .line 80
    iput-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    return-void
.end method

.method public setSymbols(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/util/Currency;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/text/PluralRules;)V
    .locals 0

    .line 111
    iput-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 112
    iput-object p2, p0, Landroid/icu/impl/number/MutablePatternModifier;->currency:Landroid/icu/util/Currency;

    .line 113
    iput-object p3, p0, Landroid/icu/impl/number/MutablePatternModifier;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 114
    iput-object p4, p0, Landroid/icu/impl/number/MutablePatternModifier;->rules:Landroid/icu/text/PluralRules;

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 426
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method
