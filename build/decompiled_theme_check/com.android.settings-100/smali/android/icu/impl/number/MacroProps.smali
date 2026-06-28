.class public Landroid/icu/impl/number/MacroProps;
.super Ljava/lang/Object;
.source "MacroProps.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

.field public decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

.field public grouper:Landroid/icu/number/Grouper;

.field public integerWidth:Landroid/icu/number/IntegerWidth;

.field public loc:Landroid/icu/util/ULocale;

.field public multiplier:Landroid/icu/impl/number/MultiplierImpl;

.field public notation:Landroid/icu/number/Notation;

.field public padder:Landroid/icu/impl/number/Padder;

.field public rounder:Landroid/icu/number/Rounder;

.field public rules:Landroid/icu/text/PluralRules;

.field public sign:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public symbols:Ljava/lang/Object;

.field public threshold:Ljava/lang/Long;

.field public unit:Landroid/icu/util/MeasureUnit;

.field public unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 105
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 107
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 83
    :cond_1
    instance-of v2, p1, Landroid/icu/impl/number/MacroProps;

    if-nez v2, :cond_2

    return v0

    .line 84
    :cond_2
    check-cast p1, Landroid/icu/impl/number/MacroProps;

    .line 85
    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 86
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    .line 87
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->grouper:Landroid/icu/number/Grouper;

    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->grouper:Landroid/icu/number/Grouper;

    .line 88
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    .line 89
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    .line 90
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    .line 91
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 92
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 93
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 94
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    .line 95
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->multiplier:Landroid/icu/impl/number/MultiplierImpl;

    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->multiplier:Landroid/icu/impl/number/MultiplierImpl;

    .line 96
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    iget-object v3, p1, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    .line 97
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    iget-object p1, p1, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    .line 98
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public fallback(Landroid/icu/impl/number/MacroProps;)V
    .locals 1

    .line 44
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    .line 45
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 46
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    .line 47
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->grouper:Landroid/icu/number/Grouper;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->grouper:Landroid/icu/number/Grouper;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->grouper:Landroid/icu/number/Grouper;

    .line 48
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    .line 49
    :cond_4
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    if-nez v0, :cond_5

    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    .line 50
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    if-nez v0, :cond_6

    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    .line 51
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-nez v0, :cond_7

    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 52
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-nez v0, :cond_8

    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 53
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-nez v0, :cond_9

    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 54
    :cond_9
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    if-nez v0, :cond_a

    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    .line 55
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->multiplier:Landroid/icu/impl/number/MultiplierImpl;

    if-nez v0, :cond_b

    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->multiplier:Landroid/icu/impl/number/MultiplierImpl;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->multiplier:Landroid/icu/impl/number/MultiplierImpl;

    .line 56
    :cond_b
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    if-nez v0, :cond_c

    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    .line 57
    :cond_c
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    if-nez v0, :cond_d

    iget-object p1, p1, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    iput-object p1, p0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    :cond_d
    return-void
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->grouper:Landroid/icu/number/Grouper;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->multiplier:Landroid/icu/impl/number/MultiplierImpl;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    const/16 v1, 0xd

    aput-object p0, v0, v1

    invoke-static {v0}, Landroid/icu/impl/Utility;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
