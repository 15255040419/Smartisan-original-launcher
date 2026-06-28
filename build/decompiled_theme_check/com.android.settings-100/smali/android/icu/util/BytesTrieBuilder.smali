.class public final Landroid/icu/util/BytesTrieBuilder;
.super Landroid/icu/util/StringTrieBuilder;
.source "BytesTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bytes:[B

.field private bytesLength:I

.field private final intBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 210
    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    return-void
.end method

.method private buildBytes(Landroid/icu/util/StringTrieBuilder$Option;)V
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 106
    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/util/BytesTrieBuilder;->buildImpl(Landroid/icu/util/StringTrieBuilder$Option;)V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    .line 158
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 159
    array-length v0, v0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    if-le v0, p1, :cond_0

    .line 163
    new-array p1, v0, [B

    .line 164
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v1, v0

    iget v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v1, v2

    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 166
    iput-object p1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    :cond_1
    return-void
.end method

.method private write([BI)I
    .locals 3

    .line 202
    iget v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    add-int/2addr v0, p2

    .line 203
    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    .line 204
    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    .line 205
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v1, v0

    iget v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 206
    iget p0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    return p0
.end method


# virtual methods
.method public add([BII)Landroid/icu/util/BytesTrieBuilder;
    .locals 1

    .line 57
    new-instance v0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;-><init>([BI)V

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/BytesTrieBuilder;->addImpl(Ljava/lang/CharSequence;I)V

    return-object p0
.end method

.method public build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/BytesTrie;
    .locals 2

    .line 76
    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrieBuilder;->buildBytes(Landroid/icu/util/StringTrieBuilder$Option;)V

    .line 77
    new-instance p1, Landroid/icu/util/BytesTrie;

    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v1, v0

    iget p0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/icu/util/BytesTrie;-><init>([BI)V

    return-object p1
.end method

.method public buildByteBuffer(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 99
    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrieBuilder;->buildBytes(Landroid/icu/util/StringTrieBuilder$Option;)V

    .line 100
    iget-object p1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v0, p1

    iget p0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v0, p0

    invoke-static {p1, v0, p0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public clear()Landroid/icu/util/BytesTrieBuilder;
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroid/icu/util/BytesTrieBuilder;->clearImpl()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    return-object p0
.end method

.method protected getMaxBranchLinearSubNodeLength()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x5

    return p0
.end method

.method protected getMaxLinearMatchLength()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 p0, 0x10

    return p0
.end method

.method protected getMinLinearMatch()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 p0, 0x10

    return p0
.end method

.method protected matchNodesCanHaveValues()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method protected write(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    iget v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    add-int/lit8 v0, v0, 0x1

    .line 178
    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    .line 179
    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    .line 180
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v1, v0

    iget p0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v1, p0

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return p0
.end method

.method protected write(II)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    iget v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    add-int/2addr v0, p2

    .line 192
    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    .line 193
    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    .line 194
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v0, v0

    iget v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v0, v1

    :goto_0
    if-lez p2, :cond_0

    .line 196
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->strings:Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    add-int/lit8 p2, p2, -0x1

    move v0, v2

    move p1, v4

    goto :goto_0

    .line 199
    :cond_0
    iget p0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    return p0
.end method

.method protected writeDeltaTo(I)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v0, p1

    const/16 p1, 0xbf

    if-gt v0, p1, :cond_0

    .line 276
    invoke-virtual {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->write(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p1, 0x2fff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, p1, :cond_1

    .line 280
    iget-object p1, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v3, v0, 0x8

    add-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    move p1, v2

    goto :goto_2

    :cond_1
    const p1, 0xdffff

    if-gt v0, p1, :cond_2

    .line 284
    iget-object p1, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v3, v0, 0x10

    add-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const p1, 0xffffff

    if-gt v0, p1, :cond_3

    .line 288
    iget-object p1, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    const/4 v3, -0x2

    aput-byte v3, p1, v1

    const/4 p1, 0x3

    goto :goto_0

    .line 291
    :cond_3
    iget-object p1, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    const/4 v3, -0x1

    aput-byte v3, p1, v1

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    .line 292
    aput-byte v1, p1, v2

    const/4 p1, 0x4

    .line 295
    :goto_0
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 297
    :goto_1
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 299
    :goto_2
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    add-int/lit8 v2, p1, 0x1

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    .line 300
    invoke-direct {p0, v1, v2}, Landroid/icu/util/BytesTrieBuilder;->write([BI)I

    move-result p0

    return p0
.end method

.method protected writeValueAndFinal(IZ)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/16 v1, 0x40

    if-gt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x10

    shl-int/2addr p1, v0

    or-int/2addr p1, p2

    .line 221
    invoke-virtual {p0, p1}, Landroid/icu/util/BytesTrieBuilder;->write(I)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ltz p1, :cond_4

    const v3, 0xffffff

    if-le p1, v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v3, 0x1aff

    if-gt p1, v3, :cond_2

    .line 235
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v3, p1, 0x8

    add-int/lit8 v3, v3, 0x51

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    move v4, v0

    goto :goto_1

    :cond_2
    const v3, 0x11ffff

    if-gt p1, v3, :cond_3

    .line 238
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v3, p1, 0x10

    add-int/lit8 v3, v3, 0x6c

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    move v1, v0

    goto :goto_0

    .line 240
    :cond_3
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    const/16 v4, 0x7e

    aput-byte v4, v3, v2

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 241
    aput-byte v4, v3, v0

    .line 244
    :goto_0
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, p1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 246
    :goto_1
    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    add-int/lit8 v3, v4, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v4

    goto :goto_3

    .line 225
    :cond_4
    :goto_2
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    const/16 v4, 0x7f

    aput-byte v4, v3, v2

    shr-int/lit8 v4, p1, 0x18

    int-to-byte v4, v4

    .line 226
    aput-byte v4, v3, v0

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 227
    aput-byte v4, v3, v1

    const/4 v1, 0x3

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 228
    aput-byte v4, v3, v1

    const/4 v1, 0x4

    int-to-byte p1, p1

    .line 229
    aput-byte p1, v3, v1

    const/4 v3, 0x5

    .line 248
    :goto_3
    iget-object p1, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    aget-byte v1, p1, v2

    shl-int/lit8 v0, v1, 0x1

    or-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    .line 249
    invoke-direct {p0, p1, v3}, Landroid/icu/util/BytesTrieBuilder;->write([BI)I

    move-result p0

    return p0
.end method

.method protected writeValueAndType(ZII)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    invoke-virtual {p0, p3}, Landroid/icu/util/BytesTrieBuilder;->write(I)I

    move-result p3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 261
    invoke-virtual {p0, p2, p1}, Landroid/icu/util/BytesTrieBuilder;->writeValueAndFinal(IZ)I

    move-result p3

    :cond_0
    return p3
.end method
