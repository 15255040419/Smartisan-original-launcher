.class public final Landroid/icu/impl/UTS46;
.super Landroid/icu/text/IDNA;
.source "UTS46.java"


# static fields
.field private static final EN_AN_MASK:I

.field private static final ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final L_EN_MASK:I

.field private static final L_MASK:I

.field private static final L_R_AL_MASK:I

.field private static final R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final R_AL_AN_MASK:I

.field private static final R_AL_EN_AN_MASK:I

.field private static final R_AL_MASK:I

.field private static U_GC_M_MASK:I

.field private static final asciiData:[B

.field private static final severeErrors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field

.field private static final uts46Norm2:Landroid/icu/text/Normalizer2;


# instance fields
.field final options:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    sget-object v0, Landroid/icu/text/Normalizer2$Mode;->COMPOSE:Landroid/icu/text/Normalizer2$Mode;

    const/4 v1, 0x0

    const-string/jumbo v2, "uts46"

    .line 69
    invoke-static {v1, v2, v0}, Landroid/icu/text/Normalizer2;->getInstance(Ljava/io/InputStream;Ljava/lang/String;Landroid/icu/text/Normalizer2$Mode;)Landroid/icu/text/Normalizer2;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    .line 73
    sget-object v0, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    sget-object v1, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    sget-object v2, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    sget-object v3, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    sget-object v4, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 98
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/UTS46;->asciiData:[B

    const/4 v0, 0x0

    .line 518
    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    sput v0, Landroid/icu/impl/UTS46;->L_MASK:I

    const/4 v0, 0x1

    .line 520
    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    const/16 v1, 0xd

    .line 521
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    .line 522
    sget v0, Landroid/icu/impl/UTS46;->L_MASK:I

    sget v1, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->L_R_AL_MASK:I

    const/4 v0, 0x5

    .line 524
    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v1, v2

    sput v1, Landroid/icu/impl/UTS46;->R_AL_AN_MASK:I

    const/4 v1, 0x2

    .line 527
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    .line 528
    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    or-int/2addr v0, v2

    sput v0, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    .line 529
    sget v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    sget v2, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    or-int/2addr v0, v2

    sput v0, Landroid/icu/impl/UTS46;->R_AL_EN_AN_MASK:I

    .line 530
    sget v0, Landroid/icu/impl/UTS46;->L_MASK:I

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->L_EN_MASK:I

    const/4 v0, 0x3

    .line 533
    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    const/4 v1, 0x6

    .line 534
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v0, v2

    const/4 v2, 0x4

    .line 535
    invoke-static {v2}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v0, v2

    const/16 v2, 0xa

    .line 536
    invoke-static {v2}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v0, v2

    const/16 v2, 0x12

    .line 537
    invoke-static {v2}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v0, v2

    const/16 v2, 0x11

    .line 538
    invoke-static {v2}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v0, v2

    sput v0, Landroid/icu/impl/UTS46;->ES_CS_ET_ON_BN_NSM_MASK:I

    .line 539
    sget v0, Landroid/icu/impl/UTS46;->L_EN_MASK:I

    sget v2, Landroid/icu/impl/UTS46;->ES_CS_ET_ON_BN_NSM_MASK:I

    or-int/2addr v0, v2

    sput v0, Landroid/icu/impl/UTS46;->L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    .line 540
    sget v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    sget v3, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    or-int/2addr v0, v3

    or-int/2addr v0, v2

    sput v0, Landroid/icu/impl/UTS46;->R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    .line 837
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    const/4 v1, 0x7

    .line 838
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x8

    .line 839
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->U_GC_M_MASK:I

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/icu/text/IDNA;-><init>()V

    .line 38
    iput p1, p0, Landroid/icu/impl/UTS46;->options:I

    return-void
.end method

.method private static U_GET_GC_MASK(I)I
    .locals 1

    .line 834
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private static U_MASK(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private checkLabelBiDi(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V
    .locals 3

    .line 553
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    .line 554
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v0, p2

    .line 555
    sget-object v1, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v1, p0}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result p0

    .line 559
    sget v1, Landroid/icu/impl/UTS46;->L_R_AL_MASK:I

    not-int v1, v1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 560
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    :cond_0
    add-int/2addr p2, p3

    :cond_1
    if-lt v0, p2, :cond_2

    move p3, p0

    goto :goto_0

    .line 570
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p3

    .line 571
    invoke-static {p3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr p2, v1

    .line 572
    sget-object v1, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v1, p3}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result p3

    const/16 v1, 0x11

    if-eq p3, v1, :cond_1

    .line 574
    invoke-static {p3}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result p3

    .line 584
    :goto_0
    sget v1, Landroid/icu/impl/UTS46;->L_MASK:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    sget v1, Landroid/icu/impl/UTS46;->L_EN_MASK:I

    not-int v1, v1

    and-int/2addr v1, p3

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_3
    sget v1, Landroid/icu/impl/UTS46;->R_AL_EN_AN_MASK:I

    not-int v1, v1

    and-int/2addr v1, p3

    if-eqz v1, :cond_4

    .line 588
    :goto_1
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    :cond_4
    or-int/2addr p3, p0

    :goto_2
    if-ge v0, p2, :cond_5

    .line 593
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 594
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 595
    sget-object v2, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v2, v1}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr p3, v1

    goto :goto_2

    .line 597
    :cond_5
    sget p1, Landroid/icu/impl/UTS46;->L_MASK:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_6

    .line 600
    sget p0, Landroid/icu/impl/UTS46;->L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    not-int p0, p0

    and-int/2addr p0, p3

    if-eqz p0, :cond_8

    .line 601
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    goto :goto_3

    .line 606
    :cond_6
    sget p0, Landroid/icu/impl/UTS46;->R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    not-int p0, p0

    and-int/2addr p0, p3

    if-eqz p0, :cond_7

    .line 607
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    .line 611
    :cond_7
    sget p0, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    and-int p1, p3, p0

    if-ne p1, p0, :cond_8

    .line 612
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    .line 621
    :cond_8
    :goto_3
    sget p0, Landroid/icu/impl/UTS46;->R_AL_AN_MASK:I

    and-int/2addr p0, p3

    if-eqz p0, :cond_9

    .line 622
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setBiDi(Landroid/icu/text/IDNA$Info;)V

    :cond_9
    return-void
.end method

.method private checkLabelContextO(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V
    .locals 6

    add-int/2addr p3, p2

    const/4 p0, 0x1

    sub-int/2addr p3, p0

    const/4 v0, 0x0

    move v1, v0

    move v0, p2

    :goto_0
    if-gt v0, p3, :cond_f

    .line 744
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xb7

    if-ge v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v4, 0x6f9

    if-gt v2, v4, :cond_b

    if-ne v2, v3, :cond_2

    if-ge p2, v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 754
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    if-ge v0, p3, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 755
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_e

    .line 756
    :cond_1
    sget-object v2, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v2}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto/16 :goto_3

    :cond_2
    const/16 v3, 0x375

    if-ne v2, v3, :cond_4

    if-ge v0, p3, :cond_3

    const/16 v2, 0xe

    add-int/lit8 v3, v0, 0x1

    .line 764
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v3

    if-eq v2, v3, :cond_e

    .line 765
    :cond_3
    sget-object v2, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v2}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto/16 :goto_3

    :cond_4
    const/16 v3, 0x5f3

    if-eq v2, v3, :cond_9

    const/16 v3, 0x5f4

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0x660

    if-gt v3, v2, :cond_e

    const/16 v3, 0x669

    if-gt v2, v3, :cond_7

    if-lez v1, :cond_6

    .line 797
    sget-object v1, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_6
    const/4 v1, -0x1

    goto :goto_3

    :cond_7
    const/16 v3, 0x6f0

    if-gt v3, v2, :cond_e

    if-gez v1, :cond_8

    .line 802
    sget-object v1, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_8
    move v1, p0

    goto :goto_3

    :cond_9
    :goto_1
    if-ge p2, v0, :cond_a

    const/16 v2, 0x13

    .line 778
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v3

    if-eq v2, v3, :cond_e

    .line 779
    :cond_a
    sget-object v2, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v2}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto :goto_3

    :cond_b
    const/16 v3, 0x30fb

    if-ne v2, v3, :cond_e

    move v2, p2

    :goto_2
    if-le v2, p3, :cond_c

    .line 816
    sget-object v2, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v2}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto :goto_3

    .line 819
    :cond_c
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 820
    invoke-static {v3}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_e

    const/16 v5, 0x16

    if-eq v4, v5, :cond_e

    const/16 v5, 0x11

    if-ne v4, v5, :cond_d

    goto :goto_3

    .line 814
    :cond_d
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    :cond_e
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method private static isASCIIOkBiDi(Ljava/lang/CharSequence;I)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_8

    .line 643
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    const/16 v5, 0x7a

    const/16 v6, 0x61

    if-ne v3, v4, :cond_3

    if-le v1, v2, :cond_2

    add-int/lit8 v2, v1, -0x1

    .line 646
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-gt v6, v2, :cond_0

    if-le v2, v5, :cond_2

    :cond_0
    const/16 v3, 0x30

    if-gt v3, v2, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_5

    if-gt v6, v3, :cond_4

    if-le v3, v5, :cond_7

    :cond_4
    return v0

    :cond_5
    const/16 v4, 0x20

    if-gt v3, v4, :cond_7

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_6

    const/16 v4, 0x9

    if-gt v4, v3, :cond_7

    const/16 v4, 0xd

    if-gt v3, v4, :cond_7

    :cond_6
    return v0

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method private static isASCIIString(Ljava/lang/CharSequence;)Z
    .locals 5

    .line 82
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 84
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isLabelOkContextJ(Ljava/lang/CharSequence;II)Z
    .locals 6

    add-int/2addr p3, p2

    move p0, p2

    :goto_0
    if-ge p0, p3, :cond_c

    .line 674
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x200c

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-ne v0, v1, :cond_9

    if-ne p0, p2, :cond_0

    return v3

    .line 686
    :cond_0
    invoke-static {p1, p0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 687
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int v1, p0, v1

    .line 688
    sget-object v4, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v4, v0}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_4

    .line 693
    :cond_1
    :goto_1
    sget-object v2, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v2, v0}, Landroid/icu/impl/UBiDiProps;->getJoiningType(I)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    if-nez v1, :cond_2

    return v3

    .line 698
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 699
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    const/4 v4, 0x2

    if-eq v0, v1, :cond_5

    if-ne v0, v4, :cond_4

    goto :goto_2

    :cond_4
    return v3

    :cond_5
    :goto_2
    add-int/lit8 v0, p0, 0x1

    :goto_3
    if-ne v0, p3, :cond_6

    return v3

    .line 711
    :cond_6
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 712
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 713
    sget-object v5, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v5, v1}, Landroid/icu/impl/UBiDiProps;->getJoiningType(I)I

    move-result v1

    if-ne v1, v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x4

    if-eq v1, v0, :cond_b

    if-ne v1, v4, :cond_8

    goto :goto_4

    :cond_8
    return v3

    .line 722
    :cond_9
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x200d

    if-ne v0, v1, :cond_b

    if-ne p0, p2, :cond_a

    return v3

    .line 730
    :cond_a
    invoke-static {p1, p0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 731
    sget-object v1, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v1, v0}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v0

    if-eq v0, v2, :cond_b

    return v3

    :cond_b
    :goto_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method private static isNonASCIIDisallowedSTD3Valid(I)Z
    .locals 1

    const/16 v0, 0x2260

    if-eq p0, v0, :cond_1

    const/16 v0, 0x226e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x226f

    if-ne p0, v0, :cond_0

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

