.class Landroid/icu/number/ScientificNotation$ScientificHandler;
.super Ljava/lang/Object;
.source "ScientificNotation.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;
.implements Landroid/icu/impl/number/MultiplierProducer;
.implements Landroid/icu/impl/number/Modifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/ScientificNotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScientificHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field exponent:I

.field final notation:Landroid/icu/number/ScientificNotation;

.field final parent:Landroid/icu/impl/number/MicroPropsGenerator;

.field final precomputedMods:[Landroid/icu/number/ScientificNotation$ScientificModifier;

.field final symbols:Landroid/icu/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    const-class v0, Landroid/icu/number/ScientificNotation;

    return-void
.end method

.method private constructor <init>(Landroid/icu/number/ScientificNotation;Landroid/icu/text/DecimalFormatSymbols;ZLandroid/icu/impl/number/MicroPropsGenerator;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    .line 130
    iput-object p2, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 131
    iput-object p4, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    if-eqz p3, :cond_0

    const/16 p1, 0x19

    new-array p1, p1, [Landroid/icu/number/ScientificNotation$ScientificModifier;

    .line 135
    iput-object p1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Landroid/icu/number/ScientificNotation$ScientificModifier;

    const/16 p1, -0xc

    :goto_0
    const/16 p2, 0xc

    if-gt p1, p2, :cond_1

    .line 137
    iget-object p2, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Landroid/icu/number/ScientificNotation$ScientificModifier;

    add-int/lit8 p3, p1, 0xc

    new-instance p4, Landroid/icu/number/ScientificNotation$ScientificModifier;

    invoke-direct {p4, p1, p0}, Landroid/icu/number/ScientificNotation$ScientificModifier;-><init>(ILandroid/icu/number/ScientificNotation$ScientificHandler;)V

    aput-object p4, p2, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Landroid/icu/number/ScientificNotation$ScientificModifier;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/number/ScientificNotation;Landroid/icu/text/DecimalFormatSymbols;ZLandroid/icu/impl/number/MicroPropsGenerator;Landroid/icu/number/ScientificNotation$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/number/ScientificNotation$ScientificHandler;-><init>(Landroid/icu/number/ScientificNotation;Landroid/icu/text/DecimalFormatSymbols;ZLandroid/icu/impl/number/MicroPropsGenerator;)V

    return-void
.end method

.method static synthetic access$100(Landroid/icu/number/ScientificNotation$ScientificHandler;ILandroid/icu/impl/number/NumberStringBuilder;I)I
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/number/ScientificNotation$ScientificHandler;->doApply(ILandroid/icu/impl/number/NumberStringBuilder;I)I

    move-result p0

    return p0
.end method

.method private doApply(ILandroid/icu/impl/number/NumberStringBuilder;I)I
    .locals 5

    .line 227
    iget-object v0, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, p3, v0, v1}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result v0

    add-int/2addr v0, p3

    if-gez p1, :cond_0

    .line 228
    iget-object v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget-object v1, v1, Landroid/icu/number/ScientificNotation;->exponentSignDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v2, Landroid/icu/number/NumberFormatter$SignDisplay;->NEVER:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-eq v1, v2, :cond_0

    .line 229
    iget-object v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v0, v1, v2}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_1

    .line 230
    iget-object v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget-object v1, v1, Landroid/icu/number/ScientificNotation;->exponentSignDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v2, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-ne v1, v2, :cond_1

    .line 231
    iget-object v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v0, v1, v2}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result v1

    goto :goto_0

    .line 234
    :cond_1
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v1, 0x0

    .line 235
    :goto_2
    iget-object v2, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget v2, v2, Landroid/icu/number/ScientificNotation;->minExponentDigits:I

    if-lt v1, v2, :cond_3

    if-lez p1, :cond_2

    goto :goto_3

    :cond_2
    sub-int/2addr v0, p3

    return v0

    .line 236
    :cond_3
    :goto_3
    rem-int/lit8 v2, p1, 0xa

    .line 237
    iget-object v3, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    sub-int v3, v0, v1

    .line 238
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v3, v2, v4}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    .line 235
    div-int/lit8 p1, p1, 0xa

    goto :goto_2
.end method


# virtual methods
.method public apply(Landroid/icu/impl/number/NumberStringBuilder;II)I
    .locals 0

    .line 220
    iget p2, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->exponent:I

    invoke-direct {p0, p2, p1, p3}, Landroid/icu/number/ScientificNotation$ScientificHandler;->doApply(ILandroid/icu/impl/number/NumberStringBuilder;I)I

    move-result p0

    return p0
.end method

.method public getCodePointCount()I
    .locals 0

    .line 209
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public getMultiplier(I)I
    .locals 2

    .line 185
    iget-object v0, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget v0, v0, Landroid/icu/number/ScientificNotation;->engineeringInterval:I

    .line 187
    iget-object p0, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget-boolean p0, p0, Landroid/icu/number/ScientificNotation;->requireMinInt:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-gt v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    .line 195
    :cond_1
    rem-int p0, p1, v0

    add-int/2addr p0, v0

    rem-int/2addr p0, v0

    add-int/lit8 v0, p0, 0x1

    :goto_0
    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPrefixLength()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStrong()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .locals 4

    .line 146
    iget-object v0, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 151
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isZero()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget-boolean v1, v1, Landroid/icu/number/ScientificNotation;->requireMinInt:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    instance-of v1, v1, Landroid/icu/number/Rounder$SignificantRounderImpl;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    check-cast v1, Landroid/icu/number/Rounder$SignificantRounderImpl;

    iget-object v3, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget v3, v3, Landroid/icu/number/ScientificNotation;->engineeringInterval:I

    invoke-virtual {v1, p1, v3}, Landroid/icu/number/Rounder$SignificantRounderImpl;->apply(Landroid/icu/impl/number/DecimalQuantity;I)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    invoke-virtual {v1, p1}, Landroid/icu/number/Rounder;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    invoke-virtual {v1, p1, p0}, Landroid/icu/number/Rounder;->chooseMultiplierAndApply(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MultiplierProducer;)I

    move-result p1

    neg-int v2, p1

    .line 165
    :goto_0
    iget-object p1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Landroid/icu/number/ScientificNotation$ScientificModifier;

    if-eqz p1, :cond_2

    const/16 v1, -0xc

    if-lt v2, v1, :cond_2

    const/16 v1, 0xc

    if-gt v2, v1, :cond_2

    add-int/2addr v2, v1

    .line 167
    aget-object p0, p1, v2

    iput-object p0, v0, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    goto :goto_1

    .line 168
    :cond_2
    iget-object p1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Landroid/icu/number/ScientificNotation$ScientificModifier;

    if-eqz p1, :cond_3

    .line 170
    new-instance p1, Landroid/icu/number/ScientificNotation$ScientificModifier;

    invoke-direct {p1, v2, p0}, Landroid/icu/number/ScientificNotation$ScientificModifier;-><init>(ILandroid/icu/number/ScientificNotation$ScientificHandler;)V

    iput-object p1, v0, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    goto :goto_1

    .line 173
    :cond_3
    iput v2, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->exponent:I

    .line 174
    iput-object p0, v0, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    .line 178
    :goto_1
    invoke-static {}, Landroid/icu/number/Rounder;->constructPassThrough()Landroid/icu/number/Rounder;

    move-result-object p0

    iput-object p0, v0, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    return-object v0
.end method
