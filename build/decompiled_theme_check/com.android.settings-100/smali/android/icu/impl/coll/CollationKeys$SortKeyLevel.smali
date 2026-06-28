.class final Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
.super Ljava/lang/Object;
.source "CollationKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SortKeyLevel"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INITIAL_CAPACITY:I = 0x28


# instance fields
.field buffer:[B

.field len:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    const-class v0, Landroid/icu/impl/coll/CollationKeys;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    new-array v0, v0, [B

    .line 152
    iput-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    return-void
.end method

.method private ensureCapacity(I)Z
    .locals 3

    .line 245
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 246
    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 253
    :cond_1
    new-array p1, p1, [B

    .line 254
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 255
    iput-object p1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method appendByte(I)V
    .locals 3

    .line 182
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    :cond_1
    return-void
.end method

.method appendReverseWeight16(I)V
    .locals 5

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    int-to-byte p1, p1

    const/4 v1, 0x2

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 224
    :goto_0
    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/2addr v3, v2

    iget-object v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v4, v4

    if-le v3, v4, :cond_1

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-nez p1, :cond_2

    .line 226
    iget-object p1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aput-byte v0, p1, v1

    goto :goto_1

    .line 228
    :cond_2
    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aput-byte p1, v2, v3

    add-int/lit8 p1, v3, 0x1

    .line 229
    aput-byte v0, v2, p1

    add-int/2addr v3, v1

    .line 230
    iput v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    :cond_3
    :goto_1
    return-void
.end method

.method appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V
    .locals 1

    .line 238
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget p0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, v0, p0}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append([BI)V

    return-void
.end method

.method appendWeight16(I)V
    .locals 4

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    int-to-byte p1, p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 192
    :goto_0
    iget v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/2addr v2, v1

    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_1

    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aput-byte v0, v1, v2

    if-eqz p1, :cond_2

    .line 195
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aput-byte p1, v1, v0

    :cond_2
    return-void
.end method

.method appendWeight32(J)V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x10

    ushr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/16 v2, 0x8

    ushr-long v5, p1, v2

    long-to-int v2, v5

    int-to-byte v2, v2

    const/4 v5, 0x2

    aput-byte v2, v1, v5

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x3

    aput-byte p1, v1, p2

    .line 204
    aget-byte p1, v1, v4

    if-nez p1, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    aget-byte p1, v1, v5

    if-nez p1, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    aget-byte p1, v1, p2

    if-nez p1, :cond_2

    move v0, p2

    .line 205
    :cond_2
    :goto_0
    iget p1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/2addr p1, v0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v2, v2

    if-le p1, v2, :cond_3

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 206
    :cond_3
    iget-object p1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aget-byte v2, v1, v3

    aput-byte v2, p1, v0

    .line 207
    aget-byte v0, v1, v4

    if-eqz v0, :cond_4

    .line 208
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aget-byte v2, v1, v4

    aput-byte v2, p1, v0

    .line 209
    aget-byte v0, v1, v5

    if-eqz v0, :cond_4

    .line 210
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aget-byte v2, v1, v5

    aput-byte v2, p1, v0

    .line 211
    aget-byte v0, v1, p2

    if-eqz v0, :cond_4

    .line 212
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aget-byte p0, v1, p2

    aput-byte p0, p1, v0

    :cond_4
    return-void
.end method

.method data()[B
    .locals 0

    .line 178
    iget-object p0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    return-object p0
.end method

.method getAt(I)B
    .locals 0

    .line 174
    iget-object p0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method isEmpty()Z
    .locals 0

    .line 164
    iget p0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method length()I
    .locals 0

    .line 168
    iget p0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    return p0
.end method
