.class public final Landroid/icu/util/BytesTrie;
.super Ljava/lang/Object;
.source "BytesTrie.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/BytesTrie$Iterator;,
        Landroid/icu/util/BytesTrie$Entry;,
        Landroid/icu/util/BytesTrie$Result;,
        Landroid/icu/util/BytesTrie$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/util/BytesTrie$Entry;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final kFiveByteDeltaLead:I = 0xff

.field static final kFiveByteValueLead:I = 0x7f

.field static final kFourByteDeltaLead:I = 0xfe

.field static final kFourByteValueLead:I = 0x7e

.field static final kMaxBranchLinearSubNodeLength:I = 0x5

.field static final kMaxLinearMatchLength:I = 0x10

.field static final kMaxOneByteDelta:I = 0xbf

.field static final kMaxOneByteValue:I = 0x40

.field static final kMaxThreeByteDelta:I = 0xdffff

.field static final kMaxThreeByteValue:I = 0x11ffff

.field static final kMaxTwoByteDelta:I = 0x2fff

.field static final kMaxTwoByteValue:I = 0x1aff

.field static final kMinLinearMatch:I = 0x10

.field static final kMinOneByteValueLead:I = 0x10

.field static final kMinThreeByteDeltaLead:I = 0xf0

.field static final kMinThreeByteValueLead:I = 0x6c

.field static final kMinTwoByteDeltaLead:I = 0xc0

.field static final kMinTwoByteValueLead:I = 0x51

.field static final kMinValueLead:I = 0x20

.field private static final kValueIsFinal:I = 0x1

