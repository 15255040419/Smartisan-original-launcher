.class public Landroid/icu/impl/number/RoundingUtils;
.super Ljava/lang/Object;
.source "RoundingUtils.java"


# static fields
.field public static final DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;

.field private static final MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

.field private static final MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

.field public static final MAX_INT_FRAC_SIG:I = 0x64

.field public static final SECTION_LOWER:I = 0x1

.field public static final SECTION_MIDPOINT:I = 0x2

.field public static final SECTION_UPPER:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    sput-object v0, Landroid/icu/impl/number/RoundingUtils;->DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 129
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/math/MathContext;

    sput-object v0, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    .line 132
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/math/MathContext;

    sput-object v0, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

    const/4 v0, 0x0

    move v1, v0

    .line 135
    :goto_0
    sget-object v2, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 136
    sget-object v2, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    new-instance v3, Ljava/math/MathContext;

    invoke-static {v1}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    aput-object v3, v2, v1

    .line 137
    sget-object v2, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

    new-instance v3, Ljava/math/MathContext;

    const/16 v4, 0x22

    invoke-direct {v3, v4}, Ljava/math/MathContext;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMathContextOr34Digits(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/math/MathContext;
    .locals 1

    .line 168
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMathContext()Ljava/math/MathContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object p0

    if-nez p0, :cond_0

    .line 171
    sget-object p0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 172
    :cond_0
    sget-object v0, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    move-result p0

    aget-object v0, v0, p0

    :cond_1
    return-object v0
.end method

.method public static getMathContextOrUnlimited(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/math/MathContext;
    .locals 1

    .line 150
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMathContext()Ljava/math/MathContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object p0

    if-nez p0, :cond_0

    .line 153
    sget-object p0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 154
    :cond_0
    sget-object v0, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    move-result p0

    aget-object v0, v0, p0

    :cond_1
    return-object v0
.end method

.method public static getRoundingDirection(ZZIILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eq p2, v3, :cond_1

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_5

    return v2

    :cond_0
    return p0

    :cond_1
    return v3

    :pswitch_1
    if-eq p2, v3, :cond_2

    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_5

    return v2

    :cond_2
    return v3

    :pswitch_2
    if-eq p2, v3, :cond_4

    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_5

    :cond_3
    return v2

    :cond_4
    return v3

    :pswitch_3
    xor-int/lit8 p0, p1, 0x1

    return p0

    :pswitch_4
    return p1

    :pswitch_5
    return v3

    :pswitch_6
    return v2

    .line 102
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Rounding is required on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mathContextUnlimited(Ljava/math/RoundingMode;)Ljava/math/MathContext;
    .locals 1

    .line 185
    sget-object v0, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static roundsAtMidpoint(I)Z
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
