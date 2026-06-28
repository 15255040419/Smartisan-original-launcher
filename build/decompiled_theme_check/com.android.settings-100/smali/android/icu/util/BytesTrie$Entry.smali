.class public final Landroid/icu/util/BytesTrie$Entry;
.super Ljava/lang/Object;
.source "BytesTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BytesTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private bytes:[B

.field private length:I

.field public value:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    return-void
.end method

.method synthetic constructor <init>(ILandroid/icu/util/BytesTrie$1;)V
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrie$Entry;-><init>(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/icu/util/BytesTrie$Entry;)I
    .locals 0

    .line 434
    iget p0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    return p0
.end method

.method static synthetic access$600(Landroid/icu/util/BytesTrie$Entry;[BII)V
    .locals 0

    .line 434
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/BytesTrie$Entry;->append([BII)V

    return-void
.end method

.method static synthetic access$700(Landroid/icu/util/BytesTrie$Entry;I)V
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrie$Entry;->truncateString(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/icu/util/BytesTrie$Entry;B)V
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrie$Entry;->append(B)V

    return-void
.end method

.method private append(B)V
    .locals 3

    .line 477
    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrie$Entry;->ensureCapacity(I)V

    .line 478
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    iget v1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    aput-byte p1, v0, v1

    return-void
.end method

.method private append([BII)V
    .locals 2

    .line 481
    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrie$Entry;->ensureCapacity(I)V

    .line 482
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    iget v1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 483
    iget p1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    .line 470
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 471
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [B

    .line 472
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    iget v1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 473
    iput-object p1, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    :cond_0
    return-void
.end method

.method private truncateString(I)V
    .locals 0

    .line 485
    iput p1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .locals 0

    .line 448
    iget-object p0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public bytesAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 461
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    iget p0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bytesLength()I
    .locals 0

    .line 442
    iget p0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    return p0
.end method

.method public copyBytesTo([BI)V
    .locals 2

    .line 455
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    iget p0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method