.field private static valueResults_:[Landroid/icu/util/BytesTrie$Result;


# instance fields
.field private bytes_:[B

.field private pos_:I

.field private remainingMatchLength_:I

.field private root_:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/util/BytesTrie$Result;

    const/4 v1, 0x0

    .line 747
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    aput-object v2, v0, v1

    sput-object v0, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    .line 47
    iput p2, p0, Landroid/icu/util/BytesTrie;->root_:I

    iput p2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    return-void
.end method

.method static synthetic access$1100(II)I
    .locals 0

    .line 30
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200([BI)I
    .locals 0

    .line 30
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300([BI)I
    .locals 0

    .line 30
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result p0

    return p0
.end method

.method static synthetic access$900([BII)I
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    move-result p0

    return p0
.end method

.method private static append(Ljava/lang/Appendable;I)V
    .locals 0

    int-to-char p1, p1

    .line 946
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 948
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private branchNext(III)Landroid/icu/util/BytesTrie$Result;
    .locals 4

    if-nez p2, :cond_0

    .line 753
    iget-object p2, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p2, p1

    and-int/lit16 p2, p1, 0xff

    move p1, v0

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p2, v0

    :goto_0
    const/4 v1, 0x5

    if-le p2, v1, :cond_2

    .line 759
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    if-ge p3, p1, :cond_1

    shr-int/lit8 p2, p2, 0x1

    .line 761
    invoke-static {v1, v2}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result p1

    goto :goto_0

    :cond_1
    shr-int/lit8 p1, p2, 0x1

    sub-int/2addr p2, p1

    .line 764
    invoke-static {v1, v2}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p1

    goto :goto_0

    .line 771
    :cond_2
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v3, 0x20

    if-ne p3, p1, :cond_9

    .line 773
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_3

    .line 777
    sget-object p1, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    shr-int/2addr p1, v0

    const/16 p2, 0x51

    if-ge p1, p2, :cond_4

    add-int/lit8 p1, p1, -0x10

    goto :goto_1

    :cond_4
    const/16 p3, 0x6c

    if-ge p1, p3, :cond_5

    sub-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 p2, v2, 0x1

    .line 787
    aget-byte p3, v1, v2

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p1, p3

    move v2, p2

    goto :goto_1

    :cond_5
    const/16 p2, 0x7e

    if-ge p1, p2, :cond_6

    sub-int/2addr p1, p3

    shl-int/lit8 p1, p1, 0x10

    .line 789
    aget-byte p2, v1, v2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    add-int/lit8 p2, v2, 0x1

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_6
    if-ne p1, p2, :cond_7

    .line 792
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 p2, v2, 0x1

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    add-int/lit8 p2, v2, 0x2

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 795
    :cond_7
    aget-byte p1, v1, v2

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 p2, v2, 0x1

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    add-int/lit8 p2, v2, 0x2

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    add-int/lit8 p2, v2, 0x3

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    add-int/lit8 v2, v2, 0x4

    :goto_1
    add-int/2addr v2, p1

    .line 800
    iget-object p1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    if-lt p1, v3, :cond_8

    .line 801
    sget-object p2, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/2addr p1, v0

    aget-object p1, p2, p1

    goto :goto_2

    :cond_8
    sget-object p1, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 803
    :goto_2
    iput v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    return-object p1

    :cond_9
    add-int/lit8 p2, p2, -0x1

    .line 807
    invoke-static {v1, v2}, Landroid/icu/util/BytesTrie;->skipValue([BI)I

    move-result p1

    if-gt p2, v0, :cond_2

    .line 809
    iget-object p2, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    if-ne p3, p1, :cond_b

    .line 810
    iput v1, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 811
    aget-byte p0, p2, v1

    and-int/lit16 p0, p0, 0xff

    if-lt p0, v3, :cond_a

    .line 812
    sget-object p1, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/2addr p0, v0

    aget-object p0, p1, p0

    goto :goto_3

    :cond_a
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    :goto_3
    return-object p0

    .line 814
    :cond_b
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 815
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p0
.end method

.method private static findUniqueValue([BIJ)J
    .locals 10

    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 898
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0x10

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-ge p1, v1, :cond_2

    if-nez p1, :cond_0

    add-int/lit8 p1, v0, 0x1

    .line 901
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_1

    :cond_0
    move v8, v0

    move v0, p1

    move p1, v8

    :goto_1
    add-int/2addr v0, v4

    .line 903
    invoke-static {p0, p1, v0, p2, p3}, Landroid/icu/util/BytesTrie;->findUniqueValueFromBranch([BIIJ)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-nez p3, :cond_1

    return-wide v2

    :cond_1
    const/16 p3, 0x21

    ushr-long v0, p1, p3

    long-to-int p3, v0

    move-wide v8, p1

    move p1, p3

    move-wide p2, v8

    goto :goto_0

    :cond_2
    const/16 v1, 0x20

    if-ge p1, v1, :cond_3

    add-int/lit8 p1, p1, -0x10

    add-int/2addr p1, v4

    add-int/2addr v0, p1

    move p1, v0

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    shr-int/lit8 v5, p1, 0x1

    .line 913
    invoke-static {p0, v0, v5}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    move-result v5

    cmp-long v6, p2, v2

    if-eqz v6, :cond_5

    shr-long v6, p2, v4

    long-to-int v4, v6

    if-eq v5, v4, :cond_6

    return-wide v2

    :cond_5
    int-to-long p2, v5

    shl-long/2addr p2, v4

    const-wide/16 v2, 0x1

    or-long/2addr p2, v2

    :cond_6
    if-eqz v1, :cond_7

    return-wide p2

    .line 924
    :cond_7
    invoke-static {v0, p1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result p1

    goto :goto_0
.end method

.method private static findUniqueValueFromBranch([BIIJ)J
    .locals 6

    :goto_0
    const/4 v0, 0x5

    const-wide/16 v1, 0x0

    if-le p2, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 860
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result v0

    shr-int/lit8 v3, p2, 0x1

    invoke-static {p0, v0, v3, p3, p4}, Landroid/icu/util/BytesTrie;->findUniqueValueFromBranch([BIIJ)J

    move-result-wide p3

    cmp-long v0, p3, v1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    sub-int/2addr p2, v3

    .line 865
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    add-int/2addr p1, v0

    add-int/lit8 v3, p1, 0x1

    .line 870
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    shr-int/lit8 v5, p1, 0x1

    .line 872
    invoke-static {p0, v3, v5}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    move-result v5

    .line 873
    invoke-static {v3, p1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result p1

    if-eqz v4, :cond_4

    cmp-long v3, p3, v1

    if-eqz v3, :cond_3

    shr-long v3, p3, v0

    long-to-int v3, v3

    if-eq v5, v3, :cond_5

    return-wide v1

    :cond_3
    int-to-long p3, v5

    shl-long/2addr p3, v0

    const-wide/16 v3, 0x1

    or-long/2addr p3, v3

    goto :goto_2

    :cond_4
    add-int/2addr v5, p1

    .line 883
    invoke-static {p0, v5, p3, p4}, Landroid/icu/util/BytesTrie;->findUniqueValue([BIJ)J

    move-result-wide p3

    cmp-long v3, p3, v1

    if-nez v3, :cond_5

    return-wide v1

    :cond_5
    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-gt p2, v0, :cond_1

    add-int/2addr p1, v0

    int-to-long p0, p1

    const/16 p2, 0x21

    shl-long/2addr p0, p2

    const-wide v0, 0x1ffffffffL

    and-long p2, p3, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method private static getNextBranchBytes([BIILjava/lang/Appendable;)V
    .locals 2

    :goto_0
    const/4 v0, 0x5

    if-le p2, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 934
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result v0

    shr-int/lit8 v1, p2, 0x1

    invoke-static {p0, v0, v1, p3}, Landroid/icu/util/BytesTrie;->getNextBranchBytes([BIILjava/lang/Appendable;)V

    sub-int/2addr p2, v1

    .line 936
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 939
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    .line 940
    invoke-static {p0, v0}, Landroid/icu/util/BytesTrie;->skipValue([BI)I

    move-result p1

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 942
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    invoke-static {p3, p0}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public static iterator([BII)Landroid/icu/util/BytesTrie$Iterator;
    .locals 7

    .line 428
    new-instance v6, Landroid/icu/util/BytesTrie$Iterator;

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIIILandroid/icu/util/BytesTrie$1;)V

    return-object v6
.end method

.method private static jumpByDelta([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 715
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0xc0

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xf0

    if-ge p1, v1, :cond_1

    add-int/lit16 p1, p1, -0xc0

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 v1, v0, 0x1

    .line 719
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p1, p0

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0xfe

    if-ge p1, v1, :cond_2

    add-int/lit16 p1, p1, -0xf0

    shl-int/lit8 p1, p1, 0x10

    .line 721
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    add-int/lit8 v1, v0, 0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p1, p0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 724
    aget-byte p1, p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    add-int/lit8 v1, v0, 0x2

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p1, p0

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 727
    :cond_3
    aget-byte p1, p0, v0

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    add-int/lit8 v1, v0, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p1, p0

    add-int/lit8 v0, v0, 0x4

    :goto_0
    add-int/2addr v0, p1

    return v0
.end method

.method private nextImpl(II)Landroid/icu/util/BytesTrie$Result;
    .locals 4

    .line 822
    :goto_0
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0x10

    if-ge p1, v2, :cond_0

    .line 824
    invoke-direct {p0, v1, p1, p2}, Landroid/icu/util/BytesTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v3, 0x20

    if-ge p1, v3, :cond_2

    sub-int/2addr p1, v2

    add-int/lit8 v2, v1, 0x1

    .line 828
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    if-ne p2, v1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 829
    iput p1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 830
    iput v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez p1, :cond_1

    .line 831
    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    if-lt p0, v3, :cond_1

    .line 832
    sget-object p1, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 p0, p0, 0x1

    aget-object p0, p1, p0

    goto :goto_1

    :cond_1
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    :goto_1
    return-object p0

    :cond_2
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    .line 847
    :cond_3
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 848
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p0

    .line 842
    :cond_4
    invoke-static {v1, p1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result p1

    goto :goto_0
.end method

.method private static readValue([BII)I
    .locals 2

    const/16 v0, 0x51

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x10

    goto :goto_1

    :cond_0
    const/16 v1, 0x6c

    if-ge p2, v1, :cond_1

    sub-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0x8

    .line 685
    aget-byte p0, p0, p1

    :goto_0
    and-int/lit16 p0, p0, 0xff

    or-int/2addr p2, p0

    goto :goto_1

    :cond_1
    const/16 v0, 0x7e

    if-ge p2, v0, :cond_2

    sub-int/2addr p2, v1

    shl-int/lit8 p2, p2, 0x10

    .line 687
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    .line 689
    aget-byte p2, p0, p1

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x2

    aget-byte p0, p0, p1

    goto :goto_0

    .line 691
    :cond_3
    aget-byte p2, p0, p1

    shl-int/lit8 p2, p2, 0x18

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    goto :goto_0

    :goto_1
    return p2
.end method

.method private static skipDelta([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 734
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    const/16 p1, 0xc0

    if-lt p0, p1, :cond_2

    const/16 p1, 0xf0

    if-ge p0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0xfe

    if-ge p0, p1, :cond_1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    and-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, 0x3

    add-int/2addr v0, p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static skipValue(II)I
    .locals 1

    const/16 v0, 0xa2

    if-lt p1, v0, :cond_2

    const/16 v0, 0xd8

    if-ge p1, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xfc

    if-ge p1, v0, :cond_1

    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    shr-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x3

    add-int/2addr p0, p1

    :cond_2
    :goto_0
    return p0
.end method

.method private static skipValue([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 709
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 710
    invoke-static {v0, p0}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result p0

    return p0
.end method

.method private stop()V
    .locals 1

    const/4 v0, -0x1

    .line 675
    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 58
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public current()Landroid/icu/util/BytesTrie$Result;
    .locals 2

    .line 181
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez v0, :cond_0

    .line 183
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p0

    .line 186
    :cond_0
    iget v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    if-gez v1, :cond_1

    iget-object p0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    .line 187
    sget-object v0, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 p0, p0, 0x1

    aget-object p0, v0, p0

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    :goto_0
    return-object p0
.end method

.method public first(I)Landroid/icu/util/BytesTrie$Result;
    .locals 1

    const/4 v0, -0x1

    .line 199
    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x100

    .line 203
    :cond_0
    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    invoke-direct {p0, v0, p1}, Landroid/icu/util/BytesTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    move-result-object p0

    return-object p0
.end method

.method public getNextBytes(Ljava/lang/Appendable;)I
    .locals 5

    .line 369
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 373
    :cond_0
    iget v2, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    .line 374
    iget-object p0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p1, p0}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    return v3

    .line 377
    :cond_1
    iget-object v2, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x20

    if-lt v0, v2, :cond_3

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    return v1

    .line 382
    :cond_2
    invoke-static {v4, v0}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result v0

    .line 383
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    :cond_3
    const/16 v1, 0x10

    if-ge v0, v1, :cond_5

    if-nez v0, :cond_4

    .line 389
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v1, v4, 0x1

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_4
    move v1, v4

    .line 391
    :goto_0
    iget-object p0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/2addr v0, v3

    invoke-static {p0, v1, v0, p1}, Landroid/icu/util/BytesTrie;->getNextBranchBytes([BIILjava/lang/Appendable;)V

    return v0

    .line 395
    :cond_5
    iget-object p0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    invoke-static {p1, p0}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    return v3
.end method

.method public getUniqueValue()J
    .locals 4

    .line 351
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    const-wide/16 v1, 0x0

    if-gez v0, :cond_0

    return-wide v1

    .line 356
    :cond_0
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    iget p0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0, v1, v2}, Landroid/icu/util/BytesTrie;->findUniqueValue([BIJ)J

    move-result-wide v0

    const/16 p0, 0x1f

    shl-long/2addr v0, p0

    shr-long/2addr v0, p0

    return-wide v0
.end method

.method public getValue()I
    .locals 2

    .line 337
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 338
    iget-object p0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x1

    .line 340
    invoke-static {p0, v1, v0}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    move-result p0

    return p0
.end method

.method public iterator()Landroid/icu/util/BytesTrie$Iterator;
    .locals 7

    .line 406
    new-instance v6, Landroid/icu/util/BytesTrie$Iterator;

    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    iget v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    iget v3, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIIILandroid/icu/util/BytesTrie$1;)V

    return-object v6
.end method

.method public iterator(I)Landroid/icu/util/BytesTrie$Iterator;
    .locals 7

    .line 416
    new-instance v6, Landroid/icu/util/BytesTrie$Iterator;

    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    iget v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    iget v3, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    const/4 v5, 0x0

    move-object v0, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIIILandroid/icu/util/BytesTrie$1;)V

    return-object v6
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 30
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->iterator()Landroid/icu/util/BytesTrie$Iterator;

    move-result-object p0

    return-object p0
.end method

.method public next(I)Landroid/icu/util/BytesTrie$Result;
    .locals 4

    .line 213
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez v0, :cond_0

    .line 215
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    add-int/lit16 p1, p1, 0x100

    .line 220
    :cond_1
    iget v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    if-ltz v1, :cond_4

    .line 223
    iget-object v2, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    if-ne p1, v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 224
    iput v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 225
    iput v3, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez v1, :cond_2

    .line 227
    aget-byte p0, v2, v3

    and-int/lit16 p0, p0, 0xff

    const/16 p1, 0x20

    if-lt p0, p1, :cond_2

    .line 228
    sget-object p1, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 p0, p0, 0x1

    aget-object p0, p1, p0

    goto :goto_0

    :cond_2
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    :goto_0
    return-object p0

    .line 230
    :cond_3
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 231
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p0

    .line 234
    :cond_4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/BytesTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    move-result-object p0

    return-object p0
.end method

.method public next([BII)Landroid/icu/util/BytesTrie$Result;
    .locals 6

    if-lt p2, p3, :cond_0

    .line 255
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->current()Landroid/icu/util/BytesTrie$Result;

    move-result-object p0

    return-object p0

    .line 257
    :cond_0
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez v0, :cond_1

    .line 259
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p0

    .line 261
    :cond_1
    iget v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    :goto_0
    const/16 v2, 0x20

    if-ne p2, p3, :cond_3

    .line 268
    iput v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 269
    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez v1, :cond_2

    .line 271
    iget-object p0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    if-lt p0, v2, :cond_2

    .line 272
    sget-object p1, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 p0, p0, 0x1

    aget-object p0, p1, p0

    goto :goto_1

    :cond_2
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    :goto_1
    return-object p0

    :cond_3
    add-int/lit8 v3, p2, 0x1

    .line 274
    aget-byte p2, p1, p2

    if-gez v1, :cond_b

    .line 276
    iput v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 287
    :goto_2
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v5, 0x10

    if-ge v0, v5, :cond_7

    and-int/lit16 p2, p2, 0xff

    .line 289
    invoke-direct {p0, v4, v0, p2}, Landroid/icu/util/BytesTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    move-result-object p2

    .line 290
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-ne p2, v0, :cond_4

    .line 291
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p0

    :cond_4
    if-ne v3, p3, :cond_5

    return-object p2

    .line 297
    :cond_5
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne p2, v0, :cond_6

    .line 299
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 300
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p0

    :cond_6
    add-int/lit8 p2, v3, 0x1

    .line 302
    aget-byte v0, p1, v3

    .line 303
    iget v1, p0, Landroid/icu/util/BytesTrie;->pos_:I

    move v3, p2

    move p2, v0

    move v0, v1

    goto :goto_2

    :cond_7
    if-ge v0, v2, :cond_9

    add-int/lit8 v0, v0, -0x10

    .line 307
    aget-byte v1, v1, v4

    if-eq p2, v1, :cond_8

    .line 308
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 309
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p0

    :cond_8
    add-int/lit8 p2, v4, 0x1

    add-int/lit8 v1, v0, -0x1

    move v0, p2

    goto :goto_3

    :cond_9
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_a

    .line 316
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 317
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p0

    .line 320
    :cond_a
    invoke-static {v4, v0}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result v0

    goto :goto_2

    .line 279
    :cond_b
    iget-object v2, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v2, v2, v0

    if-eq p2, v2, :cond_c

    .line 280
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 281
    sget-object p0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    move p2, v3

    goto/16 :goto_0
.end method

.method public reset()Landroid/icu/util/BytesTrie;
    .locals 1

    .line 66
    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    return-object p0
.end method

.method public resetToState(Landroid/icu/util/BytesTrie$State;)Landroid/icu/util/BytesTrie;
    .locals 2

    .line 110
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->access$000(Landroid/icu/util/BytesTrie$State;)[B

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->access$100(Landroid/icu/util/BytesTrie$State;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 111
    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->access$200(Landroid/icu/util/BytesTrie$State;)I

    move-result v0

    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 112
    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->access$300(Landroid/icu/util/BytesTrie$State;)I

    move-result p1

    iput p1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    return-object p0

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "incompatible trie state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveState(Landroid/icu/util/BytesTrie$State;)Landroid/icu/util/BytesTrie;
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->access$002(Landroid/icu/util/BytesTrie$State;[B)[B

    .line 94
    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->access$102(Landroid/icu/util/BytesTrie$State;I)I

    .line 95
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->access$202(Landroid/icu/util/BytesTrie$State;I)I

    .line 96
    iget v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->access$302(Landroid/icu/util/BytesTrie$State;I)I

    return-object p0
.end method
