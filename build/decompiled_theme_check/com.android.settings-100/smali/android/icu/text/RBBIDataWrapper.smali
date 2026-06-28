.class final Landroid/icu/text/RBBIDataWrapper;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;,
        Landroid/icu/text/RBBIDataWrapper$IsAcceptable;
    }
.end annotation


# static fields
.field static final ACCEPTING:I = 0x0

.field static final DATA_FORMAT:I = 0x42726b20

.field static final DH_CATCOUNT:I = 0x3

.field static final DH_FORMATVERSION:I = 0x1

.field static final DH_FTABLE:I = 0x4

.field static final DH_FTABLELEN:I = 0x5

.field static final DH_LENGTH:I = 0x2

.field static final DH_MAGIC:I = 0x0

.field static final DH_RTABLE:I = 0x6

.field static final DH_RTABLELEN:I = 0x7

.field static final DH_RULESOURCE:I = 0xe

.field static final DH_RULESOURCELEN:I = 0xf

.field static final DH_SFTABLE:I = 0x8

.field static final DH_SFTABLELEN:I = 0x9

.field static final DH_SIZE:I = 0x18

.field static final DH_SRTABLE:I = 0xa

.field static final DH_SRTABLELEN:I = 0xb

.field static final DH_STATUSTABLE:I = 0x10

.field static final DH_STATUSTABLELEN:I = 0x11

.field static final DH_TRIE:I = 0xc

.field static final DH_TRIELEN:I = 0xd

.field static final FLAGS:I = 0x4

.field static final FORMAT_VERSION:I = 0x4000000

.field private static final IS_ACCEPTABLE:Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

.field static final LOOKAHEAD:I = 0x1

.field static final NEXTSTATES:I = 0x4

.field static final NUMSTATES:I = 0x0

.field static final RBBI_BOF_REQUIRED:I = 0x2

.field static final RBBI_LOOKAHEAD_HARD_BREAK:I = 0x1

.field static final RESERVED:I = 0x3

.field static final ROWLEN:I = 0x2

.field private static final ROW_DATA:I = 0x8

.field static final TAGIDX:I = 0x2


