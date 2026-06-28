.class public final Landroid/icu/text/CollationKey;
.super Ljava/lang/Object;
.source "CollationKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CollationKey$BoundMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/text/CollationKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MERGE_SEPERATOR_:I = 0x2


# instance fields
.field private m_hashCode_:I

.field private m_key_:[B

.field private m_length_:I

.field private m_source_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Landroid/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    .line 177
    iget p1, p2, Landroid/icu/text/RawCollationKey;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/icu/text/CollationKey;->m_length_:I

    .line 178
    invoke-virtual {p2}, Landroid/icu/text/RawCollationKey;->releaseBytes()[B

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    const/4 p1, 0x0

    .line 180
    iput p1, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, -0x1

    .line 148
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BI)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Landroid/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    const/4 p1, 0x0

    .line 159
    iput p1, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    .line 160
    iput p3, p0, Landroid/icu/text/CollationKey;->m_length_:I

    return-void
.end method

.method private getLength()I
    .locals 3

    .line 603
    iget v0, p0, Landroid/icu/text/CollationKey;->m_length_:I

    if-ltz v0, :cond_0

    return v0

    .line 606
    :cond_0
    iget-object v0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 608
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 613
    :cond_2
    :goto_1
    iput v0, p0, Landroid/icu/text/CollationKey;->m_length_:I

    .line 614
    iget p0, p0, Landroid/icu/text/CollationKey;->m_length_:I

    return p0
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/CollationKey;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 255
    :goto_0
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    .line 256
    iget-object v3, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    if-ge v2, v3, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 87
    check-cast p1, Landroid/icu/text/CollationKey;

    invoke-virtual {p0, p1}, Landroid/icu/text/CollationKey;->compareTo(Landroid/icu/text/CollationKey;)I

    move-result p0

    return p0
.end method

.method public equals(Landroid/icu/text/CollationKey;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    move v2, v1

    .line 315
    :goto_0
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v4, v3, v2

    iget-object v5, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v5, v5, v2

    if-eq v4, v5, :cond_2

    return v1

    .line 318
    :cond_2
    aget-byte v3, v3, v2

    if-nez v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 285
    instance-of v0, p1, Landroid/icu/text/CollationKey;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 289
    :cond_0
    check-cast p1, Landroid/icu/text/CollationKey;

    invoke-virtual {p0, p1}, Landroid/icu/text/CollationKey;->equals(Landroid/icu/text/CollationKey;)Z

    move-result p0

    return p0
.end method

.method public getBound(II)Landroid/icu/text/CollationKey;
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, p2

    if-lez p2, :cond_2

    move p2, v1

    move v3, p2

    .line 417
    :goto_0
    iget-object v5, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    array-length v6, v5

    if-ge p2, v6, :cond_3

    aget-byte v6, v5, p2

    if-eqz v6, :cond_3

    add-int/lit8 v6, p2, 0x1

    .line 418
    aget-byte p2, v5, p2

    if-ne p2, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_0

    .line 422
    array-length p2, v5

    if-eq v6, p2, :cond_0

    aget-byte p2, v5, v6

    if-nez p2, :cond_1

    :cond_0
    add-int/lit8 p2, v6, -0x1

    goto :goto_1

    :cond_1
    move p2, v6

    goto :goto_0

    :cond_2
    move p2, v1

    move v3, p2

    :cond_3
    :goto_1
    if-gtz v4, :cond_7

    add-int v3, p2, p1

    add-int/2addr v3, v2

    .line 442
    new-array v3, v3, [B

    .line 443
    iget-object p0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    invoke-static {p0, v1, v3, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    if-eqz p1, :cond_6

    const/4 p0, 0x2

    if-eq p1, v2, :cond_5

    if-ne p1, p0, :cond_4

    add-int/lit8 p0, p2, 0x1

    .line 454
    aput-byte v0, v3, p2

    add-int/lit8 p2, p0, 0x1

    .line 455
    aput-byte v0, v3, p0

    goto :goto_2

    .line 458
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal boundType argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    add-int/lit8 p1, p2, 0x1

    .line 450
    aput-byte p0, v3, p2

    move p2, p1

    .line 461
    :cond_6
    :goto_2
    aput-byte v1, v3, p2

    .line 462
    new-instance p0, Landroid/icu/text/CollationKey;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v3, p2}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    return-object p0

    .line 432
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Source collation key has only "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " strength level. Call getBound() again  with noOfLevels < "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSourceString()Ljava/lang/String;
    .locals 0

    .line 191
    iget-object p0, p0, Landroid/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    .line 338
    iget v0, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    if-nez v0, :cond_3

    .line 339
    iget-object v0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 340
    iput v1, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    goto :goto_1

    .line 343
    :cond_0
    array-length v0, v0

    shr-int/2addr v0, v1

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 346
    :goto_0
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v2, v0

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v3

    if-eqz v4, :cond_1

    .line 347
    aget-byte v4, v2, v0

    shl-int/lit8 v4, v4, 0x8

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 350
    :cond_1
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v2, v0

    if-eqz v3, :cond_2

    .line 351
    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x8

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    .line 356
    :cond_3
    :goto_1
    iget p0, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    return p0
.end method

.method public merge(Landroid/icu/text/CollationKey;)Landroid/icu/text/CollationKey;
    .locals 9

    if-eqz p1, :cond_7

    .line 509
    invoke-direct {p1}, Landroid/icu/text/CollationKey;->getLength()I

    move-result v0

    if-eqz v0, :cond_7

    .line 516
    invoke-direct {p0}, Landroid/icu/text/CollationKey;->getLength()I

    move-result v0

    invoke-direct {p1}, Landroid/icu/text/CollationKey;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 525
    :goto_0
    iget-object v6, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v7, v6, v3

    if-ltz v7, :cond_6

    aget-byte v6, v6, v3

    if-lt v6, v1, :cond_0

    goto :goto_4

    :cond_0
    add-int/lit8 v6, v4, 0x1

    .line 530
    aput-byte v1, v0, v4

    .line 533
    :goto_1
    iget-object v4, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v7, v4, v5

    if-ltz v7, :cond_5

    aget-byte v7, v4, v5

    if-lt v7, v1, :cond_1

    goto :goto_3

    .line 540
    :cond_1
    iget-object v7, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v7, v7, v3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    aget-byte v4, v4, v5

    if-ne v4, v8, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v6, 0x1

    .line 545
    aput-byte v8, v0, v6

    goto :goto_0

    .line 556
    :cond_2
    iget v1, p0, Landroid/icu/text/CollationKey;->m_length_:I

    sub-int/2addr v1, v3

    if-lez v1, :cond_3

    .line 557
    iget-object p0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    invoke-static {p0, v3, v0, v6, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/2addr v6, v1

    goto :goto_2

    .line 560
    :cond_3
    iget p0, p1, Landroid/icu/text/CollationKey;->m_length_:I

    sub-int/2addr p0, v5

    if-lez p0, :cond_4

    .line 561
    iget-object p1, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    invoke-static {p1, v5, v0, v6, p0}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/2addr v6, p0

    .line 564
    :cond_4
    :goto_2
    aput-byte v2, v0, v6

    .line 567
    new-instance p0, Landroid/icu/text/CollationKey;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, v6}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    return-object p0

    :cond_5
    :goto_3
    add-int/lit8 v4, v6, 0x1

    .line 535
    iget-object v7, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v7, v5

    aput-byte v5, v0, v6

    move v6, v4

    move v5, v8

    goto :goto_1

    :cond_6
    :goto_4
    add-int/lit8 v6, v4, 0x1

    .line 526
    iget-object v7, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v8, v3, 0x1

    aget-byte v3, v7, v3

    aput-byte v3, v0, v4

    move v4, v6

    move v3, v8

    goto :goto_0

    .line 510
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CollationKey argument can not be null or of 0 length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toByteArray()[B
    .locals 3

    .line 226
    invoke-direct {p0}, Landroid/icu/text/CollationKey;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 227
    new-array v1, v0, [B

    .line 228
    iget-object p0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1
.end method
