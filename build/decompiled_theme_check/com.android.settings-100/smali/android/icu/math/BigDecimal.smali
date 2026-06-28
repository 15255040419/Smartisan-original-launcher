.class public Landroid/icu/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/math/BigDecimal;",
        ">;"
    }
.end annotation


# static fields
.field private static final MaxArg:I = 0x3b9ac9ff

.field private static final MaxExp:I = 0x3b9ac9ff

.field private static final MinArg:I = -0x3b9ac9ff

.field private static final MinExp:I = -0x3b9ac9ff

.field public static final ONE:Landroid/icu/math/BigDecimal;

.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_DOWN:I = 0x1

.field public static final ROUND_FLOOR:I = 0x3

.field public static final ROUND_HALF_DOWN:I = 0x5

.field public static final ROUND_HALF_EVEN:I = 0x6

.field public static final ROUND_HALF_UP:I = 0x4

.field public static final ROUND_UNNECESSARY:I = 0x7

.field public static final ROUND_UP:I = 0x0

.field public static final TEN:Landroid/icu/math/BigDecimal;

.field public static final ZERO:Landroid/icu/math/BigDecimal;

.field private static bytecar:[B = null

.field private static bytedig:[B = null

.field private static final isneg:B = -0x1t

.field private static final ispos:B = 0x1t

.field private static final iszero:B = 0x0t

.field private static final plainMC:Landroid/icu/math/MathContext;

.field private static final serialVersionUID:J = 0x726d636b3a313030L


# instance fields
.field private exp:I

.field private form:B

.field private ind:B

.field private mant:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 235
    new-instance v0, Landroid/icu/math/BigDecimal;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;-><init>(J)V

    sput-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    .line 246
    new-instance v0, Landroid/icu/math/BigDecimal;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;-><init>(J)V

    sput-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    .line 257
    new-instance v0, Landroid/icu/math/BigDecimal;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;-><init>(I)V

    sput-object v0, Landroid/icu/math/BigDecimal;->TEN:Landroid/icu/math/BigDecimal;

    .line 327
    new-instance v0, Landroid/icu/math/MathContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/icu/math/MathContext;-><init>(II)V

    sput-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/16 v0, 0xbe

    new-array v0, v0, [B

    .line 339
    sput-object v0, Landroid/icu/math/BigDecimal;->bytecar:[B

    .line 340
    invoke-static {}, Landroid/icu/math/BigDecimal;->diginit()[B

    move-result-object v0

    sput-object v0, Landroid/icu/math/BigDecimal;->bytedig:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 917
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    .line 370
    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->form:B

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 740
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 755
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    .line 370
    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->form:B

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-gt p1, v1, :cond_4

    const/16 v4, -0x9

    if-lt p1, v4, :cond_4

    if-nez p1, :cond_0

    .line 765
    sget-object p1, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    iget-object p1, p1, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object p1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 766
    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 768
    sget-object p1, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iget-object p1, p1, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object p1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 769
    iput-byte v2, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    .line 771
    sget-object p1, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iget-object p1, p1, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object p1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 772
    iput-byte v3, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_2
    new-array v1, v2, [B

    .line 775
    iput-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    if-lez p1, :cond_3

    .line 777
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    .line 778
    iput-byte v2, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_0

    .line 780
    :cond_3
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    neg-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    .line 781
    iput-byte v3, p0, Landroid/icu/math/BigDecimal;->ind:B

    :goto_0
    return-void

    :cond_4
    if-lez p1, :cond_5

    .line 792
    iput-byte v2, p0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int p1, p1

    goto :goto_1

    .line 795
    :cond_5
    iput-byte v3, p0, Landroid/icu/math/BigDecimal;->ind:B

    :goto_1
    move v0, p1

    .line 803
    :goto_2
    div-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_7

    rsub-int/lit8 v0, v1, 0xa

    .line 809
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    sub-int/2addr v0, v2

    .line 813
    :goto_3
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    rem-int/lit8 v2, p1, 0xa

    int-to-byte v2, v2

    neg-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 814
    div-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_6

    return-void

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public constructor <init>(J)V
    .locals 9

    .line 833
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    .line 370
    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->form:B

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/4 v4, 0x1

    if-lez v3, :cond_0

    .line 841
    iput-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    neg-long p1, p1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 844
    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 846
    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    :goto_0
    const/16 v0, 0x12

    move-wide v5, p1

    :goto_1
    const-wide/16 v7, 0xa

    .line 851
    div-long/2addr v5, v7

    cmp-long v3, v5, v1

    if-nez v3, :cond_3

    rsub-int/lit8 v0, v0, 0x13

    .line 857
    new-array v3, v0, [B

    iput-object v3, p0, Landroid/icu/math/BigDecimal;->mant:[B

    sub-int/2addr v0, v4

    .line 861
    :goto_2
    iget-object v3, p0, Landroid/icu/math/BigDecimal;->mant:[B

    rem-long v4, p1, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    neg-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 862
    div-long/2addr p1, v7

    cmp-long v3, p1, v1

    if-nez v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 910
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/icu/math/BigDecimal;-><init>([CII)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0

    .line 419
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    const/16 v0, 0xa

    .line 437
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 1

    const/16 v0, 0xa

    .line 461
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    if-ltz p2, :cond_0

    neg-int p1, p2

    .line 464
    iput p1, p0, Landroid/icu/math/BigDecimal;->exp:I

    return-void

    .line 463
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Negative scale: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([C)V
    .locals 2

    .line 483
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/icu/math/BigDecimal;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 16

    move-object/from16 v0, p0

    .line 504
    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    const/4 v1, 0x0

    .line 370
    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->form:B

    if-gtz p3, :cond_0

    .line 526
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_0
    const/4 v2, 0x1

    .line 530
    iput-byte v2, v0, Landroid/icu/math/BigDecimal;->ind:B

    .line 531
    aget-char v3, p1, p2

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    const/4 v6, -0x1

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, p3, -0x1

    if-nez v3, :cond_1

    .line 534
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 535
    :cond_1
    iput-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    :cond_2
    :goto_0
    add-int/lit8 v7, p2, 0x1

    goto :goto_1

    .line 537
    :cond_3
    aget-char v3, p1, p2

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, p3, -0x1

    if-nez v3, :cond_2

    .line 540
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    goto :goto_0

    :cond_4
    move/from16 v7, p2

    move/from16 v3, p3

    :goto_1
    move v10, v1

    move v11, v10

    move v9, v6

    move v12, v9

    move v8, v7

    move v6, v3

    :goto_2
    const/16 v13, 0x2e

    const/16 v14, 0xa

    const/16 v15, 0x39

    const/16 v1, 0x30

    if-lez v6, :cond_16

    .line 554
    aget-char v2, p1, v8

    if-lt v2, v1, :cond_5

    if-gt v2, v15, :cond_5

    add-int/lit8 v10, v10, 0x1

    move v12, v8

    goto :goto_3

    :cond_5
    if-ne v2, v13, :cond_7

    if-ltz v9, :cond_6

    .line 563
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_6
    sub-int v1, v8, v7

    move v9, v1

    goto :goto_3

    :cond_7
    const/16 v13, 0x65

    if-eq v2, v13, :cond_9

    const/16 v13, 0x45

    if-eq v2, v13, :cond_9

    .line 569
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 570
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_8
    add-int/lit8 v10, v10, 0x1

    move v12, v8

    const/4 v11, 0x1

    :goto_3
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    sub-int v2, v8, v7

    add-int/lit8 v6, v3, -0x2

    if-le v2, v6, :cond_a

    .line 580
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_a
    add-int/lit8 v2, v8, 0x1

    .line 582
    aget-char v6, p1, v2

    if-ne v6, v5, :cond_b

    add-int/lit8 v2, v8, 0x2

    const/4 v4, 0x1

    goto :goto_4

    .line 585
    :cond_b
    aget-char v5, p1, v2

    if-ne v5, v4, :cond_c

    add-int/lit8 v2, v8, 0x2

    :cond_c
    const/4 v4, 0x0

    :goto_4
    sub-int v5, v2, v7

    sub-int/2addr v3, v5

    if-nez v3, :cond_d

    const/4 v5, 0x1

    goto :goto_5

    :cond_d
    const/4 v5, 0x0

    :goto_5
    const/16 v6, 0x9

    if-le v3, v6, :cond_e

    const/4 v6, 0x1

    goto :goto_6

    :cond_e
    const/4 v6, 0x0

    :goto_6
    or-int/2addr v5, v6

    if-eqz v5, :cond_f

    .line 592
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_f
    :goto_7
    if-lez v3, :cond_14

    .line 597
    aget-char v5, p1, v2

    if-ge v5, v1, :cond_10

    .line 599
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_10
    if-le v5, v15, :cond_12

    .line 601
    invoke-static {v5}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    move-result v6

    if-nez v6, :cond_11

    .line 602
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 603
    :cond_11
    invoke-static {v5, v14}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v5

    if-gez v5, :cond_13

    .line 605
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    goto :goto_8

    :cond_12
    add-int/lit8 v5, v5, -0x30

    .line 608
    :cond_13
    :goto_8
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    mul-int/2addr v6, v14

    add-int/2addr v6, v5

    iput v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    if-eqz v4, :cond_15

    .line 612
    iget v2, v0, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v2, v2

    iput v2, v0, Landroid/icu/math/BigDecimal;->exp:I

    :cond_15
    const/4 v2, 0x1

    goto :goto_9

    :cond_16
    const/4 v2, 0x0

    :goto_9
    if-nez v10, :cond_17

    .line 620
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_17
    if-ltz v9, :cond_18

    .line 622
    iget v3, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v3, v9

    sub-int/2addr v3, v10

    iput v3, v0, Landroid/icu/math/BigDecimal;->exp:I

    :cond_18
    const/4 v3, 0x1

    sub-int/2addr v12, v3

    move v3, v7

    :goto_a
    if-gt v7, v12, :cond_1d

    .line 629
    aget-char v4, p1, v7

    if-ne v4, v1, :cond_19

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v10, v10, -0x1

    const/16 v5, 0x2e

    goto :goto_b

    :cond_19
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_1a

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_b

    :cond_1a
    if-gt v4, v15, :cond_1b

    goto :goto_c

    .line 640
    :cond_1b
    invoke-static {v4, v14}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_c

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v10, v10, -0x1

    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 651
    :cond_1d
    :goto_c
    new-array v4, v10, [B

    iput-object v4, v0, Landroid/icu/math/BigDecimal;->mant:[B

    if-eqz v11, :cond_21

    const/4 v1, 0x0

    :goto_d
    if-lez v10, :cond_23

    if-ne v1, v9, :cond_1e

    add-int/lit8 v3, v3, 0x1

    .line 661
    :cond_1e
    aget-char v4, p1, v3

    if-gt v4, v15, :cond_1f

    .line 663
    iget-object v5, v0, Landroid/icu/math/BigDecimal;->mant:[B

    add-int/lit8 v4, v4, -0x30

    int-to-byte v4, v4

    aput-byte v4, v5, v1

    goto :goto_e

    .line 665
    :cond_1f
    invoke-static {v4, v14}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v4

    if-gez v4, :cond_20

    .line 667
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 668
    :cond_20
    iget-object v5, v0, Landroid/icu/math/BigDecimal;->mant:[B

    int-to-byte v4, v4

    aput-byte v4, v5, v1

    :goto_e
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_21
    move v4, v3

    const/4 v3, 0x0

    :goto_f
    if-lez v10, :cond_23

    if-ne v3, v9, :cond_22

    add-int/lit8 v4, v4, 0x1

    .line 683
    :cond_22
    iget-object v5, v0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-char v6, p1, v4

    sub-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 696
    :cond_23
    iget-object v1, v0, Landroid/icu/math/BigDecimal;->mant:[B

    const/4 v3, 0x0

    aget-byte v4, v1, v3

    if-nez v4, :cond_25

    .line 697
    iput-byte v3, v0, Landroid/icu/math/BigDecimal;->ind:B

    .line 699
    iget v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    if-lez v1, :cond_24

    .line 700
    iput v3, v0, Landroid/icu/math/BigDecimal;->exp:I

    :cond_24
    if-eqz v2, :cond_28

    .line 702
    sget-object v1, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    iget-object v1, v1, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v1, v0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 703
    iput v3, v0, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_12

    :cond_25
    if-eqz v2, :cond_28

    const/4 v2, 0x1

    .line 709
    iput-byte v2, v0, Landroid/icu/math/BigDecimal;->form:B

    .line 711
    iget v4, v0, Landroid/icu/math/BigDecimal;->exp:I

    array-length v1, v1

    add-int/2addr v4, v1

    sub-int/2addr v4, v2

    const v1, -0x3b9ac9ff

    if-ge v4, v1, :cond_26

    move v1, v2

    goto :goto_10

    :cond_26
    move v1, v3

    :goto_10
    const v5, 0x3b9ac9ff

    if-le v4, v5, :cond_27

    goto :goto_11

    :cond_27
    move v2, v3

    :goto_11
    or-int/2addr v1, v2

    if-eqz v1, :cond_28

    .line 713
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_28
    :goto_12
    return-void
.end method

.method private static final allzero([BI)Z
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    .line 3697
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-gt p1, v1, :cond_2

    .line 3700
    aget-byte v3, p0, p1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private bad([C)V
    .locals 2

    .line 3349
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private badarg(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 3358
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad argument "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final byteaddsub([BI[BIIZ)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    .line 3417
    array-length v3, v0

    .line 3418
    array-length v4, v1

    const/4 v5, 0x1

    add-int/lit8 v6, p1, -0x1

    add-int/lit8 v7, p3, -0x1

    if-ge v7, v6, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    const/4 v9, 0x0

    if-eqz p5, :cond_1

    add-int/lit8 v10, v8, 0x1

    if-ne v10, v3, :cond_1

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    if-nez v10, :cond_2

    add-int/lit8 v10, v8, 0x1

    .line 3429
    new-array v10, v10, [B

    :cond_2
    const/4 v11, 0x0

    if-ne v2, v5, :cond_3

    :goto_2
    move v12, v5

    goto :goto_3

    :cond_3
    const/4 v12, -0x1

    if-ne v2, v12, :cond_4

    goto :goto_2

    :cond_4
    move v12, v11

    :goto_3
    move v13, v6

    move v14, v7

    move v6, v8

    move v7, v11

    :goto_4
    const/16 v15, 0xa

    if-ltz v6, :cond_c

    if-ltz v13, :cond_6

    if-ge v13, v3, :cond_5

    .line 3443
    aget-byte v16, v0, v13

    add-int v7, v7, v16

    :cond_5
    add-int/lit8 v13, v13, -0x1

    :cond_6
    if-ltz v14, :cond_a

    if-ge v14, v4, :cond_9

    if-eqz v12, :cond_8

    if-lez v2, :cond_7

    .line 3450
    aget-byte v16, v1, v14

    goto :goto_5

    .line 3452
    :cond_7
    aget-byte v16, v1, v14

    sub-int v7, v7, v16

    goto :goto_6

    .line 3454
    :cond_8
    aget-byte v16, v1, v14

    mul-int v16, v16, v2

    :goto_5
    add-int v7, v7, v16

    :cond_9
    :goto_6
    add-int/lit8 v14, v14, -0x1

    :cond_a
    if-ge v7, v15, :cond_b

    if-ltz v7, :cond_b

    int-to-byte v7, v7

    .line 3462
    aput-byte v7, v10, v6

    move v7, v11

    goto :goto_7

    :cond_b
    add-int/lit8 v7, v7, 0x5a

    .line 3468
    sget-object v15, Landroid/icu/math/BigDecimal;->bytedig:[B

    aget-byte v15, v15, v7

    aput-byte v15, v10, v6

    .line 3469
    sget-object v15, Landroid/icu/math/BigDecimal;->bytecar:[B

    aget-byte v7, v15, v7

    :goto_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_c
    if-nez v7, :cond_d

    return-object v10

    :cond_d
    if-eqz p5, :cond_e

    add-int/lit8 v1, v8, 0x2

    .line 3481
    array-length v2, v0

    if-ne v1, v2, :cond_e

    goto :goto_8

    :cond_e
    move-object v0, v9

    :goto_8
    if-nez v0, :cond_f

    add-int/lit8 v0, v8, 0x2

    .line 3484
    new-array v0, v0, [B

    :cond_f
    int-to-byte v1, v7

    .line 3485
    aput-byte v1, v0, v11

    if-ge v8, v15, :cond_10

    add-int/2addr v8, v5

    :goto_9
    if-lez v8, :cond_11

    add-int/lit8 v1, v11, 0x1

    .line 3491
    aget-byte v2, v10, v11

    aput-byte v2, v0, v1

    add-int/lit8 v8, v8, -0x1

    move v11, v1

    goto :goto_9

    :cond_10
    add-int/2addr v8, v5

    .line 3495
    invoke-static {v10, v11, v0, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_11
    return-object v0
.end method

.method private checkdigits(Landroid/icu/math/BigDecimal;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 3551
    :cond_0
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    const-string v2, "Too many digits: "

    if-le v1, p2, :cond_2

    .line 3552
    invoke-static {v0, p2}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3553
    :cond_1
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 3556
    :cond_3
    iget-object p0, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, p0

    if-le v0, p2, :cond_5

    .line 3557
    invoke-static {p0, p2}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    .line 3558
    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method private static final clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 2

    .line 3534
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0}, Landroid/icu/math/BigDecimal;-><init>()V

    .line 3535
    iget-byte v1, p0, Landroid/icu/math/BigDecimal;->ind:B

    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    .line 3536
    iget v1, p0, Landroid/icu/math/BigDecimal;->exp:I

    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    .line 3537
    iget-byte v1, p0, Landroid/icu/math/BigDecimal;->form:B

    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->form:B

    .line 3538
    iget-object p0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object p0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    return-object v0
.end method

.method private static final diginit()[B
    .locals 4

    const/16 v0, 0xbe

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xbd

    if-gt v1, v2, :cond_1

    add-int/lit8 v2, v1, -0x5a

    if-ltz v2, :cond_0

    .line 3514
    rem-int/lit8 v3, v2, 0xa

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 3515
    sget-object v3, Landroid/icu/math/BigDecimal;->bytecar:[B

    div-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x64

    .line 3520
    rem-int/lit8 v3, v2, 0xa

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 3521
    sget-object v3, Landroid/icu/math/BigDecimal;->bytecar:[B

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, -0xa

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 3074
    iget-boolean v5, v3, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v5, :cond_0

    .line 3075
    iget v5, v3, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {v0, v2, v5}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    .line 3079
    :cond_0
    iget-byte v5, v2, Landroid/icu/math/BigDecimal;->ind:B

    if-eqz v5, :cond_33

    .line 3081
    iget-byte v5, v0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v6, -0x1

    if-nez v5, :cond_3

    .line 3082
    iget v1, v3, Landroid/icu/math/MathContext;->form:I

    if-eqz v1, :cond_1

    .line 3083
    sget-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v0

    :cond_1
    if-ne v4, v6, :cond_2

    return-object v0

    .line 3086
    :cond_2
    invoke-virtual {v0, v4}, Landroid/icu/math/BigDecimal;->setScale(I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 3090
    :cond_3
    iget v5, v3, Landroid/icu/math/MathContext;->digits:I

    const/4 v7, 0x1

    if-lez v5, :cond_5

    .line 3092
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    if-le v6, v5, :cond_4

    .line 3093
    invoke-static/range {p0 .. p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0, v3}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 3094
    :cond_4
    iget-object v6, v2, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    if-le v6, v5, :cond_9

    .line 3095
    invoke-static/range {p2 .. p2}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v2

    invoke-direct {v2, v3}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v2

    goto :goto_0

    :cond_5
    if-ne v4, v6, :cond_6

    .line 3098
    invoke-virtual/range {p0 .. p0}, Landroid/icu/math/BigDecimal;->scale()I

    move-result v4

    .line 3100
    :cond_6
    iget-object v5, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    .line 3102
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v8, v6

    if-eq v4, v8, :cond_7

    add-int/2addr v5, v4

    add-int/2addr v5, v6

    .line 3104
    :cond_7
    iget-object v6, v2, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v5, v6

    .line 3105
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v8, v6

    if-ge v5, v8, :cond_8

    .line 3106
    array-length v5, v6

    .line 3107
    :cond_8
    iget-object v6, v2, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v8, v6

    if-ge v5, v8, :cond_9

    .line 3108
    array-length v5, v6

    .line 3112
    :cond_9
    :goto_0
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    iget v8, v2, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v6, v8

    iget-object v8, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v8, v8

    add-int/2addr v6, v8

    iget-object v8, v2, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v8, v8

    sub-int/2addr v6, v8

    const/16 v8, 0x49

    const/16 v9, 0x44

    const/4 v10, 0x0

    if-gez v6, :cond_b

    if-eq v1, v9, :cond_b

    if-ne v1, v8, :cond_a

    .line 3117
    sget-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v0

    .line 3119
    :cond_a
    invoke-static {v0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0, v3, v10}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 3123
    :cond_b
    new-instance v11, Landroid/icu/math/BigDecimal;

    invoke-direct {v11}, Landroid/icu/math/BigDecimal;-><init>()V

    .line 3124
    iget-byte v12, v0, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v13, v2, Landroid/icu/math/BigDecimal;->ind:B

    mul-int/2addr v12, v13

    int-to-byte v12, v12

    iput-byte v12, v11, Landroid/icu/math/BigDecimal;->ind:B

    .line 3125
    iput v6, v11, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v6, v5, 0x1

    .line 3126
    new-array v12, v6, [B

    iput-object v12, v11, Landroid/icu/math/BigDecimal;->mant:[B

    add-int v12, v5, v5

    add-int/2addr v12, v7

    .line 3131
    iget-object v13, v0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v13, v12}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v13

    .line 3134
    iget-object v15, v2, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3138
    aget-byte v14, v15, v10

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v14, v7

    .line 3139
    array-length v8, v15

    if-le v8, v7, :cond_c

    .line 3140
    aget-byte v8, v15, v7

    add-int/2addr v14, v8

    :cond_c
    move v8, v14

    move/from16 v20, v10

    move v14, v12

    move-object/from16 v16, v13

    move v13, v14

    :goto_1
    move v9, v10

    move-object/from16 v7, v16

    :goto_2
    if-ge v13, v14, :cond_d

    move/from16 v22, v8

    move-object/from16 v17, v15

    goto :goto_5

    :cond_d
    if-ne v13, v14, :cond_2c

    move/from16 v16, v13

    :goto_3
    if-lez v16, :cond_18

    move/from16 v22, v8

    .line 3160
    array-length v8, v15

    if-ge v10, v8, :cond_e

    .line 3161
    aget-byte v8, v15, v10

    move-object/from16 v17, v15

    goto :goto_4

    :cond_e
    move-object/from16 v17, v15

    const/4 v8, 0x0

    .line 3164
    :goto_4
    aget-byte v15, v7, v10

    if-ge v15, v8, :cond_16

    :goto_5
    if-eqz v20, :cond_f

    const/4 v8, 0x1

    goto :goto_6

    :cond_f
    const/4 v8, 0x0

    :goto_6
    if-eqz v9, :cond_10

    const/4 v10, 0x1

    goto :goto_7

    :cond_10
    const/4 v10, 0x0

    :goto_7
    or-int/2addr v8, v10

    if-eqz v8, :cond_13

    .line 3223
    iget-object v8, v11, Landroid/icu/math/BigDecimal;->mant:[B

    int-to-byte v9, v9

    aput-byte v9, v8, v20

    add-int/lit8 v8, v20, 0x1

    if-ne v8, v6, :cond_11

    goto :goto_8

    :cond_11
    const/4 v9, 0x0

    .line 3227
    aget-byte v10, v7, v9

    if-nez v10, :cond_12

    :goto_8
    move/from16 v20, v8

    goto :goto_9

    :cond_12
    move/from16 v20, v8

    :cond_13
    if-ltz v4, :cond_14

    .line 3232
    iget v8, v11, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v8, v8

    if-le v8, v4, :cond_14

    goto :goto_9

    :cond_14
    const/16 v15, 0x44

    if-eq v1, v15, :cond_15

    .line 3236
    iget v8, v11, Landroid/icu/math/BigDecimal;->exp:I

    if-gtz v8, :cond_15

    goto :goto_9

    .line 3238
    :cond_15
    iget v8, v11, Landroid/icu/math/BigDecimal;->exp:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, v11, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v16, v7

    move v9, v15

    move-object/from16 v15, v17

    move/from16 v8, v22

    const/4 v7, 0x1

    const/4 v10, 0x0

    goto :goto_1

    .line 3166
    :cond_16
    aget-byte v15, v7, v10

    if-le v15, v8, :cond_17

    const/4 v8, 0x0

    .line 3184
    aget-byte v10, v7, v8

    const/16 v8, 0x49

    const/4 v15, 0x1

    goto/16 :goto_15

    :cond_17
    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v15, v17

    move/from16 v8, v22

    goto :goto_3

    :cond_18
    const/4 v8, 0x1

    add-int/2addr v9, v8

    .line 3176
    iget-object v6, v11, Landroid/icu/math/BigDecimal;->mant:[B

    int-to-byte v9, v9

    aput-byte v9, v6, v20

    add-int/lit8 v20, v20, 0x1

    const/4 v6, 0x0

    .line 3178
    aput-byte v6, v7, v6

    :goto_9
    if-nez v20, :cond_19

    const/4 v6, 0x1

    goto :goto_a

    :cond_19
    move/from16 v6, v20

    :goto_a
    const/16 v8, 0x49

    if-ne v1, v8, :cond_1a

    const/4 v8, 0x1

    goto :goto_b

    :cond_1a
    const/4 v8, 0x0

    :goto_b
    const/16 v9, 0x52

    if-ne v1, v9, :cond_1b

    const/4 v10, 0x1

    goto :goto_c

    :cond_1b
    const/4 v10, 0x0

    :goto_c
    or-int/2addr v8, v10

    if-eqz v8, :cond_25

    .line 3252
    iget v8, v11, Landroid/icu/math/BigDecimal;->exp:I

    add-int v10, v6, v8

    if-gt v10, v5, :cond_24

    if-ne v1, v9, :cond_26

    .line 3258
    iget-object v1, v11, Landroid/icu/math/BigDecimal;->mant:[B

    const/4 v4, 0x0

    aget-byte v1, v1, v4

    if-nez v1, :cond_1c

    .line 3259
    invoke-static {v0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0, v3, v4}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 3260
    :cond_1c
    aget-byte v1, v7, v4

    if-nez v1, :cond_1d

    .line 3261
    sget-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v0

    .line 3262
    :cond_1d
    iget-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    iput-byte v1, v11, Landroid/icu/math/BigDecimal;->ind:B

    .line 3267
    iget-object v1, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    sub-int/2addr v12, v1

    sub-int/2addr v8, v12

    .line 3268
    iget v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v8, v1

    iput v8, v11, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v1, v13, -0x1

    :goto_d
    const/4 v4, 0x1

    if-lt v1, v4, :cond_22

    .line 3277
    iget v4, v11, Landroid/icu/math/BigDecimal;->exp:I

    iget v5, v0, Landroid/icu/math/BigDecimal;->exp:I

    if-ge v4, v5, :cond_1e

    const/4 v4, 0x1

    goto :goto_e

    :cond_1e
    const/4 v4, 0x0

    :goto_e
    iget v5, v11, Landroid/icu/math/BigDecimal;->exp:I

    iget v6, v2, Landroid/icu/math/BigDecimal;->exp:I

    if-ge v5, v6, :cond_1f

    const/4 v5, 0x1

    goto :goto_f

    :cond_1f
    const/4 v5, 0x0

    :goto_f
    and-int/2addr v4, v5

    if-nez v4, :cond_20

    goto :goto_10

    .line 3279
    :cond_20
    aget-byte v4, v7, v1

    if-eqz v4, :cond_21

    goto :goto_10

    :cond_21
    add-int/lit8 v13, v13, -0x1

    .line 3282
    iget v4, v11, Landroid/icu/math/BigDecimal;->exp:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v11, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 3285
    :cond_22
    :goto_10
    array-length v0, v7

    if-ge v13, v0, :cond_23

    .line 3286
    new-array v0, v13, [B

    const/4 v1, 0x0

    .line 3287
    invoke-static {v7, v1, v0, v1, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_11

    :cond_23
    const/4 v1, 0x0

    move-object v0, v7

    .line 3290
    :goto_11
    iput-object v0, v11, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3291
    invoke-direct {v11, v3, v1}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 3253
    :cond_24
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    const/4 v1, 0x0

    .line 3301
    aget-byte v0, v7, v1

    if-eqz v0, :cond_26

    .line 3302
    iget-object v0, v11, Landroid/icu/math/BigDecimal;->mant:[B

    add-int/lit8 v1, v6, -0x1

    aget-byte v2, v0, v1

    .line 3303
    rem-int/lit8 v5, v2, 0x5

    if-nez v5, :cond_26

    const/4 v5, 0x1

    add-int/2addr v2, v5

    int-to-byte v2, v2

    .line 3304
    aput-byte v2, v0, v1

    :cond_26
    if-ltz v4, :cond_29

    .line 3313
    iget-object v0, v11, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    if-eq v6, v1, :cond_27

    .line 3315
    iget v1, v11, Landroid/icu/math/BigDecimal;->exp:I

    array-length v0, v0

    sub-int/2addr v0, v6

    sub-int/2addr v1, v0

    iput v1, v11, Landroid/icu/math/BigDecimal;->exp:I

    .line 3317
    :cond_27
    iget-object v0, v11, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    iget v1, v11, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v1, v1

    sub-int/2addr v1, v4

    sub-int/2addr v0, v1

    .line 3318
    iget v1, v3, Landroid/icu/math/MathContext;->roundingMode:I

    invoke-direct {v11, v0, v1}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    .line 3321
    iget v0, v11, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v1, v4

    if-eq v0, v1, :cond_28

    .line 3322
    iget-object v0, v11, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v0

    iput-object v0, v11, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3323
    iget v0, v11, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v0, v2

    iput v0, v11, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_12

    :cond_28
    const/4 v2, 0x1

    .line 3325
    :goto_12
    invoke-direct {v11, v3, v2}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 3330
    :cond_29
    iget-object v0, v11, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    if-ne v6, v1, :cond_2a

    .line 3331
    invoke-direct {v11, v3}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    :goto_13
    const/4 v15, 0x1

    goto :goto_14

    :cond_2a
    const/4 v10, 0x0

    .line 3334
    aget-byte v1, v0, v10

    if-nez v1, :cond_2b

    .line 3335
    sget-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v0

    .line 3339
    :cond_2b
    new-array v1, v6, [B

    .line 3340
    invoke-static {v0, v10, v1, v10, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3341
    iput-object v1, v11, Landroid/icu/math/BigDecimal;->mant:[B

    goto :goto_13

    .line 3343
    :goto_14
    invoke-direct {v11, v3, v15}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_2c
    move/from16 v22, v8

    move-object/from16 v17, v15

    const/16 v8, 0x49

    const/4 v15, 0x1

    .line 3188
    aget-byte v16, v7, v10

    mul-int/lit8 v10, v16, 0xa

    if-le v13, v15, :cond_2d

    .line 3190
    aget-byte v16, v7, v15

    add-int v10, v10, v16

    :cond_2d
    :goto_15
    mul-int/lit8 v10, v10, 0xa

    .line 3193
    div-int v10, v10, v22

    if-nez v10, :cond_2e

    move v10, v15

    :cond_2e
    add-int/2addr v9, v10

    neg-int v10, v10

    const/16 v19, 0x1

    move/from16 v21, v14

    move-object v14, v7

    move/from16 v24, v15

    move-object/from16 v7, v17

    const/16 v23, 0x44

    move v15, v13

    move-object/from16 v16, v7

    move/from16 v17, v21

    move/from16 v18, v10

    .line 3198
    invoke-static/range {v14 .. v19}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v10

    const/4 v14, 0x0

    .line 3199
    aget-byte v15, v10, v14

    if-eqz v15, :cond_2f

    move-object v15, v7

    move-object v7, v10

    move/from16 v14, v21

    move/from16 v8, v22

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_2f
    add-int/lit8 v14, v13, -0x2

    move v15, v13

    const/4 v13, 0x0

    :goto_16
    if-gt v13, v14, :cond_31

    .line 3209
    aget-byte v16, v10, v13

    if-eqz v16, :cond_30

    goto :goto_17

    :cond_30
    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_16

    :cond_31
    :goto_17
    if-nez v13, :cond_32

    const/4 v14, 0x0

    goto :goto_18

    :cond_32
    const/4 v14, 0x0

    .line 3217
    invoke-static {v10, v13, v10, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_18
    move v13, v15

    move/from16 v8, v22

    move-object v15, v7

    move-object v7, v10

    move v10, v14

    move/from16 v14, v21

    goto/16 :goto_2

    .line 3080
    :cond_33
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final extend([BI)[B
    .locals 2

    .line 3371
    array-length v0, p0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 3373
    :cond_0
    new-array p1, p1, [B

    .line 3374
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object p1
.end method

.method private finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;
    .locals 7

    .line 3723
    iget v0, p1, Landroid/icu/math/MathContext;->digits:I

    if-eqz v0, :cond_0

    .line 3724
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    iget v1, p1, Landroid/icu/math/MathContext;->digits:I

    if-le v0, v1, :cond_0

    .line 3725
    invoke-direct {p0, p1}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 3731
    iget p2, p1, Landroid/icu/math/MathContext;->form:I

    if-eqz p2, :cond_3

    .line 3732
    iget-object p2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length p2, p2

    add-int/lit8 v2, p2, -0x1

    :goto_0
    if-lt v2, v0, :cond_2

    .line 3737
    iget-object v3, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 3740
    iget v3, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3743
    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v2

    if-ge p2, v3, :cond_3

    .line 3744
    new-array v3, p2, [B

    .line 3745
    invoke-static {v2, v1, v3, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3746
    iput-object v3, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3750
    :cond_3
    iput-byte v1, p0, Landroid/icu/math/BigDecimal;->form:B

    .line 3754
    iget-object p2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length p2, p2

    move v2, v1

    :goto_2
    const-string v3, "Exponent Overflow: "

    const v4, -0x3b9ac9ff

    if-lez p2, :cond_e

    .line 3757
    iget-object v5, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v6, v5, v2

    if-eqz v6, :cond_d

    if-lez v2, :cond_4

    .line 3762
    array-length p2, v5

    sub-int/2addr p2, v2

    new-array p2, p2, [B

    .line 3763
    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-static {v5, v2, p2, v1, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3765
    iput-object p2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3769
    :cond_4
    iget p2, p0, Landroid/icu/math/BigDecimal;->exp:I

    iget-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v2, v2

    add-int/2addr p2, v2

    const v2, 0x3b9ac9ff

    if-lez p2, :cond_6

    .line 3771
    iget v5, p1, Landroid/icu/math/MathContext;->digits:I

    if-le p2, v5, :cond_5

    .line 3772
    iget v5, p1, Landroid/icu/math/MathContext;->digits:I

    if-eqz v5, :cond_5

    .line 3773
    iget p1, p1, Landroid/icu/math/MathContext;->form:I

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/icu/math/BigDecimal;->form:B

    :cond_5
    add-int/lit8 p1, p2, -0x1

    if-gt p1, v2, :cond_7

    return-object p0

    :cond_6
    const/4 v5, -0x5

    if-ge p2, v5, :cond_7

    .line 3777
    iget p1, p1, Landroid/icu/math/MathContext;->form:I

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/icu/math/BigDecimal;->form:B

    :cond_7
    add-int/lit8 p2, p2, -0x1

    if-ge p2, v4, :cond_8

    move p1, v0

    goto :goto_3

    :cond_8
    move p1, v1

    :goto_3
    if-le p2, v2, :cond_9

    goto :goto_4

    :cond_9
    move v0, v1

    :goto_4
    or-int/2addr p1, v0

    if-eqz p1, :cond_c

    .line 3783
    iget-byte p1, p0, Landroid/icu/math/BigDecimal;->form:B

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 3784
    rem-int/lit8 p1, p2, 0x3

    if-gez p1, :cond_a

    add-int/lit8 p1, p1, 0x3

    :cond_a
    sub-int/2addr p2, p1

    if-lt p2, v4, :cond_b

    if-gt p2, v2, :cond_b

    goto :goto_5

    .line 3793
    :cond_b
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    return-object p0

    :cond_d
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3802
    :cond_e
    iput-byte v1, p0, Landroid/icu/math/BigDecimal;->ind:B

    .line 3804
    iget p1, p1, Landroid/icu/math/MathContext;->form:I

    if-eqz p1, :cond_f

    .line 3805
    iput v1, p0, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_6

    .line 3806
    :cond_f
    iget p1, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-lez p1, :cond_10

    .line 3807
    iput v1, p0, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_6

    :cond_10
    if-lt p1, v4, :cond_11

    .line 3814
    :goto_6
    sget-object p1, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    iget-object p1, p1, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object p1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    return-object p0

    .line 3811
    :cond_11
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/math/BigDecimal;->exp:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private intcheck(II)I
    .locals 2

    .line 3021
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->intValueExact()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p0, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-le p0, p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    or-int/2addr p1, v0

    if-nez p1, :cond_2

    return p0

    .line 3024
    :cond_2
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Conversion overflow: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private layout()[C
    .locals 9

    .line 2894
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    new-array v1, v1, [C

    .line 2896
    array-length v0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x30

    const/4 v5, 0x1

    if-lez v0, :cond_0

    .line 2899
    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v6, v6, v3

    add-int/2addr v6, v4

    int-to-char v4, v6

    aput-char v4, v1, v3

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v3, v5

    goto :goto_0

    .line 2903
    :cond_0
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->form:B

    const/16 v3, 0x2e

    const/16 v6, 0x2d

    const/4 v7, -0x1

    if-eqz v0, :cond_9

    .line 2904
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v8, v1

    add-int/lit8 v8, v8, 0xf

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2905
    iget-byte v8, p0, Landroid/icu/math/BigDecimal;->ind:B

    if-ne v8, v7, :cond_1

    .line 2906
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2907
    :cond_1
    iget v7, p0, Landroid/icu/math/BigDecimal;->exp:I

    array-length v8, v1

    add-int/2addr v7, v8

    sub-int/2addr v7, v5

    .line 2909
    iget-byte p0, p0, Landroid/icu/math/BigDecimal;->form:B

    if-ne p0, v5, :cond_2

    .line 2910
    aget-char p0, v1, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2911
    array-length p0, v1

    if-le p0, v5, :cond_5

    .line 2912
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length p0, v1

    sub-int/2addr p0, v5

    invoke-virtual {v0, v1, v5, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2915
    :cond_2
    rem-int/lit8 p0, v7, 0x3

    if-gez p0, :cond_3

    add-int/lit8 p0, p0, 0x3

    :cond_3
    sub-int/2addr v7, p0

    add-int/2addr p0, v5

    .line 2920
    array-length v5, v1

    if-lt p0, v5, :cond_4

    .line 2921
    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2923
    array-length v1, v1

    sub-int/2addr p0, v1

    :goto_1
    if-lez p0, :cond_5

    .line 2925
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 2929
    :cond_4
    invoke-virtual {v0, v1, v2, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v3, v1

    sub-int/2addr v3, p0

    invoke-virtual {v0, v1, p0, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    if-eqz v7, :cond_7

    if-gez v7, :cond_6

    neg-int v7, v7

    goto :goto_3

    :cond_6
    const/16 v6, 0x2b

    :goto_3
    const/16 p0, 0x45

    .line 2939
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2941
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    new-array p0, p0, [C

    .line 2942
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 2944
    invoke-virtual {v0, v2, v1, p0, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    :cond_8
    return-object p0

    .line 2950
    :cond_9
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-nez v0, :cond_b

    .line 2951
    iget-byte p0, p0, Landroid/icu/math/BigDecimal;->ind:B

    if-ltz p0, :cond_a

    return-object v1

    .line 2953
    :cond_a
    array-length p0, v1

    add-int/2addr p0, v5

    new-array p0, p0, [C

    .line 2954
    aput-char v6, p0, v2

    .line 2955
    array-length v0, v1

    invoke-static {v1, v2, p0, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 2960
    :cond_b
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    if-ne v0, v7, :cond_c

    move v0, v5

    goto :goto_4

    :cond_c
    move v0, v2

    .line 2965
    :goto_4
    iget p0, p0, Landroid/icu/math/BigDecimal;->exp:I

    array-length v7, v1

    add-int/2addr v7, p0

    if-ge v7, v5, :cond_f

    add-int/lit8 v8, v0, 0x2

    sub-int p0, v8, p0

    .line 2969
    new-array p0, p0, [C

    if-eqz v0, :cond_d

    .line 2971
    aput-char v6, p0, v2

    .line 2972
    :cond_d
    aput-char v4, p0, v0

    add-int/2addr v0, v5

    .line 2973
    aput-char v3, p0, v0

    neg-int v0, v7

    move v3, v8

    :goto_5
    if-lez v0, :cond_e

    .line 2978
    aput-char v4, p0, v3

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v3, v5

    goto :goto_5

    :cond_e
    sub-int/2addr v8, v7

    .line 2981
    array-length v0, v1

    invoke-static {v1, v2, p0, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 2986
    :cond_f
    array-length p0, v1

    if-le v7, p0, :cond_12

    add-int p0, v0, v7

    .line 2988
    new-array p0, p0, [C

    if-eqz v0, :cond_10

    .line 2990
    aput-char v6, p0, v2

    .line 2991
    :cond_10
    array-length v3, v1

    invoke-static {v1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2993
    array-length v2, v1

    sub-int/2addr v7, v2

    .line 2994
    array-length v1, v1

    add-int/2addr v0, v1

    :goto_6
    if-lez v7, :cond_11

    .line 2996
    aput-char v4, p0, v0

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v0, v5

    goto :goto_6

    :cond_11
    return-object p0

    :cond_12
    add-int/lit8 p0, v0, 0x1

    .line 3003
    array-length v4, v1

    add-int/2addr p0, v4

    .line 3004
    new-array p0, p0, [C

    if-eqz v0, :cond_13

    .line 3006
    aput-char v6, p0, v2

    .line 3007
    :cond_13
    invoke-static {v1, v2, p0, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v7

    .line 3008
    aput-char v3, p0, v0

    add-int/2addr v0, v5

    .line 3009
    array-length v2, v1

    sub-int/2addr v2, v7

    invoke-static {v1, v7, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private round(II)Landroid/icu/math/BigDecimal;
    .locals 11

    .line 3588
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    sub-int/2addr v1, p1

    if-gtz v1, :cond_0

    return-object p0

    .line 3592
    :cond_0
    iget v2, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/icu/math/BigDecimal;->exp:I

    .line 3593
    iget-byte v1, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p1, :cond_1

    .line 3597
    new-array v4, p1, [B

    iput-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3598
    iget-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v0, v3, v4, v3, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3600
    aget-byte v4, v0, p1

    move v10, v2

    goto :goto_0

    .line 3602
    :cond_1
    sget-object v4, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    iget-object v4, v4, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3603
    iput-byte v3, p0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez p1, :cond_2

    .line 3606
    aget-byte v4, v0, v3

    move v10, v3

    goto :goto_0

    :cond_2
    move v4, v3

    move v10, v4

    :goto_0
    const/4 v5, 0x4

    const/4 v6, 0x5

    if-ne p2, v5, :cond_3

    if-lt v4, v6, :cond_e

    goto/16 :goto_2

    :cond_3
    const/4 v5, 0x7

    if-ne p2, v5, :cond_5

    .line 3620
    invoke-static {v0, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 3621
    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Rounding necessary"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-ne p2, v6, :cond_7

    if-le v4, v6, :cond_6

    goto :goto_2

    :cond_6
    if-ne v4, v6, :cond_e

    add-int/2addr p1, v2

    .line 3626
    invoke-static {v0, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_2

    :cond_7
    const/4 v5, 0x6

    const/4 v7, 0x2

    if-ne p2, v5, :cond_a

    if-le v4, v6, :cond_8

    goto :goto_2

    :cond_8
    if-ne v4, v6, :cond_e

    add-int/2addr p1, v2

    .line 3632
    invoke-static {v0, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    .line 3635
    :cond_9
    iget-object p1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length p2, p1

    sub-int/2addr p2, v2

    aget-byte p1, p1, p2

    rem-int/2addr p1, v7

    if-eqz p1, :cond_e

    goto :goto_2

    :cond_a
    if-ne p2, v2, :cond_b

    goto :goto_1

    :cond_b
    if-nez p2, :cond_c

    .line 3641
    invoke-static {v0, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_2

    :cond_c
    if-ne p2, v7, :cond_d

    if-lez v1, :cond_e

    .line 3645
    invoke-static {v0, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_2

    :cond_d
    const/4 v4, 0x3

    if-ne p2, v4, :cond_14

    if-gez v1, :cond_e

    .line 3649
    invoke-static {v0, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_2

    :cond_e
    :goto_1
    move v1, v3

    :goto_2
    if-eqz v1, :cond_12

    .line 3659
    iget-byte p1, p0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez p1, :cond_f

    .line 3661
    sget-object p1, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iget-object p1, p1, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object p1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    int-to-byte p1, v1

    .line 3662
    iput-byte p1, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_4

    :cond_f
    const/4 p2, -0x1

    if-ne p1, p2, :cond_10

    neg-int p1, v1

    move v9, p1

    goto :goto_3

    :cond_10
    move v9, v1

    .line 3667
    :goto_3
    iget-object v5, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v5

    sget-object p1, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iget-object v7, p1, Landroid/icu/math/BigDecimal;->mant:[B

    const/4 v8, 0x1

    invoke-static/range {v5 .. v10}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object p1

    .line 3668
    array-length p2, p1

    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    if-le p2, v1, :cond_11

    .line 3670
    iget p2, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr p2, v2

    iput p2, p0, Landroid/icu/math/BigDecimal;->exp:I

    .line 3672
    array-length p2, v0

    invoke-static {p1, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_4

    .line 3675
    :cond_11
    iput-object p1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3680
    :cond_12
    :goto_4
    iget p1, p0, Landroid/icu/math/BigDecimal;->exp:I

    const p2, 0x3b9ac9ff

    if-gt p1, p2, :cond_13

    return-object p0

    .line 3681
    :cond_13
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exponent Overflow: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/math/BigDecimal;->exp:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3652
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad round value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 1

    .line 3567
    iget v0, p1, Landroid/icu/math/MathContext;->digits:I

    iget p1, p1, Landroid/icu/math/MathContext;->roundingMode:I

    invoke-direct {p0, v0, p1}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(D)Landroid/icu/math/BigDecimal;
    .locals 2

    .line 2817
    new-instance v0, Landroid/icu/math/BigDecimal;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p0, p1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(J)Landroid/icu/math/BigDecimal;
    .locals 1

    const/4 v0, 0x0

    .line 2829
    invoke-static {p0, p1, v0}, Landroid/icu/math/BigDecimal;->valueOf(JI)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(JI)Landroid/icu/math/BigDecimal;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2853
    sget-object p0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 2855
    sget-object p0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 2857
    sget-object p0, Landroid/icu/math/BigDecimal;->TEN:Landroid/icu/math/BigDecimal;

    goto :goto_0

    .line 2859
    :cond_2
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Landroid/icu/math/BigDecimal;-><init>(J)V

    move-object p0, v0

    :goto_0
    if-nez p2, :cond_3

    return-object p0

    :cond_3
    if-ltz p2, :cond_4

    .line 2866
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    neg-int p1, p2

    .line 2867
    iput p1, p0, Landroid/icu/math/BigDecimal;->exp:I

    return-object p0

    .line 2865
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Negative scale: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abs()Landroid/icu/math/BigDecimal;
    .locals 1

    .line 936
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, v0}, Landroid/icu/math/BigDecimal;->abs(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public abs(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2

    .line 951
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 952
    invoke-virtual {p0, p1}, Landroid/icu/math/BigDecimal;->negate(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 953
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1

    .line 969
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1002
    iget-boolean v3, v2, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v3, :cond_0

    .line 1003
    iget v3, v2, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {v0, v1, v3}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    .line 1008
    :cond_0
    iget-byte v3, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v3, :cond_1

    .line 1009
    iget v3, v2, Landroid/icu/math/MathContext;->form:I

    if-eqz v3, :cond_1

    .line 1010
    invoke-virtual/range {p1 .. p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1011
    :cond_1
    iget-byte v3, v1, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v3, :cond_2

    .line 1012
    iget v3, v2, Landroid/icu/math/MathContext;->form:I

    if-eqz v3, :cond_2

    .line 1013
    invoke-virtual {v0, v2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1016
    :cond_2
    iget v3, v2, Landroid/icu/math/MathContext;->digits:I

    if-lez v3, :cond_4

    .line 1018
    iget-object v4, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    if-le v4, v3, :cond_3

    .line 1019
    invoke-static/range {p0 .. p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0, v2}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 1020
    :cond_3
    iget-object v4, v1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    if-le v4, v3, :cond_4

    .line 1021
    invoke-static/range {p1 .. p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v1

    invoke-direct {v1, v2}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v1

    .line 1025
    :cond_4
    new-instance v4, Landroid/icu/math/BigDecimal;

    invoke-direct {v4}, Landroid/icu/math/BigDecimal;-><init>()V

    .line 1035
    iget-object v5, v0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1036
    array-length v6, v5

    .line 1037
    iget-object v7, v1, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1038
    array-length v8, v7

    .line 1041
    iget v9, v0, Landroid/icu/math/BigDecimal;->exp:I

    iget v10, v1, Landroid/icu/math/BigDecimal;->exp:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v9, v10, :cond_5

    .line 1043
    iput v9, v4, Landroid/icu/math/BigDecimal;->exp:I

    goto/16 :goto_0

    :cond_5
    if-le v9, v10, :cond_9

    add-int v13, v6, v9

    sub-int/2addr v13, v10

    add-int v10, v8, v3

    add-int/2addr v10, v12

    if-lt v13, v10, :cond_7

    if-lez v3, :cond_7

    .line 1053
    iput-object v5, v4, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1054
    iput v9, v4, Landroid/icu/math/BigDecimal;->exp:I

    .line 1055
    iget-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    iput-byte v1, v4, Landroid/icu/math/BigDecimal;->ind:B

    if-ge v6, v3, :cond_6

    .line 1057
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v0, v3}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v0

    iput-object v0, v4, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1058
    iget v0, v4, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v3, v6

    sub-int/2addr v0, v3

    iput v0, v4, Landroid/icu/math/BigDecimal;->exp:I

    .line 1060
    :cond_6
    invoke-direct {v4, v2, v11}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1063
    :cond_7
    iget v9, v1, Landroid/icu/math/BigDecimal;->exp:I

    iput v9, v4, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v9, v3, 0x1

    if-le v13, v9, :cond_8

    if-lez v3, :cond_8

    sub-int/2addr v13, v3

    sub-int/2addr v13, v12

    sub-int/2addr v8, v13

    .line 1069
    iget v3, v4, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v3, v13

    iput v3, v4, Landroid/icu/math/BigDecimal;->exp:I

    move v13, v9

    :cond_8
    if-le v13, v6, :cond_d

    move v6, v13

    goto :goto_0

    :cond_9
    add-int v13, v8, v10

    sub-int/2addr v13, v9

    add-int v9, v6, v3

    add-int/2addr v9, v12

    if-lt v13, v9, :cond_b

    if-lez v3, :cond_b

    .line 1079
    iput-object v7, v4, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1080
    iput v10, v4, Landroid/icu/math/BigDecimal;->exp:I

    .line 1081
    iget-byte v0, v1, Landroid/icu/math/BigDecimal;->ind:B

    iput-byte v0, v4, Landroid/icu/math/BigDecimal;->ind:B

    if-ge v8, v3, :cond_a

    .line 1083
    iget-object v0, v1, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v0, v3}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v0

    iput-object v0, v4, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1084
    iget v0, v4, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v3, v8

    sub-int/2addr v0, v3

    iput v0, v4, Landroid/icu/math/BigDecimal;->exp:I

    .line 1086
    :cond_a
    invoke-direct {v4, v2, v11}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1089
    :cond_b
    iget v9, v0, Landroid/icu/math/BigDecimal;->exp:I

    iput v9, v4, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v9, v3, 0x1

    if-le v13, v9, :cond_c

    if-lez v3, :cond_c

    sub-int/2addr v13, v3

    sub-int/2addr v13, v12

    sub-int/2addr v6, v13

    .line 1095
    iget v3, v4, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v3, v13

    iput v3, v4, Landroid/icu/math/BigDecimal;->exp:I

    move v13, v9

    :cond_c
    if-le v13, v8, :cond_d

    move v8, v13

    .line 1108
    :cond_d
    :goto_0
    iget-byte v3, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v3, :cond_e

    .line 1109
    iput-byte v12, v4, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_1

    .line 1111
    :cond_e
    iput-byte v3, v4, Landroid/icu/math/BigDecimal;->ind:B

    .line 1112
    :goto_1
    iget-byte v3, v0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v9, -0x1

    if-ne v3, v9, :cond_f

    move v3, v12

    goto :goto_2

    :cond_f
    move v3, v11

    :goto_2
    iget-byte v10, v1, Landroid/icu/math/BigDecimal;->ind:B

    if-ne v10, v9, :cond_10

    move v10, v12

    goto :goto_3

    :cond_10
    move v10, v11

    :goto_3
    if-ne v3, v10, :cond_11

    move v13, v6

    move-object v14, v7

    move v15, v8

    move/from16 v16, v12

    move-object v12, v5

    goto/16 :goto_c

    .line 1123
    :cond_11
    iget-byte v1, v1, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v1, :cond_12

    goto :goto_a

    :cond_12
    if-ge v6, v8, :cond_13

    move v1, v12

    goto :goto_4

    :cond_13
    move v1, v11

    .line 1125
    :goto_4
    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v0, :cond_14

    move v0, v12

    goto :goto_5

    :cond_14
    move v0, v11

    :goto_5
    or-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 1132
    iget-byte v0, v4, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, v4, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_9

    :cond_15
    if-le v6, v8, :cond_16

    goto :goto_a

    .line 1140
    :cond_16
    array-length v0, v5

    sub-int/2addr v0, v12

    .line 1141
    array-length v1, v7

    sub-int/2addr v1, v12

    move v3, v11

    move v10, v3

    :goto_6
    if-gt v3, v0, :cond_17

    .line 1145
    aget-byte v12, v5, v3

    goto :goto_7

    :cond_17
    if-le v10, v1, :cond_18

    .line 1148
    iget v0, v2, Landroid/icu/math/MathContext;->form:I

    if-eqz v0, :cond_1a

    .line 1149
    sget-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v0

    :cond_18
    move v12, v11

    :goto_7
    if-gt v10, v1, :cond_19

    .line 1156
    aget-byte v13, v7, v10

    goto :goto_8

    :cond_19
    move v13, v11

    :goto_8
    if-eq v12, v13, :cond_1b

    if-ge v12, v13, :cond_1a

    .line 1167
    iget-byte v0, v4, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, v4, Landroid/icu/math/BigDecimal;->ind:B

    :goto_9
    move-object v14, v5

    move v15, v6

    move-object v12, v7

    move v13, v8

    goto :goto_b

    :cond_1a
    :goto_a
    move-object v12, v5

    move v13, v6

    move-object v14, v7

    move v15, v8

    :goto_b
    move/from16 v16, v9

    :goto_c
    const/16 v17, 0x0

    .line 1185
    invoke-static/range {v12 .. v17}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v0

    iput-object v0, v4, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1189
    invoke-direct {v4, v2, v11}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_6
.end method

.method public byteValueExact()B
    .locals 5

    .line 1877
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->intValueExact()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x7f

    if-le v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/16 v4, -0x80

    if-ge v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v1, v3

    if-nez v1, :cond_2

    int-to-byte p0, v0

    return p0

    .line 1879
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conversion overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareTo(Landroid/icu/math/BigDecimal;)I
    .locals 1

    .line 1205
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I

    move-result p0

    return p0
.end method

.method public compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I
    .locals 6

    .line 1240
    iget-boolean v0, p2, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    .line 1241
    iget v0, p2, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v0}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    .line 1243
    :cond_0
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v1, p1, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget v1, p0, Landroid/icu/math/BigDecimal;->exp:I

    iget v4, p1, Landroid/icu/math/BigDecimal;->exp:I

    if-ne v1, v4, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 1245
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    .line 1246
    iget-object v1, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 1247
    iget-byte p0, p0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int p0, p0

    int-to-byte p0, p0

    return p0

    .line 1248
    :cond_3
    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 1249
    iget-byte p0, p0, Landroid/icu/math/BigDecimal;->ind:B

    return p0

    .line 1254
    :cond_4
    iget v1, p2, Landroid/icu/math/MathContext;->digits:I

    if-gt v0, v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    iget v4, p2, Landroid/icu/math/MathContext;->digits:I

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    or-int/2addr v1, v2

    if-eqz v1, :cond_c

    move p2, v3

    :goto_4
    if-lez v0, :cond_9

    .line 1259
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v2, v1, p2

    iget-object v4, p1, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v5, v4, p2

    if-ge v2, v5, :cond_7

    .line 1260
    iget-byte p0, p0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int p0, p0

    int-to-byte p0, p0

    return p0

    .line 1261
    :cond_7
    aget-byte v1, v1, p2

    aget-byte v2, v4, p2

    if-le v1, v2, :cond_8

    .line 1262
    iget-byte p0, p0, Landroid/icu/math/BigDecimal;->ind:B

    return p0

    :cond_8
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_9
    return v3

    .line 1270
    :cond_a
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v1, p1, Landroid/icu/math/BigDecimal;->ind:B

    if-ge v0, v1, :cond_b

    const/4 p0, -0x1

    return p0

    :cond_b
    if-le v0, v1, :cond_c

    return v2

    .line 1276
    :cond_c
    invoke-static {p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p1

    .line 1277
    iget-byte v0, p1, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/icu/math/BigDecimal;->ind:B

    .line 1278
    invoke-virtual {p0, p1, p2}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    iget-byte p0, p0, Landroid/icu/math/BigDecimal;->ind:B

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 224
    check-cast p1, Landroid/icu/math/BigDecimal;

    invoke-virtual {p0, p1}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    move-result p0

    return p0
.end method

.method public divide(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 3

    .line 1296
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/16 v1, 0x44

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .locals 2

    .line 1321
    new-instance v0, Landroid/icu/math/MathContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p2}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    const/16 p2, 0x44

    const/4 v1, -0x1

    .line 1323
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public divide(Landroid/icu/math/BigDecimal;II)Landroid/icu/math/BigDecimal;
    .locals 2

    if-ltz p2, :cond_0

    .line 1354
    new-instance v0, Landroid/icu/math/MathContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p3}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    const/16 p3, 0x44

    .line 1355
    invoke-direct {p0, p3, p1, v0, p2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 1353
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Negative scale: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public divide(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2

    const/16 v0, 0x44

    const/4 v1, -0x1

    .line 1371
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public divideInteger(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 3

    .line 1387
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/16 v1, 0x49

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public divideInteger(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2

    const/16 v0, 0x49

    const/4 v1, 0x0

    .line 1405
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public doubleValue()D
    .locals 2

    .line 1899
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1930
    :cond_0
    instance-of v1, p1, Landroid/icu/math/BigDecimal;

    if-nez v1, :cond_1

    return v0

    .line 1932
    :cond_1
    check-cast p1, Landroid/icu/math/BigDecimal;

    .line 1933
    iget-byte v1, p0, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v2, p1, Landroid/icu/math/BigDecimal;->ind:B

    if-eq v1, v2, :cond_2

    return v0

    .line 1935
    :cond_2
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    iget-object v2, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    iget v2, p0, Landroid/icu/math/BigDecimal;->exp:I

    iget v4, p1, Landroid/icu/math/BigDecimal;->exp:I

    if-ne v2, v4, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    and-int/2addr v1, v2

    iget-byte v2, p0, Landroid/icu/math/BigDecimal;->form:B

    iget-byte v4, p1, Landroid/icu/math/BigDecimal;->form:B

    if-ne v2, v4, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 1940
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    move v2, v0

    :goto_3
    if-lez v1, :cond_a

    .line 1943
    iget-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v4, v4, v2

    iget-object v5, p1, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v5, v5, v2

    if-eq v4, v5, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1948
    :cond_7
    invoke-direct {p0}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object p0

    .line 1949
    invoke-direct {p1}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object p1

    .line 1950
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_8

    return v0

    .line 1954
    :cond_8
    array-length v1, p0

    move v2, v0

    :goto_4
    if-lez v1, :cond_a

    .line 1957
    aget-char v4, p0, v2

    aget-char v5, p1, v2

    if-eq v4, v5, :cond_9

    return v0

    :cond_9
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    return v3
.end method

.method public floatValue()F
    .locals 0

    .line 1979
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public format(II)Ljava/lang/String;
    .locals 7

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 2022
    invoke-virtual/range {v0 .. v6}, Landroid/icu/math/BigDecimal;->format(IIIIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format(IIIIII)Ljava/lang/String;
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez p1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    or-int/2addr v3, v4

    const-string v4, "format"

    if-eqz v3, :cond_2

    .line 2111
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    const/4 v3, 0x2

    if-ge p2, v0, :cond_3

    .line 2113
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    if-ge p3, v0, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    if-nez p3, :cond_5

    move v6, v2

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    or-int/2addr v5, v6

    const/4 v6, 0x3

    if-eqz v5, :cond_6

    .line 2115
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v6, v5}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    const/4 v5, 0x4

    if-ge p4, v0, :cond_7

    .line 2117
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v7}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    if-ne p5, v2, :cond_8

    goto :goto_4

    :cond_8
    if-ne p5, v3, :cond_9

    goto :goto_4

    :cond_9
    if-ne p5, v0, :cond_a

    move p5, v2

    goto :goto_4

    :cond_a
    const/4 v7, 0x5

    .line 2125
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v4, v7, v8}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :goto_4
    if-eq p6, v5, :cond_c

    if-ne p6, v0, :cond_b

    move p6, v5

    goto :goto_5

    .line 2135
    :cond_b
    :try_start_0
    new-instance v5, Landroid/icu/math/MathContext;

    const/16 v7, 0x9

    invoke-direct {v5, v7, v2, v1, p6}, Landroid/icu/math/MathContext;-><init>(IIZI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 v5, 0x6

    .line 2137
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v7}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    .line 2141
    :cond_c
    :goto_5
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v5

    if-ne p4, v0, :cond_d

    .line 2153
    iput-byte v1, v5, Landroid/icu/math/BigDecimal;->form:B

    goto :goto_6

    .line 2154
    :cond_d
    iget-byte v0, v5, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v0, :cond_e

    .line 2155
    iput-byte v1, v5, Landroid/icu/math/BigDecimal;->form:B

    goto :goto_6

    .line 2158
    :cond_e
    iget v0, v5, Landroid/icu/math/BigDecimal;->exp:I

    iget-object v7, v5, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    add-int/2addr v0, v7

    if-le v0, p4, :cond_f

    int-to-byte p4, p5

    .line 2160
    iput-byte p4, v5, Landroid/icu/math/BigDecimal;->form:B

    goto :goto_6

    :cond_f
    const/4 p4, -0x5

    if-ge v0, p4, :cond_10

    int-to-byte p4, p5

    .line 2162
    iput-byte p4, v5, Landroid/icu/math/BigDecimal;->form:B

    goto :goto_6

    .line 2164
    :cond_10
    iput-byte v1, v5, Landroid/icu/math/BigDecimal;->form:B

    :goto_6
    if-ltz p2, :cond_1a

    .line 2177
    :cond_11
    :goto_7
    iget-byte p4, v5, Landroid/icu/math/BigDecimal;->form:B

    if-nez p4, :cond_12

    .line 2178
    iget p4, v5, Landroid/icu/math/BigDecimal;->exp:I

    neg-int p4, p4

    goto :goto_8

    :cond_12
    if-ne p4, v2, :cond_13

    .line 2180
    iget-object p4, v5, Landroid/icu/math/BigDecimal;->mant:[B

    array-length p4, p4

    sub-int/2addr p4, v2

    goto :goto_8

    .line 2182
    :cond_13
    iget p4, v5, Landroid/icu/math/BigDecimal;->exp:I

    iget-object p5, v5, Landroid/icu/math/BigDecimal;->mant:[B

    array-length p5, p5

    add-int/2addr p4, p5

    sub-int/2addr p4, v2

    rem-int/2addr p4, v6

    if-gez p4, :cond_14

    add-int/lit8 p4, p4, 0x3

    :cond_14
    add-int/2addr p4, v2

    .line 2186
    iget-object p5, v5, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, p5

    if-lt p4, v0, :cond_15

    move p4, v1

    goto :goto_8

    .line 2189
    :cond_15
    array-length p5, p5

    sub-int p4, p5, p4

    :goto_8
    if-ne p4, p2, :cond_16

    goto :goto_9

    :cond_16
    if-ge p4, p2, :cond_18

    .line 2196
    iget-object p5, v5, Landroid/icu/math/BigDecimal;->mant:[B

    array-length p6, p5

    add-int/2addr p6, p2

    sub-int/2addr p6, p4

    invoke-static {p5, p6}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object p5

    .line 2197
    iput-object p5, v5, Landroid/icu/math/BigDecimal;->mant:[B

    .line 2198
    iget p5, v5, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr p2, p4

    sub-int/2addr p5, p2

    iput p5, v5, Landroid/icu/math/BigDecimal;->exp:I

    .line 2199
    iget p2, v5, Landroid/icu/math/BigDecimal;->exp:I

    const p4, -0x3b9ac9ff

    if-lt p2, p4, :cond_17

    goto :goto_9

    .line 2200
    :cond_17
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exponent Overflow: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v5, Landroid/icu/math/BigDecimal;->exp:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    sub-int/2addr p4, p2

    .line 2207
    iget-object p5, v5, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, p5

    if-le p4, v0, :cond_19

    .line 2209
    sget-object p4, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    iget-object p4, p4, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object p4, v5, Landroid/icu/math/BigDecimal;->mant:[B

    .line 2210
    iput-byte v1, v5, Landroid/icu/math/BigDecimal;->ind:B

    .line 2211
    iput v1, v5, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_7

    .line 2216
    :cond_19
    array-length p5, p5

    sub-int/2addr p5, p4

    .line 2217
    iget v0, v5, Landroid/icu/math/BigDecimal;->exp:I

    .line 2218
    invoke-direct {v5, p5, p6}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    .line 2221
    iget p5, v5, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr p5, v0

    if-ne p5, p4, :cond_11

    .line 2227
    :cond_1a
    :goto_9
    invoke-direct {v5}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object p2

    const/16 p4, 0x20

    const/16 p5, 0x45

    if-lez p1, :cond_20

    .line 2234
    array-length p6, p2

    move v0, v1

    :goto_a
    if-lez p6, :cond_1d

    .line 2237
    aget-char v5, p2, v0

    const/16 v7, 0x2e

    if-ne v5, v7, :cond_1b

    goto :goto_b

    .line 2239
    :cond_1b
    aget-char v5, p2, v0

    if-ne v5, p5, :cond_1c

    goto :goto_b

    :cond_1c
    add-int/lit8 p6, p6, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1d
    :goto_b
    if-le v0, p1, :cond_1e

    .line 2246
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, v4, v2, p6}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1e
    if-ge v0, p1, :cond_20

    .line 2248
    array-length p6, p2

    add-int/2addr p6, p1

    sub-int/2addr p6, v0

    new-array p6, p6, [C

    sub-int/2addr p1, v0

    move v0, v1

    :goto_c
    if-lez p1, :cond_1f

    .line 2253
    aput-char p4, p6, v0

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2256
    :cond_1f
    array-length p1, p2

    invoke-static {p2, v1, p6, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, p6

    :cond_20
    if-lez p3, :cond_26

    .line 2265
    array-length p1, p2

    sub-int/2addr p1, v2

    .line 2266
    array-length p6, p2

    sub-int/2addr p6, v2

    :goto_d
    if-lez p1, :cond_22

    .line 2268
    aget-char v0, p2, p6

    if-ne v0, p5, :cond_21

    goto :goto_e

    :cond_21
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p6, p6, -0x1

    goto :goto_d

    :cond_22
    :goto_e
    if-nez p6, :cond_23

    .line 2274
    array-length p0, p2

    add-int/2addr p0, p3

    add-int/2addr p0, v3

    new-array p0, p0, [C

    .line 2275
    array-length p1, p2

    invoke-static {p2, v1, p0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, v3

    .line 2278
    array-length p1, p2

    :goto_f
    if-lez p3, :cond_27

    .line 2280
    aput-char p4, p0, p1

    add-int/lit8 p3, p3, -0x1

    add-int/2addr p1, v2

    goto :goto_f

    .line 2285
    :cond_23
    array-length p1, p2

    sub-int/2addr p1, p6

    sub-int/2addr p1, v3

    if-le p1, p3, :cond_24

    .line 2287
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, v4, v6, p4}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_24
    if-ge p1, p3, :cond_26

    .line 2289
    array-length p0, p2

    add-int/2addr p0, p3

    sub-int/2addr p0, p1

    new-array p0, p0, [C

    add-int/2addr p6, v3

    .line 2290
    invoke-static {p2, v1, p0, v1, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, p1

    move p4, p6

    :goto_10
    if-lez p3, :cond_25

    const/16 p5, 0x30

    .line 2296
    aput-char p5, p0, p4

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_10

    .line 2299
    :cond_25
    invoke-static {p2, p6, p0, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11

    :cond_26
    move-object p0, p2

    .line 2307
    :cond_27
    :goto_11
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public hashCode()I
    .locals 0

    .line 2325
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public intValue()I
    .locals 0

    .line 2340
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public intValueExact()I
    .locals 9

    .line 2361
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2364
    :cond_0
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 2365
    iget v4, p0, Landroid/icu/math/BigDecimal;->exp:I

    const-string v5, "Conversion overflow: "

    const/16 v6, 0x9

    if-gez v4, :cond_3

    add-int/2addr v2, v4

    add-int/lit8 v4, v2, 0x1

    .line 2368
    invoke-static {v0, v4}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    if-gez v2, :cond_1

    return v1

    :cond_1
    move v4, v1

    goto :goto_0

    .line 2369
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decimal part non-zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int v0, v4, v2

    if-gt v0, v6, :cond_9

    :goto_0
    add-int/2addr v4, v2

    move v0, v1

    move v7, v0

    :goto_1
    if-gt v0, v4, :cond_5

    mul-int/lit8 v7, v7, 0xa

    if-gt v0, v2, :cond_4

    .line 2386
    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v8, v8, v0

    add-int/2addr v7, v8

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-ne v4, v6, :cond_7

    const v0, 0x3b9aca00

    .line 2394
    div-int v0, v7, v0

    .line 2395
    iget-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v4, v2, v1

    if-eq v0, v4, :cond_7

    const/high16 v0, -0x80000000

    if-ne v7, v0, :cond_6

    .line 2398
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    .line 2399
    aget-byte v0, v2, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    return v7

    .line 2401
    :cond_6
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2406
    :cond_7
    iget-byte p0, p0, Landroid/icu/math/BigDecimal;->ind:B

    if-ne p0, v3, :cond_8

    return v7

    :cond_8
    neg-int p0, v7

    return p0

    .line 2375
    :cond_9
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longValue()J
    .locals 2

    .line 2423
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public longValueExact()J
    .locals 13

    .line 2443
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2445
    :cond_0
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 2446
    iget v5, p0, Landroid/icu/math/BigDecimal;->exp:I

    const-string v6, "Conversion overflow: "

    const/16 v7, 0x12

    const/4 v8, 0x0

    if-gez v5, :cond_4

    add-int/2addr v3, v5

    if-gez v3, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    .line 2453
    :goto_0
    iget-object v5, p0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v5, v0}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    if-gez v3, :cond_2

    return-wide v1

    :cond_2
    move v5, v8

    goto :goto_1

    .line 2454
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decimal part non-zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2459
    :cond_4
    array-length v0, v0

    add-int/2addr v0, v5

    if-gt v0, v7, :cond_a

    :goto_1
    add-int/2addr v5, v3

    move v0, v8

    :goto_2
    if-gt v0, v5, :cond_6

    const-wide/16 v9, 0xa

    mul-long/2addr v1, v9

    if-gt v0, v3, :cond_5

    .line 2475
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v9, v9, v0

    int-to-long v9, v9

    add-long/2addr v1, v9

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    if-ne v5, v7, :cond_8

    const-wide v9, 0xde0b6b3a7640000L

    .line 2481
    div-long v9, v1, v9

    .line 2482
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v3, v0, v8

    int-to-long v11, v3

    cmp-long v3, v9, v11

    if-eqz v3, :cond_8

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_7

    .line 2485
    iget-byte v3, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    .line 2486
    aget-byte v0, v0, v8

    const/16 v3, 0x9

    if-ne v0, v3, :cond_7

    return-wide v1

    .line 2488
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2493
    :cond_8
    iget-byte p0, p0, Landroid/icu/math/BigDecimal;->ind:B

    if-ne p0, v4, :cond_9

    return-wide v1

    :cond_9
    neg-long v0, v1

    return-wide v0

    .line 2460
    :cond_a
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public max(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1

    .line 1419
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->max(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public max(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 1

    .line 1439
    invoke-virtual {p0, p1, p2}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1440
    invoke-virtual {p0, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 1442
    :cond_0
    invoke-virtual {p1, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public min(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1

    .line 1456
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->min(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public min(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 1

    .line 1476
    invoke-virtual {p0, p1, p2}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1477
    invoke-virtual {p0, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 1479
    :cond_0
    invoke-virtual {p1, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public movePointLeft(I)Landroid/icu/math/BigDecimal;
    .locals 1

    .line 2516
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    .line 2517
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    .line 2518
    sget-object p1, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public movePointRight(I)Landroid/icu/math/BigDecimal;
    .locals 1

    .line 2538
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    .line 2539
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    .line 2540
    sget-object p1, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1

    .line 1496
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1522
    iget-boolean v3, v2, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v3, :cond_0

    .line 1523
    iget v3, v2, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {v0, v1, v3}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    .line 1528
    :cond_0
    iget v3, v2, Landroid/icu/math/MathContext;->digits:I

    const/4 v4, 0x0

    if-lez v3, :cond_3

    .line 1530
    iget-object v5, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    if-le v5, v3, :cond_1

    .line 1531
    invoke-static/range {p0 .. p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0, v2}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 1532
    :cond_1
    iget-object v5, v1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    if-le v5, v3, :cond_2

    .line 1533
    invoke-static/range {p1 .. p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v1

    invoke-direct {v1, v2}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v1

    :cond_2
    move v3, v4

    goto :goto_1

    .line 1538
    :cond_3
    iget v3, v0, Landroid/icu/math/BigDecimal;->exp:I

    if-lez v3, :cond_4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_4
    move v3, v4

    .line 1540
    :goto_0
    iget v5, v1, Landroid/icu/math/BigDecimal;->exp:I

    if-lez v5, :cond_5

    add-int/2addr v3, v5

    .line 1548
    :cond_5
    :goto_1
    iget-object v5, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v5

    iget-object v7, v1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v8, v7

    if-ge v6, v8, :cond_6

    move-object v12, v7

    goto :goto_2

    :cond_6
    move-object v12, v5

    move-object v5, v7

    .line 1557
    :goto_2
    array-length v6, v5

    array-length v7, v12

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    .line 1559
    aget-byte v7, v5, v4

    aget-byte v8, v12, v4

    mul-int/2addr v7, v8

    const/16 v8, 0x9

    if-le v7, v8, :cond_7

    add-int/lit8 v7, v6, 0x1

    goto :goto_3

    :cond_7
    move v7, v6

    .line 1565
    :goto_3
    new-instance v13, Landroid/icu/math/BigDecimal;

    invoke-direct {v13}, Landroid/icu/math/BigDecimal;-><init>()V

    .line 1566
    new-array v7, v7, [B

    .line 1572
    array-length v8, v5

    move v15, v4

    move/from16 v16, v6

    move-object v6, v7

    move v14, v8

    :goto_4
    if-lez v14, :cond_9

    .line 1575
    aget-byte v10, v5, v15

    if-eqz v10, :cond_8

    .line 1578
    array-length v7, v6

    const/4 v11, 0x1

    move-object v8, v12

    move/from16 v9, v16

    invoke-static/range {v6 .. v11}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v6

    :cond_8
    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1585
    :cond_9
    iget-byte v5, v0, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v7, v1, Landroid/icu/math/BigDecimal;->ind:B

    mul-int/2addr v5, v7

    int-to-byte v5, v5

    iput-byte v5, v13, Landroid/icu/math/BigDecimal;->ind:B

    .line 1586
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    iget v1, v1, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    iput v0, v13, Landroid/icu/math/BigDecimal;->exp:I

    if-nez v3, :cond_a

    .line 1591
    iput-object v6, v13, Landroid/icu/math/BigDecimal;->mant:[B

    goto :goto_5

    .line 1593
    :cond_a
    array-length v0, v6

    add-int/2addr v0, v3

    invoke-static {v6, v0}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v0

    iput-object v0, v13, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1594
    :goto_5
    invoke-direct {v13, v2, v4}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public negate()Landroid/icu/math/BigDecimal;
    .locals 1

    .line 1610
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, v0}, Landroid/icu/math/BigDecimal;->negate(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public negate(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2

    .line 1627
    iget-boolean v0, p1, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1628
    check-cast v0, Landroid/icu/math/BigDecimal;

    iget v1, p1, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, v0, v1}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    .line 1629
    :cond_0
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    .line 1630
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v0, 0x0

    .line 1631
    invoke-direct {p0, p1, v0}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public plus()Landroid/icu/math/BigDecimal;
    .locals 1

    .line 1646
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, v0}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2

    .line 1664
    iget-boolean v0, p1, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1665
    check-cast v0, Landroid/icu/math/BigDecimal;

    iget v1, p1, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, v0, v1}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    .line 1667
    :cond_0
    iget v0, p1, Landroid/icu/math/MathContext;->form:I

    if-nez v0, :cond_2

    .line 1668
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->form:B

    if-nez v0, :cond_2

    .line 1669
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    iget v1, p1, Landroid/icu/math/MathContext;->digits:I

    if-gt v0, v1, :cond_1

    return-object p0

    .line 1671
    :cond_1
    iget v0, p1, Landroid/icu/math/MathContext;->digits:I

    if-nez v0, :cond_2

    return-object p0

    .line 1674
    :cond_2
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public pow(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1

    .line 1696
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->pow(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public pow(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 7

    .line 1731
    iget-boolean v0, p2, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    .line 1732
    iget v0, p2, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v0}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    :cond_0
    const v0, -0x3b9ac9ff

    const v1, 0x3b9ac9ff

    .line 1733
    invoke-direct {p1, v0, v1}, Landroid/icu/math/BigDecimal;->intcheck(II)I

    move-result v0

    .line 1736
    iget v1, p2, Landroid/icu/math/MathContext;->digits:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 1738
    iget-byte v1, p1, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_0

    .line 1739
    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Negative power: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1742
    :cond_2
    iget-object v4, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    iget v5, p1, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v4, v5

    if-gt v4, v1, :cond_a

    .line 1746
    iget-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    if-le v4, v1, :cond_3

    .line 1747
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    invoke-direct {p0, p2}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    .line 1750
    :cond_3
    iget-object v4, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    iget v5, p1, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    .line 1757
    :goto_0
    new-instance v4, Landroid/icu/math/MathContext;

    iget v5, p2, Landroid/icu/math/MathContext;->form:I

    iget v6, p2, Landroid/icu/math/MathContext;->roundingMode:I

    invoke-direct {v4, v1, v5, v2, v6}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    .line 1759
    sget-object v1, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    if-gez v0, :cond_5

    neg-int v0, v0

    :cond_5
    move v5, v2

    move v2, v3

    :goto_1
    add-int/2addr v0, v0

    if-gez v0, :cond_6

    .line 1771
    invoke-virtual {v1, p0, v4}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v1

    move v5, v3

    :cond_6
    const/16 v6, 0x1f

    if-ne v2, v6, :cond_8

    .line 1780
    iget-byte p0, p1, Landroid/icu/math/BigDecimal;->ind:B

    if-gez p0, :cond_7

    .line 1781
    sget-object p0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    invoke-virtual {p0, v1, v4}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v1

    .line 1782
    :cond_7
    invoke-direct {v1, p2, v3}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_8
    if-nez v5, :cond_9

    goto :goto_2

    .line 1777
    :cond_9
    invoke-virtual {v1, v1, v4}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1743
    :cond_a
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too many digits: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remainder(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 3

    .line 1801
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/16 v1, 0x52

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public remainder(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2

    const/16 v0, 0x52

    const/4 v1, -0x1

    .line 1820
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public scale()I
    .locals 0

    .line 2552
    iget p0, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-ltz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    neg-int p0, p0

    return p0
.end method

.method public setScale(I)Landroid/icu/math/BigDecimal;
    .locals 1

    const/4 v0, 0x7

    .line 2577
    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->setScale(II)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public setScale(II)Landroid/icu/math/BigDecimal;
    .locals 2

    .line 2610
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->scale()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2612
    iget-byte v1, p0, Landroid/icu/math/BigDecimal;->form:B

    if-nez v1, :cond_0

    return-object p0

    .line 2614
    :cond_0
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    if-gt v0, p1, :cond_2

    if-nez v0, :cond_1

    .line 2618
    iget p2, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr p2, p1

    goto :goto_0

    :cond_1
    sub-int p2, p1, v0

    .line 2621
    :goto_0
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object p2

    iput-object p2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    neg-int p1, p1

    .line 2622
    iput p1, p0, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_4

    .line 2627
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    sub-int/2addr v0, p1

    sub-int/2addr v1, v0

    .line 2628
    invoke-direct {p0, v1, p2}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    move-result-object p0

    .line 2631
    iget p2, p0, Landroid/icu/math/BigDecimal;->exp:I

    neg-int p1, p1

    if-eq p2, p1, :cond_3

    .line 2632
    iget-object p1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 2633
    iget p1, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/icu/math/BigDecimal;->exp:I

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 2636
    iput-byte p1, p0, Landroid/icu/math/BigDecimal;->form:B

    return-object p0

    .line 2625
    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Negative scale: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shortValueExact()S
    .locals 5

    .line 2651
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->intValueExact()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x7fff

    if-le v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/16 v4, -0x8000

    if-ge v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v1, v3

    if-nez v1, :cond_2

    int-to-short p0, v0

    return p0

    .line 2653
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conversion overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public signum()I
    .locals 0

    .line 2667
    iget-byte p0, p0, Landroid/icu/math/BigDecimal;->ind:B

    return p0
.end method

.method public subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1

    .line 1836
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public subtract(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 1

    .line 1852
    iget-boolean v0, p2, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    .line 1853
    iget v0, p2, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v0}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    .line 1857
    :cond_0
    invoke-static {p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p1

    .line 1858
    iget-byte v0, p1, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/icu/math/BigDecimal;->ind:B

    .line 1859
    invoke-virtual {p0, p1, p2}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public toBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .line 2684
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->scale()I

    move-result p0

    invoke-direct {v0, v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 4

    .line 2701
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-byte v3, p0, Landroid/icu/math/BigDecimal;->form:B

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    goto :goto_2

    .line 2703
    :cond_2
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-ltz v0, :cond_3

    .line 2704
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    .line 2705
    iput-byte v2, p0, Landroid/icu/math/BigDecimal;->form:B

    goto :goto_2

    :cond_3
    neg-int v0, v0

    .line 2709
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 2710
    sget-object p0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    goto :goto_2

    .line 2712
    :cond_4
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    .line 2713
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    iget v3, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v1, v3

    .line 2714
    new-array v3, v1, [B

    .line 2715
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2717
    iput-object v3, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 2718
    iput-byte v2, p0, Landroid/icu/math/BigDecimal;->form:B

    .line 2719
    iput v2, p0, Landroid/icu/math/BigDecimal;->exp:I

    .line 2724
    :goto_2
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/String;

    invoke-direct {p0}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toBigIntegerExact()Ljava/math/BigInteger;
    .locals 3

    .line 2738
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-gez v0, :cond_1

    .line 2740
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v2, v1

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2741
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decimal part non-zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2743
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public toCharArray()[C
    .locals 0

    .line 2755
    invoke-direct {p0}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2774
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public unscaledValue()Ljava/math/BigInteger;
    .locals 1

    .line 2788
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-ltz v0, :cond_0

    goto :goto_0

    .line 2791
    :cond_0
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    const/4 v0, 0x0

    .line 2792
    iput v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    .line 2794
    :goto_0
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
