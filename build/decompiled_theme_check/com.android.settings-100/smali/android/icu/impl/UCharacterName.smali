.class public final Landroid/icu/impl/UCharacterName;
.super Ljava/lang/Object;
.source "UCharacterName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UCharacterName$AlgorithmName;
    }
.end annotation


# static fields
.field static final EXTENDED_CATEGORY_:I = 0x21

.field private static final FILE_NAME_:Ljava/lang/String; = "unames.icu"

.field private static final GROUP_MASK_:I = 0x1f

.field private static final GROUP_SHIFT_:I = 0x5

.field public static final INSTANCE:Landroid/icu/impl/UCharacterName;

.field private static final LEAD_SURROGATE_:I = 0x1f

.field public static final LINES_PER_GROUP_:I = 0x20

.field private static final NON_CHARACTER_:I = 0x1e

.field private static final OFFSET_HIGH_OFFSET_:I = 0x1

.field private static final OFFSET_LOW_OFFSET_:I = 0x2

.field private static final SINGLE_NIBBLE_MAX_:I = 0xb

.field private static final TRAIL_SURROGATE_:I = 0x20

.field private static final TYPE_NAMES_:[Ljava/lang/String;

.field private static final UNKNOWN_TYPE_NAME_:Ljava/lang/String; = "unknown"


# instance fields
.field private m_ISOCommentSet_:[I

.field private m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

.field public m_groupcount_:I

.field private m_groupinfo_:[C

.field private m_grouplengths_:[C

.field private m_groupoffsets_:[C

.field m_groupsize_:I

.field private m_groupstring_:[B

.field private m_maxISOCommentLength_:I

.field private m_maxNameLength_:I

.field private m_nameSet_:[I

.field private m_tokenstring_:[B

.field private m_tokentable_:[C

.field private m_utilIntBuffer_:[I

.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 50
    :try_start_0
    new-instance v0, Landroid/icu/impl/UCharacterName;

    invoke-direct {v0}, Landroid/icu/impl/UCharacterName;-><init>()V

    sput-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v1, "unassigned"

    const-string/jumbo v2, "uppercase letter"

    const-string v3, "lowercase letter"

    const-string/jumbo v4, "titlecase letter"

    const-string v5, "modifier letter"

    const-string/jumbo v6, "other letter"

    const-string v7, "non spacing mark"

    const-string v8, "enclosing mark"

    const-string v9, "combining spacing mark"

    const-string v10, "decimal digit number"

    const-string v11, "letter number"

    const-string/jumbo v12, "other number"

    const-string/jumbo v13, "space separator"

    const-string v14, "line separator"

    const-string/jumbo v15, "paragraph separator"

    const-string v16, "control"

    const-string v17, "format"

    const-string/jumbo v18, "private use area"

    const-string/jumbo v19, "surrogate"

    const-string v20, "dash punctuation"

    const-string/jumbo v21, "start punctuation"

    const-string v22, "end punctuation"

    const-string v23, "connector punctuation"

    const-string/jumbo v24, "other punctuation"

    const-string v25, "math symbol"

    const-string v26, "currency symbol"

    const-string v27, "modifier symbol"

    const-string/jumbo v28, "other symbol"

    const-string v29, "initial punctuation"

    const-string v30, "final punctuation"

    const-string v31, "noncharacter"

    const-string v32, "lead surrogate"

    const-string/jumbo v33, "trail surrogate"

    .line 1106
    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    return-void

    .line 53
    :catch_0
    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, ""

    const-string v2, "Could not construct UCharacterName. Missing unames.icu"

    invoke-direct {v0, v2, v1, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    .line 955
    iput v0, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    const/16 v0, 0x21

    new-array v1, v0, [C

    .line 1037
    iput-object v1, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    new-array v0, v0, [C

    .line 1038
    iput-object v0, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 1081
    iput-object v1, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    new-array v0, v0, [I

    .line 1086
    iput-object v0, p0, Landroid/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    .line 1090
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1094
    iput-object v0, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    const-string/jumbo v0, "unames.icu"

    .line 1172
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1173
    new-instance v1, Landroid/icu/impl/UCharacterNameReader;

    invoke-direct {v1, v0}, Landroid/icu/impl/UCharacterNameReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 1174
    invoke-virtual {v1, p0}, Landroid/icu/impl/UCharacterNameReader;->read(Landroid/icu/impl/UCharacterName;)V

    return-void
.end method

.method static synthetic access$200([ILjava/lang/String;)I
    .locals 0

    .line 39
    invoke-static {p0, p1}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300([ILjava/lang/StringBuffer;)I
    .locals 0

    .line 39
    invoke-static {p0, p1}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/StringBuffer;)I

    move-result p0

    return p0
.end method

.method private static add([ILjava/lang/String;)I
    .locals 3

    .line 1416
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 1419
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {p0, v2}, Landroid/icu/impl/UCharacterName;->add([IC)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static add([ILjava/lang/StringBuffer;)I
    .locals 3

    .line 1432
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 1435
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {p0, v2}, Landroid/icu/impl/UCharacterName;->add([IC)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static add([IC)V
    .locals 3

    ushr-int/lit8 v0, p1, 0x5

    .line 1393
    aget v1, p0, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method private addAlgorithmName(I)I
    .locals 3

    .line 1450
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1451
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/UCharacterName$AlgorithmName;->add([II)I

    move-result v1

    if-le v1, p1, :cond_0

    move p1, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private addExtendedName(I)I
    .locals 3

    .line 1467
    sget-object v0, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1473
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    sget-object v2, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    if-le v1, p1, :cond_0

    move p1, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private addGroupName(I)V
    .locals 13

    const/16 v0, 0x22

    new-array v1, v0, [C

    new-array v0, v0, [C

    .line 1555
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v2, v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v5, p1

    move p1, v3

    move v4, p1

    .line 1559
    :goto_0
    iget v6, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    if-ge p1, v6, :cond_7

    .line 1560
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v6

    move v7, v4

    move v4, v3

    :goto_1
    const/16 v8, 0x20

    if-ge v4, v8, :cond_6

    .line 1566
    aget-char v8, v1, v4

    add-int/2addr v8, v6

    .line 1567
    aget-char v9, v0, v4

    if-nez v9, :cond_0

    goto :goto_2

    .line 1573
    :cond_0
    iget-object v10, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-direct {p0, v8, v9, v2, v10}, Landroid/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    move-result-object v10

    .line 1575
    aget v11, v10, v3

    if-le v11, v5, :cond_1

    .line 1577
    aget v5, v10, v3

    :cond_1
    const/4 v11, 0x1

    .line 1579
    aget v12, v10, v11

    add-int/2addr v8, v12

    .line 1580
    aget v12, v10, v11

    if-lt v12, v9, :cond_2

    goto :goto_2

    .line 1584
    :cond_2
    aget v10, v10, v11

    sub-int/2addr v9, v10

    .line 1586
    iget-object v10, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-direct {p0, v8, v9, v2, v10}, Landroid/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    move-result-object v10

    .line 1588
    aget v12, v10, v3

    if-le v12, v5, :cond_3

    .line 1590
    aget v5, v10, v3

    .line 1592
    :cond_3
    aget v12, v10, v11

    add-int/2addr v8, v12

    .line 1593
    aget v12, v10, v11

    if-lt v12, v9, :cond_4

    goto :goto_2

    .line 1597
    :cond_4
    aget v10, v10, v11

    sub-int/2addr v9, v10

    .line 1599
    iget-object v10, p0, Landroid/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    invoke-direct {p0, v8, v9, v2, v10}, Landroid/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    move-result-object v8

    .line 1601
    aget v8, v8, v11

    if-le v8, v7, :cond_5

    move v7, v9

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    move v4, v7

    goto :goto_0

    .line 1608
    :cond_7
    iput v4, p0, Landroid/icu/impl/UCharacterName;->m_maxISOCommentLength_:I

    .line 1609
    iput v5, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    return-void
.end method

.method private addGroupName(II[B[I)[I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_5

    .line 1497
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v4, p1, v1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_0

    goto :goto_3

    .line 1503
    :cond_0
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v6, v5

    if-lt v4, v6, :cond_1

    .line 1504
    invoke-static {p4, v4}, Landroid/icu/impl/UCharacterName;->add([IC)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v6, v4, 0xff

    .line 1508
    aget-char v6, v5, v6

    const v7, 0xfffe

    if-ne v6, v7, :cond_2

    shl-int/lit8 v4, v4, 0x8

    add-int v6, p1, v1

    .line 1511
    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    int-to-char v4, v3

    .line 1513
    aget-char v6, v5, v4

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const v3, 0xffff

    if-ne v6, v3, :cond_3

    .line 1517
    invoke-static {p4, v4}, Landroid/icu/impl/UCharacterName;->add([IC)V

    goto :goto_1

    .line 1523
    :cond_3
    aget-byte v3, p3, v4

    if-nez v3, :cond_4

    .line 1525
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v5

    .line 1526
    :try_start_0
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1527
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    invoke-static {v3, v7, v6}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    .line 1530
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-static {p4, v3}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/StringBuffer;)I

    move-result v3

    int-to-byte v3, v3

    .line 1531
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1532
    aput-byte v3, p3, v4

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 1531
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_2
    add-int/2addr v2, v3

    goto :goto_0

    .line 1538
    :cond_5
    :goto_3
    iget-object p0, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    aput v2, p0, v0

    const/4 p1, 0x1

    .line 1539
    aput v1, p0, p1

    return-object p0
.end method

.method private static contains([IC)Z
    .locals 1

    ushr-int/lit8 v0, p1, 0x5

    .line 1405
    aget p0, p0, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private convert([ILandroid/icu/text/UnicodeSet;)V
    .locals 1

    .line 1646
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 1647
    invoke-direct {p0}, Landroid/icu/impl/UCharacterName;->initNameSetsLengths()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0xff

    :goto_0
    if-lez p0, :cond_2

    .line 1653
    invoke-static {p1, p0}, Landroid/icu/impl/UCharacterName;->contains([IC)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1654
    invoke-virtual {p2, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_1
    add-int/lit8 p0, p0, -0x1

    int-to-char p0, p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getAlgName(II)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 1192
    :cond_0
    iget-object p2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter p2

    .line 1193
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1195
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1197
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/icu/impl/UCharacterName$AlgorithmName;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1198
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v0, v1, v0

    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/UCharacterName$AlgorithmName;->appendName(ILjava/lang/StringBuffer;)V

    .line 1199
    iget-object p0, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit p2

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1202
    :cond_2
    monitor-exit p2

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getCodepointMSB(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x5

    return p0
.end method

.method private static getExtendedChar(Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    .line 1347
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ne p1, v1, :cond_1

    .line 1349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 1350
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_1

    const/16 v3, 0x2d

    .line 1351
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/2addr v3, v1

    .line 1357
    :try_start_0
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x10

    .line 1356
    invoke-static {p1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v3, v1

    .line 1365
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1366
    sget-object v1, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1368
    sget-object v3, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1369
    invoke-static {p1}, Landroid/icu/impl/UCharacterName;->getType(I)I

    move-result p0

    if-ne p0, v0, :cond_1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v2

    :cond_2
    const/4 p0, -0x2

    return p0
.end method

.method private getGroupChar(I[CLjava/lang/String;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 1248
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v6, p1

    const/4 v5, 0x0

    :goto_0
    const/16 v7, 0x20

    const/4 v8, -0x1

    if-gt v5, v7, :cond_b

    .line 1254
    aget-char v7, p2, v5

    const/16 v9, 0x3b

    if-eqz v2, :cond_2

    const/4 v10, 0x2

    if-eq v2, v10, :cond_2

    const/4 v11, 0x4

    if-ne v2, v11, :cond_0

    goto :goto_1

    :cond_0
    move v10, v2

    .line 1266
    :goto_1
    iget-object v11, v0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    invoke-static {v11, v6, v7, v9}, Landroid/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I

    move-result v11

    add-int/2addr v11, v6

    sub-int v6, v11, v6

    sub-int/2addr v7, v6

    add-int/2addr v10, v8

    if-gtz v10, :cond_1

    goto :goto_2

    :cond_1
    move v6, v11

    goto :goto_1

    :cond_2
    move v11, v6

    :goto_2
    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_3
    if-ge v6, v7, :cond_8

    if-eq v10, v8, :cond_8

    if-ge v10, v3, :cond_8

    .line 1276
    iget-object v12, v0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v13, v11, v6

    aget-byte v13, v12, v13

    add-int/lit8 v6, v6, 0x1

    .line 1279
    iget-object v14, v0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v15, v14

    if-lt v13, v15, :cond_4

    add-int/lit8 v12, v10, 0x1

    .line 1280
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    and-int/lit16 v13, v13, 0xff

    if-eq v10, v13, :cond_3

    move v10, v8

    goto :goto_3

    :cond_3
    move v10, v12

    goto :goto_3

    :cond_4
    and-int/lit16 v15, v13, 0xff

    .line 1285
    aget-char v4, v14, v15

    const v8, 0xfffe

    if-ne v4, v8, :cond_5

    shl-int/lit8 v4, v13, 0x8

    add-int v8, v11, v6

    .line 1288
    aget-byte v8, v12, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v4, v8

    aget-char v4, v14, v4

    add-int/lit8 v6, v6, 0x1

    :cond_5
    const v8, 0xffff

    if-ne v4, v8, :cond_7

    add-int/lit8 v4, v10, 0x1

    .line 1293
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v15, :cond_6

    const/4 v8, -0x1

    const/4 v10, -0x1

    goto :goto_3

    :cond_6
    move v10, v4

    goto :goto_4

    .line 1299
    :cond_7
    iget-object v8, v0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    invoke-static {v1, v8, v10, v4}, Landroid/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I

    move-result v10

    :goto_4
    const/4 v8, -0x1

    goto :goto_3

    :cond_8
    if-ne v3, v10, :cond_a

    if-eq v6, v7, :cond_9

    .line 1305
    iget-object v4, v0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int/2addr v6, v11

    aget-byte v4, v4, v6

    if-ne v4, v9, :cond_a

    :cond_9
    return v5

    :cond_a
    add-int v6, v11, v7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    move v4, v8

    return v4
.end method

.method private declared-synchronized getGroupChar(Ljava/lang/String;I)I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1215
    :goto_0
    :try_start_0
    iget v1, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 1218
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-virtual {p0, v0, v1, v3}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v1

    .line 1222
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-direct {p0, v1, v3, p1, p2}, Landroid/icu/impl/UCharacterName;->getGroupChar(I[CLjava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1225
    iget-object p1, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget p2, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr v0, p2

    aget-char p1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v1

    monitor-exit p0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1229
    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getGroupLimit(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static getGroupMin(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x5

    return p0
.end method

.method public static getGroupMinFromCodepoint(I)I
    .locals 0

    and-int/lit8 p0, p0, -0x20

    return p0
.end method

.method public static getGroupOffset(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private static getType(I)I
    .locals 2

    .line 1322
    invoke-static {p0}, Landroid/icu/impl/UCharacterUtility;->isNonCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x1e

    return p0

    .line 1326
    :cond_0
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const v0, 0xdbff

    if-gt p0, v0, :cond_1

    const/16 v0, 0x1f

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    :cond_2
    :goto_0
    return v0
.end method

.method private initNameSetsLengths()Z
    .locals 4

    .line 1618
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x12

    :goto_0
    if-ltz v0, :cond_1

    .line 1626
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    const-string v3, "0123456789ABCDEF<>-"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Landroid/icu/impl/UCharacterName;->add([IC)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1630
    invoke-direct {p0, v0}, Landroid/icu/impl/UCharacterName;->addAlgorithmName(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    .line 1632
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    invoke-direct {p0, v0}, Landroid/icu/impl/UCharacterName;->addExtendedName(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    .line 1634
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    invoke-direct {p0, v0}, Landroid/icu/impl/UCharacterName;->addGroupName(I)V

    return v1
.end method


# virtual methods
.method public getAlgorithmEnd(I)I
    .locals 0

    .line 482
    iget-object p0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object p0, p0, p1

    invoke-static {p0}, Landroid/icu/impl/UCharacterName$AlgorithmName;->access$100(Landroid/icu/impl/UCharacterName$AlgorithmName;)I

    move-result p0

    return p0
.end method

.method public getAlgorithmLength()I
    .locals 0

    .line 462
    iget-object p0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    array-length p0, p0

    return p0
.end method

.method public getAlgorithmName(II)Ljava/lang/String;
    .locals 3

    .line 494
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v0

    .line 495
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 496
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object p1, v1, p1

    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2, v1}, Landroid/icu/impl/UCharacterName$AlgorithmName;->appendName(ILjava/lang/StringBuffer;)V

    .line 497
    iget-object p0, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 498
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAlgorithmStart(I)I
    .locals 0

    .line 472
    iget-object p0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object p0, p0, p1

    invoke-static {p0}, Landroid/icu/impl/UCharacterName$AlgorithmName;->access$000(Landroid/icu/impl/UCharacterName$AlgorithmName;)I

    move-result p0

    return p0
.end method

.method public getCharFromName(ILjava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_8

    if-eqz p2, :cond_8

    .line 116
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 121
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/icu/impl/UCharacterName;->getExtendedChar(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v0, :cond_1

    return v1

    .line 126
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_5

    .line 134
    :cond_2
    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    if-eqz v3, :cond_3

    .line 135
    array-length v3, v3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    add-int/2addr v3, v0

    :goto_1
    if-ltz v3, :cond_5

    .line 138
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v4, v4, v3

    invoke-virtual {v4, p2}, Landroid/icu/impl/UCharacterName$AlgorithmName;->getChar(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    return v4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    if-ne p1, v1, :cond_6

    .line 146
    invoke-direct {p0, p2, v2}, Landroid/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_7

    const/4 p1, 0x3

    .line 149
    invoke-direct {p0, p2, p1}, Landroid/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    .line 154
    :cond_6
    invoke-direct {p0, p2, p1}, Landroid/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result p1

    :cond_7
    :goto_2
    return p1

    :cond_8
    :goto_3
    return v0
.end method

.method public getCharNameCharacters(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    .line 566
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/UCharacterName;->convert([ILandroid/icu/text/UnicodeSet;)V

    return-void
.end method

.method public getExtendedName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterName;->getExtendedOr10Name(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtendedOr10Name(I)Ljava/lang/String;
    .locals 4

    .line 363
    invoke-static {p1}, Landroid/icu/impl/UCharacterName;->getType(I)I

    move-result v0

    .line 366
    sget-object v1, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 370
    :cond_0
    aget-object v0, v1, v0

    .line 372
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v1

    .line 373
    :try_start_0
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 374
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 375
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    :goto_1
    if-lez v0, :cond_1

    .line 380
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 383
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    iget-object p1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 385
    iget-object p0, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 386
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getGroup(I)I
    .locals 4

    .line 334
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    .line 335
    invoke-static {p1}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1

    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    .line 342
    invoke-virtual {p0, v2}, Landroid/icu/impl/UCharacterName;->getGroupMSB(I)I

    move-result v3

    if-ge p1, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getGroupLengths(I[C[C)I
    .locals 9

    .line 183
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr p1, v0

    .line 184
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    add-int/lit8 v1, p1, 0x1

    aget-char v1, v0, v1

    add-int/lit8 p1, p1, 0x2

    aget-char p1, v0, p1

    invoke-static {v1, p1}, Landroid/icu/impl/UCharacterUtility;->toInt(CC)I

    move-result p1

    const/4 v0, 0x0

    .line 188
    aput-char v0, p2, v0

    const v1, 0xffff

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    if-ge v0, v3, :cond_4

    .line 193
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    aget-byte v4, v4, p1

    const/4 v5, 0x4

    move v6, v2

    move v2, v0

    move v0, v5

    :goto_1
    if-ltz v0, :cond_3

    shr-int v7, v4, v0

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    if-ne v6, v1, :cond_0

    const/16 v8, 0xb

    if-le v7, v8, :cond_0

    add-int/lit8 v7, v7, -0xc

    shl-int/lit8 v6, v7, 0x4

    int-to-char v6, v6

    goto :goto_3

    :cond_0
    if-eq v6, v1, :cond_1

    or-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xc

    int-to-char v6, v6

    .line 204
    aput-char v6, p3, v2

    goto :goto_2

    :cond_1
    int-to-char v6, v7

    .line 207
    aput-char v6, p3, v2

    :goto_2
    if-ge v2, v3, :cond_2

    add-int/lit8 v6, v2, 0x1

    .line 211
    aget-char v7, p2, v2

    aget-char v8, p3, v2

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p2, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v6, v1

    :goto_3
    add-int/lit8 v0, v0, -0x4

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    move v0, v2

    move v2, v6

    goto :goto_0

    :cond_4
    return p1
.end method

.method public getGroupMSB(I)I
    .locals 1

    .line 398
    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    if-lt p1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 401
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget p0, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr p1, p0

    aget-char p0, v0, p1

    return p0
.end method

.method public declared-synchronized getGroupName(II)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 510
    :try_start_0
    invoke-static {p1}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v0

    .line 511
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterName;->getGroup(I)I

    move-result v1

    .line 514
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget v3, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr v3, v1

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_0

    .line 515
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-virtual {p0, v1, v0, v2}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v0

    and-int/lit8 p1, p1, 0x1f

    .line 518
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    aget-char v1, v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    aget-char p1, v1, p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/impl/UCharacterName;->getGroupName(III)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 522
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getGroupName(III)Ljava/lang/String;
    .locals 11

    const v0, 0xffff

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x3b

    if-eqz p3, :cond_4

    if-eq p3, v2, :cond_4

    .line 243
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-char v4, v4, v3

    if-ne v4, v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v4, 0x4

    if-ne p3, v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, p3

    .line 251
    :cond_3
    :goto_1
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    invoke-static {v5, p1, p2, v3}, Landroid/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I

    move-result v5

    add-int/2addr v5, p1

    sub-int p1, v5, p1

    sub-int/2addr p2, p1

    add-int/lit8 v4, v4, -0x1

    move p1, v5

    if-gtz v4, :cond_3

    .line 264
    :cond_4
    :goto_2
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v4

    .line 265
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_3
    if-ge v1, p2, :cond_a

    .line 269
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v6, p1, v1

    aget-byte v5, v5, v6

    add-int/lit8 v1, v1, 0x1

    .line 272
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v6, v6

    if-lt v5, v6, :cond_6

    if-ne v5, v3, :cond_5

    goto :goto_4

    .line 276
    :cond_5
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 279
    :cond_6
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    and-int/lit16 v7, v5, 0xff

    aget-char v6, v6, v7

    const v8, 0xfffe

    if-ne v6, v8, :cond_7

    .line 282
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    shl-int/lit8 v8, v5, 0x8

    iget-object v9, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v10, p1, v1

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aget-char v6, v6, v8

    add-int/lit8 v1, v1, 0x1

    :cond_7
    if-ne v6, v0, :cond_9

    if-ne v5, v3, :cond_8

    .line 291
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_a

    if-ne p3, v2, :cond_a

    goto :goto_3

    .line 298
    :cond_8
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    int-to-char v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 301
    :cond_9
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    invoke-static {v5, v7, v6}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    goto :goto_3

    .line 307
    :cond_a
    :goto_4
    iget-object p1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_b

    .line 308
    iget-object p0, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v4

    return-object p0

    .line 310
    :cond_b
    monitor-exit v4

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getISOCommentCharacters(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    .line 577
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/UCharacterName;->convert([ILandroid/icu/text/UnicodeSet;)V

    return-void
.end method

.method public getMaxCharNameLength()I
    .locals 1

    .line 534
    invoke-direct {p0}, Landroid/icu/impl/UCharacterName;->initNameSetsLengths()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget p0, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMaxISOCommentLength()I
    .locals 1

    .line 550
    invoke-direct {p0}, Landroid/icu/impl/UCharacterName;->initNameSetsLengths()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget p0, p0, Landroid/icu/impl/UCharacterName;->m_maxISOCommentLength_:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getName(II)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_4

    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    const/4 v0, 0x4

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterName;->getAlgName(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 96
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterName;->getExtendedName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/UCharacterName;->getGroupName(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method setAlgorithm([Landroid/icu/impl/UCharacterName$AlgorithmName;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 983
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 984
    iput-object p1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method setGroup([C[B)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1014
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 1016
    iput-object p1, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    .line 1017
    iput-object p2, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method setGroupCountSize(II)Z
    .locals 0

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1001
    :cond_0
    iput p1, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    .line 1002
    iput p2, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method setToken([C[B)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 967
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 969
    iput-object p1, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    .line 970
    iput-object p2, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
