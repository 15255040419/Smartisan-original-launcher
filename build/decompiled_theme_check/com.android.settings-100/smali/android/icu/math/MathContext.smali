.class public final Landroid/icu/math/MathContext;
.super Ljava/lang/Object;
.source "MathContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT:Landroid/icu/math/MathContext;

.field private static final DEFAULT_DIGITS:I = 0x9

.field private static final DEFAULT_FORM:I = 0x1

.field private static final DEFAULT_LOSTDIGITS:Z = false

.field private static final DEFAULT_ROUNDINGMODE:I = 0x4

.field public static final ENGINEERING:I = 0x2

.field private static final MAX_DIGITS:I = 0x3b9ac9ff

.field private static final MIN_DIGITS:I = 0x0

.field public static final PLAIN:I = 0x0

.field private static final ROUNDS:[I

.field private static final ROUNDWORDS:[Ljava/lang/String;

.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_DOWN:I = 0x1

.field public static final ROUND_FLOOR:I = 0x3

.field public static final ROUND_HALF_DOWN:I = 0x5

.field public static final ROUND_HALF_EVEN:I = 0x6

.field public static final ROUND_HALF_UP:I = 0x4

.field public static final ROUND_UNNECESSARY:I = 0x7

.field public static final ROUND_UP:I = 0x0

.field public static final SCIENTIFIC:I = 0x1

.field private static final serialVersionUID:J = 0x63696d6d63313030L


# instance fields
.field digits:I

.field form:I

.field lostDigits:Z

.field roundingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 302
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/math/MathContext;->ROUNDS:[I

    const-string v1, "ROUND_HALF_UP"

    const-string v2, "ROUND_UNNECESSARY"

    const-string v3, "ROUND_CEILING"

    const-string v4, "ROUND_DOWN"

    const-string v5, "ROUND_FLOOR"

    const-string v6, "ROUND_HALF_DOWN"

    const-string v7, "ROUND_HALF_EVEN"

    const-string v8, "ROUND_UP"

    .line 305
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/math/MathContext;->ROUNDWORDS:[Ljava/lang/String;

    .line 325
    new-instance v0, Landroid/icu/math/MathContext;

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    sput-object v0, Landroid/icu/math/MathContext;->DEFAULT:Landroid/icu/math/MathContext;

    return-void

    :array_0
    .array-data 4
        0x4
        0x7
        0x2
        0x1
        0x3
        0x5
        0x6
        0x0
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 348
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 372
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    const/4 v0, 0x4

    .line 397
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(IIZI)V
    .locals 1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    if-ltz p1, :cond_1

    const v0, 0x3b9ac9ff

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Digits too large: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 428
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Digits too small: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    goto :goto_1

    :cond_4
    if-nez p2, :cond_6

    .line 441
    :goto_1
    invoke-static {p4}, Landroid/icu/math/MathContext;->isValidRound(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 443
    iput p1, p0, Landroid/icu/math/MathContext;->digits:I

    .line 444
    iput p2, p0, Landroid/icu/math/MathContext;->form:I

    .line 445
    iput-boolean p3, p0, Landroid/icu/math/MathContext;->lostDigits:Z

    .line 446
    iput p4, p0, Landroid/icu/math/MathContext;->roundingMode:I

    return-void

    .line 442
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad roundingMode value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 438
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad form value: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isValidRound(I)Z
    .locals 4

    .line 576
    sget-object v0, Landroid/icu/math/MathContext;->ROUNDS:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    .line 577
    sget-object v3, Landroid/icu/math/MathContext;->ROUNDS:[I

    aget v3, v3, v2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getDigits()I
    .locals 0

    .line 458
    iget p0, p0, Landroid/icu/math/MathContext;->digits:I

    return p0
.end method

.method public getForm()I
    .locals 0

    .line 472
    iget p0, p0, Landroid/icu/math/MathContext;->form:I

    return p0
.end method

.method public getLostDigits()Z
    .locals 0

    .line 485
    iget-boolean p0, p0, Landroid/icu/math/MathContext;->lostDigits:Z

    return p0
.end method

.method public getRoundingMode()I
    .locals 0

    .line 505
    iget p0, p0, Landroid/icu/math/MathContext;->roundingMode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 551
    iget v0, p0, Landroid/icu/math/MathContext;->form:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SCIENTIFIC"

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "ENGINEERING"

    goto :goto_0

    :cond_1
    const-string v0, "PLAIN"

    .line 559
    :goto_0
    sget-object v1, Landroid/icu/math/MathContext;->ROUNDS:[I

    array-length v1, v1

    const/4 v2, 0x0

    :goto_1
    if-lez v1, :cond_3

    .line 560
    iget v3, p0, Landroid/icu/math/MathContext;->roundingMode:I

    sget-object v4, Landroid/icu/math/MathContext;->ROUNDS:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_2

    .line 562
    sget-object v1, Landroid/icu/math/MathContext;->ROUNDWORDS:[Ljava/lang/String;

    aget-object v1, v1, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 567
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "digits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/icu/math/MathContext;->digits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " form="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " lostDigits="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz p0, :cond_4

    const-string p0, "1"

    goto :goto_3

    :cond_4
    const-string p0, "0"

    :goto_3
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " roundingMode="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
