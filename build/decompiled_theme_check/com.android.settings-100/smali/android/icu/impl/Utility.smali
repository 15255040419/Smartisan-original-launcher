.class public final Landroid/icu/impl/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final APOSTROPHE:C = '\''

.field private static final BACKSLASH:C = '\\'

.field static final DIGITS:[C

.field private static final ESCAPE:C = '\ua5a5'

.field static final ESCAPE_BYTE:B = -0x5bt

.field static final HEX_DIGIT:[C

.field public static LINE_SEPARATOR:Ljava/lang/String; = null

.field private static final MAGIC_UNSIGNED:I = -0x80000000

.field private static final UNESCAPE_MAP:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "line.separator"

    .line 652
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 707
    fill-array-data v1, :array_0

    sput-object v1, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    new-array v0, v0, [C

    .line 777
    fill-array-data v0, :array_1

    sput-object v0, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    const/16 v0, 0x24

    new-array v0, v0, [C

    .line 1359
    fill-array-data v0, :array_2

    sput-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x61s
        0x7s
        0x62s
        0x8s
        0x65s
        0x1bs
        0x66s
        0xcs
        0x6es
        0xas
        0x72s
        0xds
        0x74s
        0x9s
        0x76s
        0xbs
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final RLEStringToByteArray(Ljava/lang/String;)[B
    .locals 13

    const/4 v0, 0x0

    .line 583
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v1, v3

    .line 584
    new-array v3, v1, [B

    const/4 v4, 0x2

    move v5, v0

    move v6, v5

    move v9, v6

    move v10, v9

    move v7, v2

    move v8, v4

    :goto_0
    if-ge v5, v1, :cond_8

    if-eqz v7, :cond_0

    add-int/lit8 v7, v8, 0x1

    .line 597
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    shr-int/lit8 v9, v8, 0x8

    int-to-byte v9, v9

    move v11, v8

    move v8, v7

    move v7, v9

    move v9, v0

    goto :goto_1

    :cond_0
    and-int/lit16 v7, v9, 0xff

    int-to-byte v7, v7

    move v11, v9

    move v9, v2

    :goto_1
    const/16 v12, -0x5b

    if-eqz v6, :cond_6

    if-eq v6, v2, :cond_2

    if-eq v6, v4, :cond_1

    goto :goto_3

    :cond_1
    move v6, v5

    move v5, v0

    :goto_2
    if-ge v5, v10, :cond_3

    add-int/lit8 v12, v6, 0x1

    .line 637
    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v12

    goto :goto_2

    :cond_2
    if-ne v7, v12, :cond_4

    add-int/lit8 v6, v5, 0x1

    .line 624
    aput-byte v12, v3, v5

    :cond_3
    move v5, v6

    move v6, v0

    goto :goto_3

    :cond_4
    if-gez v7, :cond_5

    add-int/lit16 v7, v7, 0x100

    :cond_5
    move v6, v4

    move v10, v7

    goto :goto_3

    :cond_6
    if-ne v7, v12, :cond_7

    move v6, v2

    goto :goto_3

    :cond_7
    add-int/lit8 v12, v5, 0x1

    .line 617
    aput-byte v7, v3, v5

    move v5, v12

    :goto_3
    move v7, v9

    move v9, v11

    goto :goto_0

    :cond_8
    if-nez v6, :cond_a

    .line 646
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v8, p0, :cond_9

    return-object v3

    .line 647
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Excess data in RLE byte array string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 644
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Bad run-length encoded byte array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final RLEStringToCharArray(Ljava/lang/String;)[C
    .locals 10

    const/4 v0, 0x0

    .line 553
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v1, v3

    .line 554
    new-array v3, v1, [C

    const/4 v4, 0x2

    move v5, v0

    .line 556
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 557
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v7, 0xa5a5

    if-ne v6, v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 559
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 561
    aput-char v6, v3, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 564
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v8, v5

    move v5, v0

    :goto_1
    if-ge v5, v6, :cond_1

    add-int/lit8 v9, v8, 0x1

    .line 565
    aput-char v7, v3, v8

    add-int/lit8 v5, v5, 0x1

    move v8, v9

    goto :goto_1

    :cond_1
    move v5, v8

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v5, 0x1

    .line 569
    aput-char v6, v3, v5

    :goto_2
    move v5, v7

    :goto_3
    add-int/2addr v4, v2

    goto :goto_0

    :cond_3
    if-ne v5, v1, :cond_4

    return-object v3

    .line 574
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Bad run-length encoded short array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final RLEStringToIntArray(Ljava/lang/String;)[I
    .locals 10

    const/4 v0, 0x0

    .line 484
    invoke-static {p0, v0}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 485
    new-array v2, v1, [I

    .line 488
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    move v5, v4

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_3

    if-ge v5, v3, :cond_3

    add-int/lit8 v6, v5, 0x1

    .line 490
    invoke-static {p0, v5}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v5

    const v7, 0xa5a5

    if-ne v5, v7, :cond_2

    add-int/lit8 v5, v6, 0x1

    .line 493
    invoke-static {p0, v6}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_0

    add-int/lit8 v7, v4, 0x1

    .line 495
    aput v6, v2, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v5, 0x1

    .line 498
    invoke-static {p0, v5}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v5

    move v8, v4

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_1

    add-int/lit8 v9, v8, 0x1

    .line 500
    aput v5, v2, v8

    add-int/lit8 v4, v4, 0x1

    move v8, v9

    goto :goto_1

    :cond_1
    move v5, v7

    move v4, v8

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v4, 0x1

    .line 505
    aput v5, v2, v4

    move v5, v6

    :goto_2
    move v4, v7

    goto :goto_0

    :cond_3
    if-ne v4, v1, :cond_4

    if-ne v5, v3, :cond_4

    return-object v2

    .line 510
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Bad run-length encoded int array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final RLEStringToShortArray(Ljava/lang/String;)[S
    .locals 10

    const/4 v0, 0x0

    .line 523
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v1, v3

    .line 524
    new-array v3, v1, [S

    const/4 v4, 0x2

    move v5, v0

    .line 526
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 527
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v7, 0xa5a5

    if-ne v6, v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 529
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_0

    add-int/lit8 v7, v5, 0x1

    int-to-short v6, v6

    .line 531
    aput-short v6, v3, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 534
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-short v7, v7

    move v8, v5

    move v5, v0

    :goto_1
    if-ge v5, v6, :cond_1

    add-int/lit8 v9, v8, 0x1

    .line 535
    aput-short v7, v3, v8

    add-int/lit8 v5, v5, 0x1

    move v8, v9

    goto :goto_1

    :cond_1
    move v5, v8

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v5, 0x1

    int-to-short v6, v6

    .line 539
    aput-short v6, v3, v5

    :goto_2
    move v5, v7

    :goto_3
    add-int/2addr v4, v2

    goto :goto_0

    :cond_3
    if-ne v5, v1, :cond_4

    return-object v3

    .line 544
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Bad run-length encoded short array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final appendEncodedByte(Ljava/lang/Appendable;B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;B[B)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 466
    :try_start_0
    aget-byte v1, p2, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 467
    aget-byte v1, p2, v2

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-char p1, p1

    .line 468
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 469
    aput-byte v0, p2, v0

    goto :goto_0

    .line 472
    :cond_0
    aput-byte v2, p2, v0

    .line 473
    aput-byte p1, p2, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 476
    new-instance p1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final appendInt(Ljava/lang/Appendable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)V"
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    .line 392
    :try_start_0
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const v0, 0xffff

    and-int/2addr p1, v0

    int-to-char p1, p1

    .line 393
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 395
    new-instance p1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;III)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/16 v0, 0x24

    if-gt p2, v0, :cond_1

    if-gez p1, :cond_0

    neg-int p1, p1

    :try_start_0
    const-string v0, "-"

    .line 1418
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1421
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/Utility;->recursiveAppendNumber(Ljava/lang/Appendable;III)V

    return-object p0

    .line 1410
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal radix "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 1425
    new-instance p1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V
    .locals 6

    const/16 v0, 0x5c

    const/16 v1, 0x27

    if-nez p2, :cond_8

    if-eqz p3, :cond_0

    .line 1573
    invoke-static {p1}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 1625
    :cond_0
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-nez p2, :cond_2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_2

    .line 1627
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 1633
    :cond_2
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-gtz p2, :cond_7

    const/16 p2, 0x21

    if-lt p1, p2, :cond_5

    const/16 p2, 0x7e

    if-gt p1, p2, :cond_5

    const/16 p2, 0x30

    if-lt p1, p2, :cond_3

    const/16 p2, 0x39

    if-le p1, p2, :cond_5

    :cond_3
    const/16 p2, 0x41

    if-lt p1, p2, :cond_4

    const/16 p2, 0x5a

    if-le p1, p2, :cond_5

    :cond_4
    const/16 p2, 0x61

    if-lt p1, p2, :cond_7

    const/16 p2, 0x7a

    if-gt p1, p2, :cond_7

    .line 1638
    :cond_5
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    .line 1648
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 1639
    :cond_7
    :goto_0
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    if-ne p1, v1, :cond_f

    int-to-char p0, p1

    .line 1642
    invoke-virtual {p4, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 1574
    :cond_8
    :goto_1
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    const/4 v2, 0x1

    if-lez p2, :cond_c

    .line 1582
    :goto_2
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lt p2, v4, :cond_9

    .line 1583
    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    if-ne p2, v1, :cond_9

    .line 1584
    invoke-virtual {p4, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    if-ne p2, v1, :cond_9

    .line 1585
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1586
    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_9
    move p2, v3

    .line 1591
    :goto_3
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lt v5, v4, :cond_a

    .line 1592
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_a

    .line 1593
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_a

    .line 1594
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1597
    :cond_a
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 1598
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1599
    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1600
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1601
    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_b
    :goto_4
    add-int/lit8 p4, p2, -0x1

    if-lez p2, :cond_c

    .line 1604
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, p4

    goto :goto_4

    :cond_c
    const/4 p2, -0x1

    if-eq p1, p2, :cond_f

    const/16 p2, 0x20

    if-ne p1, p2, :cond_d

    .line 1614
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_f

    sub-int/2addr p1, v2

    .line 1615
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    if-eq p1, p2, :cond_f

    .line 1616
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_d
    if-eqz p3, :cond_e

    .line 1618
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    move-result p2

    if-nez p2, :cond_f

    .line 1619
    :cond_e
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    :cond_f
    :goto_5
    return-void
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1676
    invoke-interface {p1, p2}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    :cond_0
    return-void
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 2

    const/4 v0, 0x0

    .line 1661
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1663
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p0, v1, p2, p3, p4}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 83
    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 84
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 85
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 86
    check-cast p0, [I

    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result p0

    return p0

    .line 87
    :cond_3
    instance-of v0, p0, [D

    if-eqz v0, :cond_4

    .line 88
    check-cast p0, [D

    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals([DLjava/lang/Object;)Z

    move-result p0

    return p0

    .line 89
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    .line 90
    check-cast p0, [B

    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result p0

    return p0

    .line 91
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final arrayEquals([BLjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 69
    :cond_1
    instance-of v2, p1, [B

    if-nez v2, :cond_2

    return v1

    .line 70
    :cond_2
    check-cast p1, [B

    .line 71
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_3

    array-length v2, p0

    .line 72
    invoke-static {p0, v1, p1, v1, v2}, Landroid/icu/impl/Utility;->arrayRegionMatches([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public static final arrayEquals([DLjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 62
    :cond_1
    instance-of v2, p1, [D

    if-nez v2, :cond_2

    return v1

    .line 63
    :cond_2
    check-cast p1, [D

    .line 64
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_3

    array-length v2, p0

    .line 65
    invoke-static {p0, v1, p1, v1, v2}, Landroid/icu/impl/Utility;->arrayRegionMatches([DI[DII)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public static final arrayEquals([ILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v2, p1, [I

    if-nez v2, :cond_2

    return v1

    .line 51
    :cond_2
    check-cast p1, [I

    .line 52
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_3

    array-length v2, p0

    .line 53
    invoke-static {p0, v1, p1, v1, v2}, Landroid/icu/impl/Utility;->arrayRegionMatches([II[III)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public static final arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 38
    :cond_1
    instance-of v2, p1, [Ljava/lang/Object;

    if-nez v2, :cond_2

    return v1

    .line 39
    :cond_2
    check-cast p1, [Ljava/lang/Object;

    .line 40
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_3

    array-length v2, p0

    .line 41
    invoke-static {p0, v1, p1, v1, v2}, Landroid/icu/impl/Utility;->arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public static final arrayRegionMatches([BI[BII)Z
    .locals 2

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 174
    aget-byte v0, p0, p1

    add-int v1, p1, p3

    aget-byte v1, p2, v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final arrayRegionMatches([CI[CII)Z
    .locals 2

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 126
    aget-char v0, p0, p1

    add-int v1, p1, p3

    aget-char v1, p2, v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final arrayRegionMatches([DI[DII)Z
    .locals 4

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 164
    aget-wide v0, p0, p1

    add-int v2, p1, p3

    aget-wide v2, p2, v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final arrayRegionMatches([II[III)Z
    .locals 2

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 145
    aget v0, p0, p1

    add-int v1, p1, p3

    aget v1, p2, v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z
    .locals 2

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 107
    aget-object v0, p0, p1

    add-int v1, p1, p3

    aget-object v1, p2, v1

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final arrayToRLEString([B)Ljava/lang/String;
    .locals 9

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    array-length v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    array-length v1, p0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 342
    aget-byte v2, p0, v1

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x1

    move v5, v2

    move v2, v4

    move v6, v2

    .line 345
    :goto_0
    array-length v7, p0

    if-ge v2, v7, :cond_1

    .line 346
    aget-byte v7, p0, v2

    if-ne v7, v5, :cond_0

    const/16 v8, 0xff

    if-ge v6, v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 349
    :cond_0
    invoke-static {v0, v5, v6, v3}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;BI[B)V

    move v6, v4

    move v5, v7

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {v0, v5, v6, v3}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;BI[B)V

    .line 358
    aget-byte p0, v3, v1

    if-eqz p0, :cond_2

    invoke-static {v0, v1, v3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 360
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayToRLEString([C)Ljava/lang/String;
    .locals 7

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    array-length v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    array-length v1, p0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 309
    aget-char v1, p0, v1

    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    move v4, v1

    .line 311
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 312
    aget-char v5, p0, v1

    if-ne v5, v3, :cond_0

    const v6, 0xffff

    if-ge v4, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    int-to-short v3, v3

    .line 315
    invoke-static {v0, v3, v4}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    move v4, v2

    move v3, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-short p0, v3

    .line 320
    invoke-static {v0, p0, v4}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayToRLEString([I)Ljava/lang/String;
    .locals 7

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    array-length v1, p0

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    const/4 v1, 0x0

    .line 243
    aget v1, p0, v1

    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    move v4, v1

    .line 245
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 246
    aget v5, p0, v1

    if-ne v5, v3, :cond_0

    const v6, 0xffff

    if-ge v4, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 250
    :cond_0
    invoke-static {v0, v3, v4}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;II)V

    move v4, v2

    move v3, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_1
    invoke-static {v0, v3, v4}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;II)V

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayToRLEString([S)Ljava/lang/String;
    .locals 7

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    array-length v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    array-length v1, p0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 277
    aget-short v1, p0, v1

    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    move v4, v1

    .line 279
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 280
    aget-short v5, p0, v1

    if-ne v5, v3, :cond_0

    const v6, 0xffff

    if-ge v4, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 283
    :cond_0
    invoke-static {v0, v3, v4}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    move v4, v2

    move v3, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_1
    invoke-static {v0, v3, v4}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkCompare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;TT;)I"
        }
    .end annotation

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    .line 204
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static checkHash(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final compareUnsigned(II)I
    .locals 1

    const/high16 v0, -0x80000000

    sub-int/2addr p0, v0

    sub-int/2addr p1, v0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static final encodeRun(Ljava/lang/Appendable;BI[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;BI[B)V"
        }
    .end annotation

    const/16 v0, -0x5b

    const/4 v1, 0x4

    if-ge p2, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    if-ne p1, v0, :cond_0

    .line 439
    invoke-static {p0, v0, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 440
    :cond_0
    invoke-static {p0, p1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-byte v1, p2

    if-ne v1, v0, :cond_3

    if-ne p1, v0, :cond_2

    .line 445
    invoke-static {p0, v0, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 446
    :cond_2
    invoke-static {p0, p1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    add-int/lit8 p2, p2, -0x1

    .line 449
    :cond_3
    invoke-static {p0, v0, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    int-to-byte p2, p2

    .line 450
    invoke-static {p0, p2, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 451
    invoke-static {p0, p1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    :cond_4
    return-void
.end method

.method private static final encodeRun(Ljava/lang/Appendable;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;II)V"
        }
    .end annotation

    const v0, 0xa5a5

    const/4 v1, 0x4

    if-ge p2, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    if-ne p1, v0, :cond_0

    .line 371
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 373
    :cond_0
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    if-ne p1, v0, :cond_2

    .line 379
    invoke-static {p0, v0}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 381
    :cond_2
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    add-int/lit8 p2, p2, -0x1

    .line 384
    :cond_3
    invoke-static {p0, v0}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 385
    invoke-static {p0, p2}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 386
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    :cond_4
    return-void
.end method

.method private static final encodeRun(Ljava/lang/Appendable;SI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;SI)V"
        }
    .end annotation

    int-to-char p1, p1

    const/4 v0, 0x4

    const v1, 0xa5a5

    if-ge p2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    if-ne p1, v1, :cond_0

    .line 409
    :try_start_0
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 411
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_3

    if-ne p1, v1, :cond_2

    .line 417
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 419
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, -0x1

    .line 422
    :cond_3
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    int-to-char p2, p2

    .line 423
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 424
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p0

    .line 427
    new-instance p1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1825
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public static final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 758
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 759
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 760
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v2, v4

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_1

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const-string v3, "\\\\"

    .line 763
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    int-to-char v3, v3

    .line 765
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const v4, 0xffff

    if-gt v3, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_3

    const-string v5, "\\u"

    goto :goto_2

    :cond_3
    const-string v5, "\\U"

    .line 769
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v5, v3

    if-eqz v4, :cond_4

    const/4 v3, 0x4

    goto :goto_3

    :cond_4
    const/16 v3, 0x8

    .line 770
    :goto_3
    invoke-static {v5, v6, v3}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 773
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeUnprintable(Ljava/lang/Appendable;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)Z"
        }
    .end annotation

    .line 1491
    :try_start_0
    invoke-static {p1}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5c

    .line 1492
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    .line 1494
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1495
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x1c

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1496
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x18

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1497
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1498
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x10

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const/16 v0, 0x75

    .line 1500
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1502
    :goto_0
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1503
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1504
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1505
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v0, p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 1510
    new-instance p1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final format1ForSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    .line 716
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 717
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x22

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    .line 718
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x20

    const/16 v5, 0x5c

    if-lt v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x7e

    if-gt v1, v3, :cond_1

    .line 738
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_1
    const-string v3, "\\u"

    .line 741
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    const v4, 0xf000

    and-int/2addr v4, v1

    shr-int/lit8 v4, v4, 0xc

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 743
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v4, v1, 0xf00

    shr-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 744
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v4, v1, 0xf0

    shr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 745
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    const-string v1, "\\n"

    .line 721
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v3, 0x9

    if-ne v1, v3, :cond_4

    const-string v1, "\\t"

    .line 723
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v3, 0xd

    if-ne v1, v3, :cond_5

    const-string v1, "\\r"

    .line 725
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 731
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v4, v1, 0x1c0

    shr-int/lit8 v4, v4, 0x6

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 733
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v4, v1, 0x38

    shr-int/lit8 v4, v4, 0x3

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 734
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v1, v1, 0x7

    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v2

    goto/16 :goto_0

    .line 748
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatForSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 661
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    if-lez v1, :cond_0

    const/16 v2, 0x2b

    .line 662
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "        \""

    .line 663
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    .line 665
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x22

    if-ge v1, v3, :cond_7

    const/16 v3, 0x50

    if-ge v2, v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    .line 666
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x20

    const/16 v6, 0x5c

    if-lt v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    if-ne v1, v6, :cond_1

    goto :goto_2

    :cond_1
    const/16 v4, 0x7e

    if-gt v1, v4, :cond_2

    .line 690
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_2
    const-string v4, "\\u"

    .line 694
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    const v5, 0xf000

    and-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0xc

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 696
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v5, v1, 0xf00

    shr-int/lit8 v5, v5, 0x8

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 697
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v5, v1, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 698
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x6

    goto :goto_4

    :cond_3
    :goto_2
    const/16 v4, 0xa

    if-ne v1, v4, :cond_4

    const-string v1, "\\n"

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_4
    const/16 v4, 0x9

    if-ne v1, v4, :cond_5

    const-string v1, "\\t"

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const/16 v4, 0xd

    if-ne v1, v4, :cond_6

    const-string v1, "\\r"

    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 682
    :cond_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v5, v1, 0x1c0

    shr-int/lit8 v5, v5, 0x6

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 684
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v5, v1, 0x38

    shr-int/lit8 v5, v5, 0x3

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 685
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v1, v1, 0x7

    aget-char v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x4

    :goto_4
    move v1, v3

    goto/16 :goto_1

    .line 702
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 704
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromHex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "\\s+"

    .line 1793
    :goto_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/icu/impl/Utility;->fromHex(Ljava/lang/String;ILjava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromHex(Ljava/lang/String;ILjava/util/regex/Pattern;)Ljava/lang/String;
    .locals 4

    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1805
    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 1806
    array-length p2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p0, v1

    .line 1807
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, p1, :cond_0

    const/16 v3, 0x10

    .line 1810
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 1811
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1808
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "code point too short: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1813
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final getInt(Ljava/lang/String;I)I
    .locals 1

    mul-int/lit8 p1, p1, 0x2

    .line 516
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .locals 0

    .line 1834
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1843
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/CharSequence;",
            "U::",
            "Ljava/lang/CharSequence;",
            "T::",
            "Ljava/lang/Appendable;",
            ">(TS;ITU;ZTT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 1014
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 1015
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p3

    if-eqz v0, :cond_0

    .line 1017
    invoke-interface {p4, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    int-to-long v1, p3

    .line 1019
    invoke-static {v1, v2, p1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1014
    invoke-static {p3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result p3

    add-int/2addr v0, p3

    goto :goto_0

    .line 1022
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ge v0, p3, :cond_3

    if-eqz v0, :cond_2

    .line 1024
    invoke-interface {p4, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1026
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    int-to-long v1, p3

    invoke-static {v1, v2, p1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p4

    :catch_0
    move-exception p0

    .line 1031
    new-instance p1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static hex(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    .line 975
    invoke-static {p0, p1, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hex(JI)Ljava/lang/String;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "-8000000000000000"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    neg-long p0, p0

    :cond_2
    const/16 v1, 0x10

    .line 987
    invoke-static {p0, p1, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 988
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, p2, :cond_3

    .line 989
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0000000000000000"

    invoke-virtual {v2, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    if-eqz v0, :cond_4

    .line 992
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x2d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static hex(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    const-string v2, ","

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, v0}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/CharSequence;",
            ">(TS;ITS;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hex([BIILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p1, p2, :cond_1

    if-eqz p1, :cond_0

    .line 1039
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    :cond_0
    aget-byte v1, p0, p1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1042
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final highBit(I)B
    .locals 3

    if-gtz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x10000

    const/16 v2, 0x10

    if-lt p0, v1, :cond_1

    shr-int/lit8 p0, p0, 0x10

    int-to-byte v0, v2

    :cond_1
    const/16 v1, 0x100

    if-lt p0, v1, :cond_2

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_2
    if-lt p0, v2, :cond_3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    :cond_3
    const/4 v1, 0x4

    if-lt p0, v1, :cond_4

    shr-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :cond_4
    const/4 v1, 0x2

    if-lt p0, v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_5
    return v0
.end method

.method public static isUnprintable(I)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-le p0, v0, :cond_0

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

.method public static lookup(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1114
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1115
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static parseChar(Ljava/lang/String;[IC)Z
    .locals 4

    const/4 v0, 0x0

    .line 1133
    aget v1, p1, v0

    .line 1134
    aget v2, p1, v0

    invoke-static {p0, v2}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v2

    aput v2, p1, v0

    .line 1135
    aget v2, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    aget v2, p1, v0

    .line 1136
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, p2, :cond_0

    goto :goto_0

    .line 1140
    :cond_0
    aget p0, p1, v0

    const/4 p2, 0x1

    add-int/2addr p0, p2

    aput p0, p1, v0

    return p2

    .line 1137
    :cond_1
    :goto_0
    aput v1, p1, v0

    return v0
.end method

.method public static parseInteger(Ljava/lang/String;[II)I
    .locals 8

    const/4 v0, 0x0

    .line 1286
    aget v7, p1, v0

    const/4 v2, 0x1

    const-string v4, "0x"

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    move v3, v7

    .line 1289
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v7, v7, 0x2

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    if-ge v7, p2, :cond_1

    .line 1292
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    :goto_0
    move v2, v0

    move v3, v2

    :goto_1
    if-ge v7, p2, :cond_4

    add-int/lit8 v4, v7, 0x1

    .line 1299
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v1}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v5

    if-gez v5, :cond_2

    add-int/lit8 v7, v4, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    mul-int v6, v3, v1

    add-int/2addr v5, v6

    if-gt v5, v3, :cond_3

    return v0

    :cond_3
    move v7, v4

    move v3, v5

    goto :goto_1

    :cond_4
    :goto_2
    if-lez v2, :cond_5

    .line 1316
    aput v7, p1, v0

    :cond_5
    return v3
.end method

.method public static parseNumber(Ljava/lang/String;[II)I
    .locals 5

    const/4 v0, 0x0

    .line 1451
    aget v1, p1, v0

    move v2, v0

    .line 1452
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, -0x1

    if-ge v1, v3, :cond_2

    .line 1453
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1454
    invoke-static {v3, p2}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    mul-int/2addr v2, p2

    add-int/2addr v2, v3

    if-gez v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1466
    :cond_2
    :goto_1
    aget p0, p1, v0

    if-ne v1, p0, :cond_3

    return v4

    .line 1469
    :cond_3
    aput v1, p1, v0

    return v2
.end method

.method public static parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, p1

    move p1, v1

    move v3, p1

    .line 1169
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p1, v4, :cond_8

    .line 1170
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    const/4 v6, -0x1

    if-eq v4, v5, :cond_4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_2

    const/16 v5, 0x7e

    if-eq v4, v5, :cond_7

    if-lt v2, p2, :cond_0

    return v6

    :cond_0
    add-int/lit8 v5, v2, 0x1

    .line 1198
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/lang/UCharacter;->toLowerCase(I)I

    move-result v2

    int-to-char v2, v2

    if-eq v2, v4, :cond_1

    return v6

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    aput v2, v0, v1

    add-int/lit8 v4, v3, 0x1

    .line 1187
    invoke-static {p0, v0, p2}, Landroid/icu/impl/Utility;->parseInteger(Ljava/lang/String;[II)I

    move-result v5

    aput v5, p4, v3

    .line 1188
    aget v3, v0, v1

    if-ne v3, v2, :cond_3

    return v6

    .line 1192
    :cond_3
    aget v2, v0, v1

    move v3, v4

    goto :goto_1

    :cond_4
    if-lt v2, p2, :cond_5

    return v6

    :cond_5
    add-int/lit8 v4, v2, 0x1

    .line 1177
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1178
    invoke-static {v2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-nez v2, :cond_6

    return v6

    :cond_6
    move v2, v4

    .line 1183
    :cond_7
    invoke-static {p0, v2}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v2

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_8
    return v2
.end method

.method public static parsePattern(Ljava/lang/String;Landroid/icu/text/Replaceable;II)I
    .locals 5

    .line 1231
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x0

    .line 1235
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-ge p2, p3, :cond_4

    .line 1238
    invoke-interface {p1, p2}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v3

    const/16 v4, 0x7e

    if-ne v1, v4, :cond_2

    .line 1242
    invoke-static {v3}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1243
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1246
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    return p2

    :cond_2
    if-ne v3, v1, :cond_4

    .line 1255
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr v0, v1

    .line 1258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    return p2

    .line 1269
    :cond_3
    invoke-static {p0, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public static parseUnicodeIdentifier(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 5

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1337
    aget v2, p1, v1

    .line 1338
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1339
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1341
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1342
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 1347
    :cond_1
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1348
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1353
    :goto_1
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1355
    :cond_2
    aput v2, p1, v1

    .line 1356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quotedIndexOf(Ljava/lang/String;IILjava/lang/String;)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_3

    .line 1533
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_0
    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_2

    .line 1538
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 1539
    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    return p1

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static recursiveAppendNumber(Ljava/lang/Appendable;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;III)V"
        }
    .end annotation

    .line 1381
    :try_start_0
    rem-int v0, p1, p2

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    if-le p3, v1, :cond_1

    .line 1384
    :cond_0
    div-int/2addr p1, p2

    sub-int/2addr p3, v1

    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/Utility;->recursiveAppendNumber(Ljava/lang/Appendable;III)V

    .line 1386
    :cond_1
    sget-object p1, Landroid/icu/impl/Utility;->DIGITS:[C

    aget-char p1, p1, v0

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1388
    new-instance p1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-gtz p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return-object p0

    .line 1767
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 1769
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1771
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static split(Ljava/lang/String;C[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1068
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1069
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 1070
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v1, 0x1

    .line 1074
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    .line 1075
    :goto_1
    array-length p0, p2

    if-ge p1, p0, :cond_2

    add-int/lit8 p0, p1, 0x1

    const-string v0, ""

    .line 1076
    aput-object v0, p2, p1

    move p1, p0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 4

    .line 1092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1093
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1094
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1095
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v1, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1099
    :cond_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\\E"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitWhitespace(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "\\s+"

    .line 1782
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    .line 1853
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    .line 927
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 928
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_1

    aput v4, v1, v2

    .line 931
    invoke-static {p0, v1}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 936
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 937
    aget v3, v1, v2

    goto :goto_0

    .line 933
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid escape sequence "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, -0x1

    add-int/lit8 v4, v4, 0x8

    .line 934
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_0

    .line 942
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescapeAt(Ljava/lang/String;[I)I
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 812
    aget v2, p1, v1

    .line 813
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, -0x1

    if-ltz v2, :cond_15

    if-lt v2, v3, :cond_0

    goto/16 :goto_9

    .line 819
    :cond_0
    invoke-static {v0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 820
    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v2, v6

    const/16 v6, 0x55

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eq v5, v6, :cond_5

    const/16 v6, 0x75

    if-eq v5, v6, :cond_4

    const/16 v6, 0x78

    if-eq v5, v6, :cond_2

    .line 841
    invoke-static {v5, v9}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v6

    if-ltz v6, :cond_1

    move v14, v1

    move v12, v8

    move v13, v12

    move v7, v10

    move v11, v7

    goto :goto_0

    :cond_1
    move v6, v1

    move v11, v6

    move v12, v11

    move v14, v12

    move v13, v7

    move v7, v14

    goto :goto_0

    :cond_2
    if-ge v2, v3, :cond_3

    .line 832
    invoke-static {v0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v6

    const/16 v11, 0x7b

    if-ne v6, v11, :cond_3

    add-int/lit8 v2, v2, 0x1

    move v6, v1

    move v11, v6

    move v13, v7

    move v12, v9

    move v7, v10

    move v14, v7

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    move v11, v1

    move v14, v11

    move v12, v6

    move v13, v7

    move v7, v10

    move v6, v14

    goto :goto_0

    :cond_4
    move v6, v1

    move v11, v6

    move v14, v11

    move v12, v7

    move v13, v12

    goto :goto_0

    :cond_5
    move v6, v1

    move v11, v6

    move v14, v11

    move v13, v7

    move v7, v9

    move v12, v7

    :goto_0
    if-eqz v7, :cond_10

    :goto_1
    if-ge v2, v3, :cond_8

    if-ge v11, v12, :cond_8

    .line 853
    invoke-static {v0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v5

    if-ne v13, v8, :cond_6

    move v15, v9

    goto :goto_2

    :cond_6
    const/16 v15, 0x10

    .line 854
    :goto_2
    invoke-static {v5, v15}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v15

    if-gez v15, :cond_7

    goto :goto_3

    :cond_7
    shl-int/2addr v6, v13

    or-int/2addr v6, v15

    .line 859
    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v15

    add-int/2addr v2, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    if-ge v11, v7, :cond_9

    return v4

    :cond_9
    if-eqz v14, :cond_b

    const/16 v7, 0x7d

    if-eq v5, v7, :cond_a

    return v4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    :cond_b
    if-ltz v6, :cond_f

    const/high16 v5, 0x110000

    if-lt v6, v5, :cond_c

    goto :goto_6

    :cond_c
    if-ge v2, v3, :cond_e

    int-to-char v4, v6

    .line 879
    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_e

    add-int/lit8 v5, v2, 0x1

    .line 881
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_d

    if-ge v5, v3, :cond_d

    new-array v3, v10, [I

    aput v5, v3, v1

    .line 884
    invoke-static {v0, v3}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v7

    .line 885
    aget v0, v3, v1

    goto :goto_4

    :cond_d
    move v0, v5

    :goto_4
    int-to-char v3, v7

    .line 887
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 889
    invoke-static {v4, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    goto :goto_5

    :cond_e
    move v0, v2

    .line 892
    :goto_5
    aput v0, p1, v1

    return v6

    :cond_f
    :goto_6
    return v4

    :cond_10
    move v4, v1

    .line 897
    :goto_7
    sget-object v6, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    array-length v7, v6

    if-ge v4, v7, :cond_13

    .line 898
    aget-char v7, v6, v4

    if-ne v5, v7, :cond_11

    .line 899
    aput v2, p1, v1

    add-int/2addr v4, v10

    .line 900
    aget-char v0, v6, v4

    return v0

    .line 901
    :cond_11
    aget-char v6, v6, v4

    if-ge v5, v6, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 v4, v4, 0x2

    goto :goto_7

    :cond_13
    :goto_8
    const/16 v4, 0x63

    if-ne v5, v4, :cond_14

    if-ge v2, v3, :cond_14

    .line 908
    invoke-static {v0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 909
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v1

    and-int/lit8 v0, v0, 0x1f

    return v0

    .line 915
    :cond_14
    aput v2, p1, v1

    return v5

    :cond_15
    :goto_9
    return v4
.end method

.method public static unescapeLeniently(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    .line 952
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 953
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_1

    aput v4, v1, v2

    .line 956
    invoke-static {p0, v1}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v5

    if-gez v5, :cond_0

    .line 958
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 960
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 961
    aget v4, v1, v2

    goto :goto_1

    .line 964
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v3, v4

    goto :goto_0

    .line 967
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf([I)Ljava/lang/String;
    .locals 3

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1752
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1753
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1755
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