# instance fields
.field fFTable:[S

.field fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

.field fRTable:[S

.field fRuleSource:Ljava/lang/String;

.field fSFTable:[S

.field fSRTable:[S

.field fStatusTable:[I

.field fTrie:Landroid/icu/impl/Trie2;

.field private isBigEndian:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/RBBIDataWrapper$IsAcceptable;-><init>(Landroid/icu/text/RBBIDataWrapper$1;)V

    sput-object v0, Landroid/icu/text/RBBIDataWrapper;->IS_ACCEPTABLE:Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dumpCharCategories(Ljava/io/PrintStream;)V
    .locals 13

    .line 437
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v0, v0, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    add-int/lit8 v0, v0, 0x1

    .line 438
    new-array v1, v0, [Ljava/lang/String;

    .line 444
    new-array v0, v0, [I

    const/4 v2, 0x0

    move v3, v2

    .line 446
    :goto_0
    iget-object v4, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-gt v3, v4, :cond_0

    const-string v4, ""

    .line 447
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "\nCharacter Categories"

    .line 449
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "--------------------"

    .line 450
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, -0x1

    move v5, v2

    move v6, v5

    move v4, v3

    move v3, v6

    :goto_1
    const v7, 0x10ffff

    const-string v8, "-"

    const-string v9, " "

    if-gt v3, v7, :cond_6

    .line 452
    iget-object v7, p0, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/Trie2;

    invoke-virtual {v7, v3}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v7

    and-int/lit16 v7, v7, -0x4001

    if-ltz v7, :cond_5

    .line 454
    iget-object v10, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v10, v10, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-le v7, v10, :cond_1

    goto/16 :goto_3

    :cond_1
    if-ne v7, v4, :cond_2

    goto :goto_2

    :cond_2
    if-ltz v4, :cond_4

    .line 463
    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    aget v11, v0, v4

    add-int/lit8 v11, v11, 0x46

    if-le v10, v11, :cond_3

    .line 464
    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    aput v10, v0, v4

    .line 465
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n       "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v4

    .line 468
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v4

    if-eq v6, v5, :cond_4

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    :cond_4
    move v5, v3

    move v4, v7

    :goto_2
    add-int/lit8 v6, v3, 0x1

    move v12, v6

    move v6, v3

    move v3, v12

    goto/16 :goto_1

    .line 455
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error, bad category "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for char "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 477
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    if-eq v6, v5, :cond_7

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    .line 482
    :cond_7
    :goto_4
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v0, v0, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-gt v2, v0, :cond_8

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 485
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method private dumpRow(Ljava/io/PrintStream;[SI)V
    .locals 6

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x4

    .line 413
    invoke-static {p3, v1}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p0, p3}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result p3

    add-int/lit8 v3, p3, 0x0

    .line 415
    aget-short v4, p2, v3

    const-string v5, "     "

    if-eqz v4, :cond_0

    .line 416
    aget-short v3, p2, v3

    invoke-static {v3, v2}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v3, p3, 0x1

    .line 420
    aget-short v4, p2, v3

    if-eqz v4, :cond_1

    .line 421
    aget-short v3, p2, v3

    invoke-static {v3, v2}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 423
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, p3, 0x2

    .line 425
    aget-short v3, p2, v3

    invoke-static {v3, v2}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 427
    :goto_2
    iget-object v4, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, p3, 0x4

    add-int/2addr v4, v3

    .line 428
    aget-short v4, p2, v4

    invoke-static {v4, v2}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 431
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private dumpTable(Ljava/io/PrintStream;[S)V
    .locals 4

    if-eqz p2, :cond_4

    .line 383
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_3

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Row  Acc Look  Tag"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 389
    :goto_0
    iget-object v3, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x5

    .line 390
    invoke-static {v2, v3}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v1

    .line 393
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    const-string v3, "-"

    .line 394
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 396
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 397
    :goto_2
    invoke-direct {p0, p2}, Landroid/icu/text/RBBIDataWrapper;->getStateTableNumStates([S)I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 398
    invoke-direct {p0, p1, p2, v1}, Landroid/icu/text/RBBIDataWrapper;->dumpRow(Ljava/io/PrintStream;[SI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 400
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    goto :goto_4

    :cond_4
    :goto_3
    const-string p0, "  -- null -- "

    .line 384
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method static get(Ljava/nio/ByteBuffer;)Landroid/icu/text/RBBIDataWrapper;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Landroid/icu/text/RBBIDataWrapper;

    invoke-direct {v0}, Landroid/icu/text/RBBIDataWrapper;-><init>()V

    .line 159
    sget-object v1, Landroid/icu/text/RBBIDataWrapper;->IS_ACCEPTABLE:Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

    const v2, 0x42726b20

    invoke-static {p0, v2, v1}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    .line 160
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Landroid/icu/text/RBBIDataWrapper;->isBigEndian:Z

    .line 163
    new-instance v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-direct {v1}, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;-><init>()V

    iput-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    .line 164
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    .line 165
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v1, v3

    .line 166
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v1, v4

    .line 167
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 168
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/4 v5, 0x3

    aput-byte v2, v1, v5

    .line 169
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    .line 170
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    .line 171
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    .line 172
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    .line 173
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    .line 174
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    .line 175
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    .line 176
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    .line 177
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    .line 178
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    .line 179
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    .line 180
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrieLen:I

    .line 181
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    .line 182
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    .line 183
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    .line 184
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    const/16 v1, 0x18

    .line 185
    invoke-static {p0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 188
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    const v2, 0xb1a0

    if-ne v1, v2, :cond_8

    sget-object v1, Landroid/icu/text/RBBIDataWrapper;->IS_ACCEPTABLE:Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {v1, v2}, Landroid/icu/text/RBBIDataWrapper$IsAcceptable;->isDataVersionAcceptable([B)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x60

    .line 200
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    const-string v6, "Break iterator Rule data corrupt"

    if-lt v2, v1, :cond_7

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    iget-object v7, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v7, v7, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    if-gt v2, v7, :cond_7

    .line 205
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 206
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    .line 208
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    div-int/2addr v2, v3

    iget-object v7, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v7, v7, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    and-int/2addr v7, v4

    invoke-static {p0, v2, v7}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    .line 210
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    add-int/2addr v1, v2

    .line 217
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 218
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    .line 221
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    div-int/2addr v2, v3

    iget-object v7, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v7, v7, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    and-int/2addr v7, v4

    invoke-static {p0, v2, v7}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    .line 223
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    add-int/2addr v1, v2

    .line 228
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    if-lez v2, :cond_1

    .line 230
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 231
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    .line 234
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    div-int/2addr v2, v3

    iget-object v7, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v7, v7, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    and-int/2addr v7, v4

    invoke-static {p0, v2, v7}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    .line 236
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    add-int/2addr v1, v2

    .line 242
    :cond_1
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    if-lez v2, :cond_2

    .line 244
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 245
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    .line 248
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    div-int/2addr v2, v3

    iget-object v7, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v7, v7, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    and-int/2addr v7, v4

    invoke-static {p0, v2, v7}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    .line 250
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    add-int/2addr v1, v2

    .line 257
    :cond_2
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    if-eqz v2, :cond_3

    .line 258
    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    const/4 v2, 0x0

    .line 259
    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    .line 269
    :cond_3
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 270
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    .line 272
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 277
    invoke-static {p0}, Landroid/icu/impl/Trie2;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/Trie2;

    .line 281
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 289
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    if-gt v1, v2, :cond_6

    .line 292
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 293
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    .line 294
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    div-int/lit8 v2, v2, 0x4

    iget-object v7, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v7, v7, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    and-int/2addr v5, v7

    invoke-static {p0, v2, v5}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    .line 296
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    add-int/2addr v1, v2

    .line 301
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    if-gt v1, v2, :cond_5

    .line 304
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 305
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    .line 306
    iget-object v1, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    div-int/2addr v1, v3

    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    and-int/2addr v2, v4

    invoke-static {p0, v1, v2}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    .line 309
    sget-object p0, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    if-eqz p0, :cond_4

    sget-object p0, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_4

    .line 310
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Landroid/icu/text/RBBIDataWrapper;->dump(Ljava/io/PrintStream;)V

    :cond_4
    return-object v0

    .line 302
    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 290
    :cond_6
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 201
    :cond_7
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 189
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Break Iterator Rule Data Magic Number Incorrect, or unsupported data version."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getStateTableNumStates([S)I
    .locals 3

    .line 319
    iget-boolean p0, p0, Landroid/icu/text/RBBIDataWrapper;->isBigEndian:Z

    const v0, 0xffff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    .line 320
    aget-short p0, p1, v1

    shl-int/lit8 p0, p0, 0x10

    aget-short p1, p1, v2

    :goto_0
    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0

    .line 322
    :cond_0
    aget-short p0, p1, v2

    shl-int/lit8 p0, p0, 0x10

    aget-short p1, p1, v1

    goto :goto_0
.end method

.method public static intToHexString(II)Ljava/lang/String;
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 372
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    const/16 v1, 0x20

    .line 374
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intToString(II)Ljava/lang/String;
    .locals 2

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 360
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    const/16 v1, 0x20

    .line 362
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method dump(Ljava/io/PrintStream;)V
    .locals 2

    .line 335
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    array-length v0, v0

    if-eqz v0, :cond_0

    const-string v0, "RBBI Data Wrapper dump ..."

    .line 339
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    const-string v0, "Forward State Table"

    .line 341
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    invoke-direct {p0, p1, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable(Ljava/io/PrintStream;[S)V

    const-string v0, "Reverse State Table"

    .line 343
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    invoke-direct {p0, p1, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable(Ljava/io/PrintStream;[S)V

    const-string v0, "Forward Safe Points Table"

    .line 345
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    invoke-direct {p0, p1, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable(Ljava/io/PrintStream;[S)V

    const-string v0, "Reverse Safe Points Table"

    .line 347
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    invoke-direct {p0, p1, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable(Ljava/io/PrintStream;[S)V

    .line 350
    invoke-direct {p0, p1}, Landroid/icu/text/RBBIDataWrapper;->dumpCharCategories(Ljava/io/PrintStream;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source Rules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 337
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method getRowIndex(I)I
    .locals 0

    .line 146
    iget-object p0, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget p0, p0, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    add-int/lit8 p0, p0, 0x4

    mul-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x8

    return p1
.end method

.method getStateTableFlags([S)I
    .locals 0

    .line 329
    iget-boolean p0, p0, Landroid/icu/text/RBBIDataWrapper;->isBigEndian:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    aget-short p0, p1, p0

    return p0
.end method
