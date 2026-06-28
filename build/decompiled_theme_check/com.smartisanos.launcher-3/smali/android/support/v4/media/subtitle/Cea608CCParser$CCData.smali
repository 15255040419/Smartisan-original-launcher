.class Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# static fields
.field private static final sCtrlCodeMap:[Ljava/lang/String;

.field private static final sProtugueseCharMap:[Ljava/lang/String;

.field private static final sSpanishCharMap:[Ljava/lang/String;

.field private static final sSpecialCharMap:[Ljava/lang/String;


# instance fields
.field private final mData1:B

.field private final mData2:B

.field private final mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 33

    const-string v0, "RCL"

    const-string v1, "BS"

    const-string v2, "AOF"

    const-string v3, "AON"

    const-string v4, "DER"

    const-string v5, "RU2"

    const-string v6, "RU3"

    const-string v7, "RU4"

    const-string v8, "FON"

    const-string v9, "RDC"

    const-string v10, "TR"

    const-string v11, "RTD"

    const-string v12, "EDM"

    const-string v13, "CR"

    const-string v14, "ENM"

    const-string v15, "EOC"

    .line 1
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->sCtrlCodeMap:[Ljava/lang/String;

    const-string v1, "\u00ae"

    const-string v2, "\u00b0"

    const-string v3, "\u00bd"

    const-string v4, "\u00bf"

    const-string v5, "\u2122"

    const-string v6, "\u00a2"

    const-string v7, "\u00a3"

    const-string v8, "\u266a"

    const-string v9, "\u00e0"

    const-string v10, "\u00a0"

    const-string v11, "\u00e8"

    const-string v12, "\u00e2"

    const-string v13, "\u00ea"

    const-string v14, "\u00ee"

    const-string v15, "\u00f4"

    const-string v16, "\u00fb"

    .line 2
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->sSpecialCharMap:[Ljava/lang/String;

    const-string v1, "\u00c1"

    const-string v2, "\u00c9"

    const-string v3, "\u00d3"

    const-string v4, "\u00da"

    const-string v5, "\u00dc"

    const-string v6, "\u00fc"

    const-string v7, "\u2018"

    const-string v8, "\u00a1"

    const-string v9, "*"

    const-string v10, "\'"

    const-string v11, "\u2014"

    const-string v12, "\u00a9"

    const-string v13, "\u2120"

    const-string v14, "\u2022"

    const-string v15, "\u201c"

    const-string v16, "\u201d"

    const-string v17, "\u00c0"

    const-string v18, "\u00c2"

    const-string v19, "\u00c7"

    const-string v20, "\u00c8"

    const-string v21, "\u00ca"

    const-string v22, "\u00cb"

    const-string v23, "\u00eb"

    const-string v24, "\u00ce"

    const-string v25, "\u00cf"

    const-string v26, "\u00ef"

    const-string v27, "\u00d4"

    const-string v28, "\u00d9"

    const-string v29, "\u00f9"

    const-string v30, "\u00db"

    const-string v31, "\u00ab"

    const-string v32, "\u00bb"

    .line 3
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->sSpanishCharMap:[Ljava/lang/String;

    const-string v1, "\u00c3"

    const-string v2, "\u00e3"

    const-string v3, "\u00cd"

    const-string v4, "\u00cc"

    const-string v5, "\u00ec"

    const-string v6, "\u00d2"

    const-string v7, "\u00f2"

    const-string v8, "\u00d5"

    const-string v9, "\u00f5"

    const-string v10, "{"

    const-string v11, "}"

    const-string v12, "\\"

    const-string v13, "^"

    const-string v14, "_"

    const-string v15, "|"

    const-string v16, "~"

    const-string v17, "\u00c4"

    const-string v18, "\u00e4"

    const-string v19, "\u00d6"

    const-string v20, "\u00f6"

    const-string v21, "\u00df"

    const-string v22, "\u00a5"

    const-string v23, "\u00a4"

    const-string v24, "\u2502"

    const-string v25, "\u00c5"

    const-string v26, "\u00e5"

    const-string v27, "\u00d8"

    const-string v28, "\u00f8"

    const-string v29, "\u250c"

    const-string v30, "\u2510"

    const-string v31, "\u2514"

    const-string v32, "\u2518"

    .line 4
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->sProtugueseCharMap:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(BBB)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte p1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mType:B

    .line 3
    iput-byte p2, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    .line 4
    iput-byte p3, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->isExtendedChar()Z

    move-result p0

    return p0
.end method

.method private ctrlCodeToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->sCtrlCodeMap:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x20

    aget-object p0, p0, p1

    return-object p0
.end method

.method static fromByteArray([B)[Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;
    .locals 6

    .line 1
    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;

    mul-int/lit8 v3, v1, 0x3

    aget-byte v4, p0, v3

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p0, v3

    invoke-direct {v2, v4, v5, v3}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;-><init>(BBB)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getBasicChar(B)C
    .locals 0

    const/16 p0, 0x2a

    if-eq p1, p0, :cond_1

    const/16 p0, 0x5c

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    int-to-char p0, p1

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x2588

    goto :goto_0

    :pswitch_1
    const/16 p0, 0xf1

    goto :goto_0

    :pswitch_2
    const/16 p0, 0xd1

    goto :goto_0

    :pswitch_3
    const/16 p0, 0xf7

    goto :goto_0

    :pswitch_4
    const/16 p0, 0xe7

    goto :goto_0

    :pswitch_5
    const/16 p0, 0xfa

    goto :goto_0

    :pswitch_6
    const/16 p0, 0xf3

    goto :goto_0

    :pswitch_7
    const/16 p0, 0xed

    goto :goto_0

    :cond_0
    const/16 p0, 0xe9

    goto :goto_0

    :cond_1
    const/16 p0, 0xe1

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBasicChars()Ljava/lang/String;
    .locals 4

    .line 1
    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    iget-byte v3, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    invoke-direct {p0, v3}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->getBasicChar(B)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-byte v3, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    if-lt v3, v1, :cond_0

    if-gt v3, v2, :cond_0

    .line 5
    invoke-direct {p0, v3}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->getBasicChar(B)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getExtendedChar()Ljava/lang/String;
    .locals 4

    .line 1
    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x3f

    const/16 v2, 0x20

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_1

    :cond_0
    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    if-lt v0, v2, :cond_1

    if-gt v0, v1, :cond_1

    .line 2
    sget-object p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->sSpanishCharMap:[Ljava/lang/String;

    sub-int/2addr v0, v2

    aget-object p0, p0, v0

    return-object p0

    .line 3
    :cond_1
    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v3, 0x13

    if-eq v0, v3, :cond_2

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_3

    :cond_2
    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    if-lt p0, v2, :cond_3

    if-gt p0, v1, :cond_3

    .line 4
    sget-object v0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->sProtugueseCharMap:[Ljava/lang/String;

    sub-int/2addr p0, v2

    aget-object p0, v0, p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSpecialChar()Ljava/lang/String;
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    const/16 v0, 0x30

    if-lt p0, v0, :cond_1

    const/16 v1, 0x3f

    if-gt p0, v1, :cond_1

    .line 2
    sget-object v1, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->sSpecialCharMap:[Ljava/lang/String;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isBasicChar()Z
    .locals 1

    .line 1
    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isExtendedChar()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSpecialChar()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    const/16 v0, 0x30

    if-lt p0, v0, :cond_1

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method getCtrlCode()I
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x2f

    if-gt p0, v0, :cond_1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method getDisplayText()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->getBasicChars()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->getSpecialChar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->getExtendedChar()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getMidRow()Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x2f

    if-gt p0, v0, :cond_1

    .line 2
    invoke-static {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->fromByte(B)Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getPAC()Landroid/support/v4/media/subtitle/Cea608CCParser$PAC;
    .locals 4

    .line 1
    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    iget-byte v1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    and-int/lit8 v2, v1, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_0

    and-int/lit8 v0, v1, 0x20

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    invoke-static {v0, p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$PAC;->fromBytes(BB)Landroid/support/v4/media/subtitle/Cea608CCParser$PAC;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getTabOffset()I
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    const/16 v0, 0x21

    if-lt p0, v0, :cond_1

    const/16 v0, 0x23

    if-gt p0, v0, :cond_1

    and-int/lit8 p0, p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method isDisplayableChar()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->isBasicChar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->isSpecialChar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->isExtendedChar()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x10

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    if-ge v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    iget-byte v1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mType:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    iget-byte v1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v0, v5

    const-string p0, "[%d]Null: %02x %02x"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->getCtrlCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-array v1, v5, [Ljava/lang/Object;

    .line 4
    iget-byte v2, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mType:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->ctrlCodeToString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "[%d]%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->getTabOffset()I

    move-result v0

    if-lez v0, :cond_2

    new-array v1, v5, [Ljava/lang/Object;

    .line 6
    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mType:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "[%d]Tab%d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->getPAC()Landroid/support/v4/media/subtitle/Cea608CCParser$PAC;

    move-result-object v0

    if-eqz v0, :cond_3

    new-array v1, v5, [Ljava/lang/Object;

    .line 8
    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mType:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/Cea608CCParser$PAC;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "[%d]PAC: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->getMidRow()Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;

    move-result-object v0

    if-eqz v0, :cond_4

    new-array v1, v5, [Ljava/lang/Object;

    .line 10
    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mType:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "[%d]Mid-row: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->isDisplayableChar()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    iget-byte v1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mType:B

    .line 13
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte v1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "[%d]Displayable: %s (%02x %02x)"

    .line 14
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-array v0, v2, [Ljava/lang/Object;

    .line 15
    iget-byte v1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mType:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    iget-byte v1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData1:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$CCData;->mData2:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v0, v5

    const-string p0, "[%d]Invalid: %02x %02x"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
