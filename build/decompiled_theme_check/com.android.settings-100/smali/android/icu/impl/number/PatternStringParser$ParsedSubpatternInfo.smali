.class public Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;
.super Ljava/lang/Object;
.source "PatternStringParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/PatternStringParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedSubpatternInfo"
.end annotation


# instance fields
.field public exponentHasPlusSign:Z

.field public exponentZeros:I

.field public fractionHashSigns:I

.field public fractionNumerals:I

.field public fractionTotal:I

.field public groupingSizes:J

.field public hasCurrencySign:Z

.field public hasDecimal:Z

.field public hasMinusSign:Z

.field public hasPerMilleSign:Z

.field public hasPercentSign:Z

.field public hasPlusSign:Z

.field public integerAtSigns:I

.field public integerLeadingHashSigns:I

.field public integerNumerals:I

.field public integerTotal:I

.field public integerTrailingHashSigns:I

.field public paddingEndpoints:J

.field public paddingLocation:Landroid/icu/impl/number/Padder$PadPosition;

.field public prefixEndpoints:J

.field public rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

.field public suffixEndpoints:J

.field public widthExceptAffixes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xffffffff0000L

    .line 172
    iput-wide v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerLeadingHashSigns:I

    .line 174
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    .line 175
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    .line 176
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    .line 177
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    .line 178
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    .line 179
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionHashSigns:I

    .line 180
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    .line 181
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasDecimal:Z

    .line 182
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Landroid/icu/impl/number/Padder$PadPosition;

    .line 184
    iput-object v1, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 185
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentHasPlusSign:Z

    .line 186
    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    .line 187
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPercentSign:Z

    .line 188
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPerMilleSign:Z

    .line 189
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    .line 190
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasMinusSign:Z

    .line 191
    iput-boolean v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPlusSign:Z

    const-wide/16 v0, 0x0

    .line 193
    iput-wide v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->prefixEndpoints:J

    .line 194
    iput-wide v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->suffixEndpoints:J

    .line 195
    iput-wide v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    return-void
.end method