.method private mapDevChars(Ljava/lang/StringBuilder;II)I
    .locals 4

    .line 254
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge p3, p0, :cond_3

    .line 257
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xdf

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3c2

    if-eq v1, v2, :cond_1

    const/16 v2, 0x200c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x200d

    if-eq v1, v2, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p3, 0x1

    .line 273
    invoke-virtual {p1, p3, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x3c3

    .line 268
    invoke-virtual {p1, p3, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move p3, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x73

    .line 262
    invoke-virtual {p1, p3, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 p3, v0, 0x1

    .line 263
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 285
    sget-object p0, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const p3, 0x7fffffff

    .line 286
    invoke-virtual {p1, p2, p3, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    :cond_4
    return p0
.end method

.method private markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I
    .locals 7

    .line 484
    iget p0, p0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    add-int/lit8 v2, p2, 0x4

    add-int/2addr p2, p3

    move v3, v0

    .line 490
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x7f

    const v6, 0xfffd

    if-gt v4, v5, :cond_4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_2

    .line 493
    sget-object v0, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    invoke-static {p5, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 494
    invoke-virtual {p1, v2, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 496
    :cond_2
    sget-object v5, Landroid/icu/impl/UTS46;->asciiData:[B

    aget-byte v4, v5, v4

    if-gez v4, :cond_5

    if-eqz p0, :cond_3

    .line 499
    invoke-virtual {p1, v2, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v1

    move v3, v0

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_1

    if-eqz v0, :cond_6

    .line 508
    invoke-virtual {p1, p2, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_6
    if-eqz p4, :cond_7

    if-eqz v3, :cond_7

    const/16 p0, 0x3f

    if-le p3, p0, :cond_7

    .line 512
    sget-object p0, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {p5, p0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_7
    :goto_3
    return p3
.end method

.method private process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 12

    move-object v1, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    if-eq v8, v1, :cond_13

    const v0, 0x7fffffff

    const/4 v2, 0x0

    .line 125
    invoke-virtual {v8, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 126
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->resetInfo(Landroid/icu/text/IDNA$Info;)V

    .line 127
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v9, v0}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    return-object v8

    :cond_0
    move-object v3, p0

    .line 133
    iget v4, v3, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    move v10, v2

    :goto_1
    const/16 v5, 0x3f

    if-ne v2, v0, :cond_5

    if-eqz p3, :cond_4

    sub-int v0, v2, v10

    if-le v0, v5, :cond_2

    .line 140
    sget-object v0, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {v9, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_2
    if-nez p2, :cond_4

    const/16 v0, 0xfe

    if-lt v2, v0, :cond_4

    if-gt v2, v0, :cond_3

    if-ge v10, v2, :cond_4

    .line 144
    :cond_3
    sget-object v0, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {v9, v0}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 147
    :cond_4
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    return-object v8

    .line 150
    :cond_5
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x7f

    if-le v6, v7, :cond_6

    goto :goto_2

    .line 154
    :cond_6
    sget-object v7, Landroid/icu/impl/UTS46;->asciiData:[B

    aget-byte v7, v7, v6

    if-lez v7, :cond_7

    add-int/lit8 v6, v6, 0x20

    int-to-char v5, v6

    .line 156
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_7
    if-gez v7, :cond_8

    if-eqz v4, :cond_8

    :goto_2
    move v4, v2

    goto :goto_4

    .line 160
    :cond_8
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x2e

    const/16 v11, 0x2d

    if-ne v6, v11, :cond_c

    add-int/lit8 v5, v10, 0x3

    if-ne v2, v5, :cond_9

    add-int/lit8 v5, v2, -0x1

    .line 162
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v11, :cond_9

    goto :goto_3

    :cond_9
    if-ne v2, v10, :cond_a

    .line 169
    sget-object v5, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    invoke-static {v9, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_a
    add-int/lit8 v5, v2, 0x1

    if-eq v5, v0, :cond_b

    .line 171
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_12

    .line 173
    :cond_b
    sget-object v5, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    invoke-static {v9, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto :goto_5

    :cond_c
    if-ne v6, v7, :cond_12

    if-eqz p2, :cond_f

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 192
    :goto_4
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move v3, v4

    move v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 193
    invoke-direct/range {v0 .. v7}, Landroid/icu/impl/UTS46;->processUnicode(Ljava/lang/CharSequence;IIZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->isBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Landroid/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    invoke-static {v9, v0}, Landroid/icu/impl/UTS46;->hasCertainErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 195
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->isOkBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-lez v10, :cond_e

    invoke-static {v8, v10}, Landroid/icu/impl/UTS46;->isASCIIOkBiDi(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 197
    :cond_d
    sget-object v0, Landroid/icu/text/IDNA$Error;->BIDI:Landroid/icu/text/IDNA$Error;

    invoke-static {v9, v0}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_e
    return-object v8

    :cond_f
    if-ne v2, v10, :cond_10

    .line 182
    sget-object v6, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v9, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_10
    if-eqz p3, :cond_11

    sub-int v6, v2, v10

    if-le v6, v5, :cond_11

    .line 185
    sget-object v5, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {v9, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 187
    :cond_11
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    add-int/lit8 v10, v2, 0x1

    :cond_12
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 122
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private processLabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v1, p3

    move-object/from16 v6, p5

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/16 v8, 0x2d

    const/4 v9, 0x1

    if-lt v1, v5, :cond_1

    .line 328
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_1

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x6e

    if-ne v10, v11, :cond_1

    add-int/lit8 v10, v3, 0x2

    .line 329
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_1

    add-int/lit8 v10, v3, 0x3

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_1

    add-int/lit8 v10, v3, 0x4

    add-int v11, v3, v1

    .line 334
    :try_start_0
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10, v4}, Landroid/icu/impl/Punycode;->decode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    move-result-object v10
    :try_end_0
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    sget-object v11, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v11, v10}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 348
    sget-object v4, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v4}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 349
    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    move-result v0

    return v0

    .line 353
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    move v13, v9

    const/4 v12, 0x0

    goto :goto_0

    .line 336
    :catch_0
    sget-object v4, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v4}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 337
    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    move-result v0

    return v0

    :cond_1
    move v11, v1

    move-object v10, v2

    move v12, v3

    const/4 v13, 0x0

    :goto_0
    if-nez v11, :cond_2

    .line 360
    sget-object v0, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 361
    invoke-static {v2, v3, v1, v10, v11}, Landroid/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    move-result v0

    return v0

    :cond_2
    if-lt v11, v5, :cond_3

    add-int/lit8 v14, v12, 0x2

    .line 364
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    if-ne v14, v8, :cond_3

    add-int/lit8 v14, v12, 0x3

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    if-ne v14, v8, :cond_3

    .line 366
    sget-object v14, Landroid/icu/text/IDNA$Error;->HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v14}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 368
    :cond_3
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    if-ne v14, v8, :cond_4

    .line 370
    sget-object v14, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v14}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_4
    add-int v14, v12, v11

    add-int/lit8 v15, v14, -0x1

    .line 372
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    if-ne v15, v8, :cond_5

    .line 374
    sget-object v8, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v8}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 389
    :cond_5
    iget v8, v0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    move v8, v12

    const/4 v15, 0x0

    .line 391
    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v4, 0x7f

    const v5, 0xfffd

    if-gt v7, v4, :cond_8

    const/16 v4, 0x2e

    if-ne v7, v4, :cond_7

    .line 394
    sget-object v4, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v4}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 395
    invoke-virtual {v10, v8, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_4

    :cond_7
    if-eqz v9, :cond_b

    .line 396
    sget-object v4, Landroid/icu/impl/UTS46;->asciiData:[B

    aget-byte v4, v4, v7

    if-gez v4, :cond_b

    .line 397
    sget-object v4, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v4}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 398
    invoke-virtual {v10, v8, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_4

    :cond_8
    or-int v4, v15, v7

    int-to-char v4, v4

    if-eqz v9, :cond_9

    .line 402
    invoke-static {v7}, Landroid/icu/impl/UTS46;->isNonASCIIDisallowedSTD3Valid(I)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 403
    sget-object v7, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v7}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 404
    invoke-virtual {v10, v8, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_3

    :cond_9
    if-ne v7, v5, :cond_a

    .line 406
    sget-object v7, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v7}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_a
    :goto_3
    move v15, v4

    :cond_b
    :goto_4
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v14, :cond_17

    .line 415
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v4

    .line 416
    invoke-static {v4}, Landroid/icu/impl/UTS46;->U_GET_GC_MASK(I)I

    move-result v7

    sget v8, Landroid/icu/impl/UTS46;->U_GC_M_MASK:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_c

    .line 417
    sget-object v7, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v7}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 418
    invoke-virtual {v10, v12, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const v5, 0xffff

    if-le v4, v5, :cond_c

    add-int/lit8 v4, v12, 0x1

    .line 421
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v2, :cond_c

    add-int/lit8 v1, v1, -0x1

    :cond_c
    move v4, v1

    .line 428
    sget-object v1, Landroid/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    invoke-static {v6, v1}, Landroid/icu/impl/UTS46;->hasCertainLabelErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 431
    iget v1, v0, Landroid/icu/impl/UTS46;->options:I

    const/4 v5, 0x4

    and-int/2addr v1, v5

    if-eqz v1, :cond_e

    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->isBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->isOkBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 432
    :cond_d
    invoke-direct {v0, v10, v12, v11, v6}, Landroid/icu/impl/UTS46;->checkLabelBiDi(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V

    .line 434
    :cond_e
    iget v1, v0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_f

    and-int/lit16 v1, v15, 0x200c

    const/16 v5, 0x200c

    if-ne v1, v5, :cond_f

    .line 435
    invoke-direct {v0, v10, v12, v11}, Landroid/icu/impl/UTS46;->isLabelOkContextJ(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-nez v1, :cond_f

    .line 437
    sget-object v1, Landroid/icu/text/IDNA$Error;->CONTEXTJ:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 439
    :cond_f
    iget v1, v0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_10

    const/16 v1, 0xb7

    if-lt v15, v1, :cond_10

    .line 440
    invoke-direct {v0, v10, v12, v11, v6}, Landroid/icu/impl/UTS46;->checkLabelContextO(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V

    :cond_10
    if-eqz p4, :cond_16

    const/16 v0, 0x3f

    if-eqz v13, :cond_12

    if-le v4, v0, :cond_11

    .line 446
    sget-object v0, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_11
    return v4

    :cond_12
    const/16 v1, 0x80

    if-lt v15, v1, :cond_14

    add-int/2addr v11, v12

    .line 453
    :try_start_1
    invoke-virtual {v10, v12, v11}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {v1, v7}, Landroid/icu/impl/Punycode;->encode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_1
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v5, "xn--"

    const/4 v7, 0x0

    .line 457
    invoke-virtual {v1, v7, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-le v5, v0, :cond_13

    .line 459
    sget-object v0, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    .line 462
    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 461
    invoke-static {v2, v3, v4, v1, v0}, Landroid/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    move-result v0

    return v0

    :catch_1
    move-exception v0

    .line 455
    new-instance v1, Landroid/icu/util/ICUException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_14
    if-le v11, v0, :cond_16

    .line 466
    sget-object v0, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v0}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto :goto_5

    :cond_15
    if-eqz v13, :cond_16

    .line 474
    sget-object v1, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v6, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 475
    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    move-result v0

    return v0

    .line 478
    :cond_16
    :goto_5
    invoke-static {v2, v3, v4, v10, v11}, Landroid/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    move-result v0

    return v0

    :cond_17
    const/4 v4, 0x0

    const/4 v5, 0x4

    goto/16 :goto_2
.end method

.method private processUnicode(Ljava/lang/CharSequence;IIZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 14

    move-object v6, p0

    move-object v0, p1

    move/from16 v1, p3

    move-object/from16 v7, p6

    if-nez v1, :cond_0

    .line 209
    sget-object v1, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v1, p1, v7}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    :cond_0
    sget-object v2, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p5, :cond_1

    .line 214
    iget v0, v6, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2

    goto :goto_1

    .line 215
    :cond_1
    iget v0, v6, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    :goto_1
    move v0, v9

    goto :goto_2

    :cond_2
    move v0, v8

    .line 216
    :goto_2
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    move/from16 v11, p2

    move v12, v0

    move v10, v1

    :goto_3
    move v0, v11

    :goto_4
    if-ge v0, v10, :cond_6

    .line 219
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    if-nez p4, :cond_3

    sub-int v13, v0, v11

    move-object v0, p0

    move-object/from16 v1, p6

    move v2, v11

    move v3, v13

    move/from16 v4, p5

    move-object/from16 v5, p7

    .line 222
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->processLabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    move-result v0

    .line 224
    invoke-static/range {p7 .. p7}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    sub-int v1, v0, v13

    add-int/2addr v10, v1

    add-int/2addr v0, v9

    add-int/2addr v11, v0

    goto :goto_3

    :cond_3
    const/16 v2, 0xdf

    if-gt v2, v1, :cond_5

    const/16 v3, 0x200d

    if-gt v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3c2

    if-eq v1, v2, :cond_4

    const/16 v2, 0x200c

    if-lt v1, v2, :cond_5

    .line 228
    :cond_4
    invoke-static/range {p7 .. p7}, Landroid/icu/impl/UTS46;->setTransitionalDifferent(Landroid/icu/text/IDNA$Info;)V

    if-eqz v12, :cond_5

    .line 230
    invoke-direct {p0, v7, v11, v0}, Landroid/icu/impl/UTS46;->mapDevChars(Ljava/lang/StringBuilder;II)I

    move-result v1

    move v10, v1

    move v12, v8

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    if-eqz v11, :cond_7

    if-ge v11, v0, :cond_8

    :cond_7
    sub-int v3, v0, v11

    move-object v0, p0

    move-object/from16 v1, p6

    move v2, v11

    move/from16 v4, p5

    move-object/from16 v5, p7

    .line 245
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->processLabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    .line 246
    invoke-static/range {p7 .. p7}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    :cond_8
    return-object v7
.end method

.method private static replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I
    .locals 0

    if-eq p3, p0, :cond_0

    add-int/2addr p2, p1

    .line 309
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    return p4
.end method


# virtual methods
.method public labelToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 43
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public labelToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 48
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public nameToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 53
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 p1, 0xfe

    if-lt p0, p1, :cond_1

    invoke-virtual {p3}, Landroid/icu/text/IDNA$Info;->getErrors()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 55
    invoke-static {p2}, Landroid/icu/impl/UTS46;->isASCIIString(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-gt p0, p1, :cond_0

    const/16 p0, 0xfd

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 p1, 0x2e

    if-eq p0, p1, :cond_1

    .line 58
    :cond_0
    sget-object p0, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {p3, p0}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_1
    return-object p2
.end method

.method public nameToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 65
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method
