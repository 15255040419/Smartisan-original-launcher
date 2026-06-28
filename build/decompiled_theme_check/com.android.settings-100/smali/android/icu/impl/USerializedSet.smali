.class public final Landroid/icu/impl/USerializedSet;
.super Ljava/lang/Object;
.source "USerializedSet.java"


# instance fields
.field private array:[C

.field private arrayOffset:I

.field private bmpLength:I

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [C

    .line 186
    iput-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    return-void
.end method


# virtual methods
.method public final contains(I)Z
    .locals 6

    const/4 v0, 0x0

    const v1, 0x10ffff

    if-le p1, v1, :cond_0

    return v0

    :cond_0
    const v1, 0xffff

    const/4 v2, 0x1

    if-gt p1, v1, :cond_3

    move v1, v0

    .line 160
    :goto_0
    iget v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    if-ge v1, v3, :cond_1

    int-to-char v3, p1

    iget-object v4, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aget-char v4, v4, v1

    if-lt v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 p0, v1, 0x1

    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0

    :cond_3
    shr-int/lit8 v1, p1, 0x10

    int-to-char v1, v1

    int-to-char p1, p1

    .line 166
    iget v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    .line 167
    :goto_1
    iget v4, p0, Landroid/icu/impl/USerializedSet;->length:I

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aget-char v5, v4, v3

    if-gt v1, v5, :cond_4

    aget-char v5, v4, v3

    if-ne v1, v5, :cond_5

    add-int/lit8 v5, v3, 0x1

    aget-char v4, v4, v5

    if-lt p1, v4, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 171
    :cond_5
    iget p0, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    add-int/2addr v3, p0

    and-int/lit8 p0, v3, 0x2

    if-eqz p0, :cond_6

    move v0, v2

    :cond_6
    return v0
.end method

.method public final countRanges()I
    .locals 1

    .line 183
    iget v0, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    iget p0, p0, Landroid/icu/impl/USerializedSet;->length:I

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getRange(I[I)Z
    .locals 8

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 108
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/USerializedSet;->array:[C

    if-nez v1, :cond_1

    const/16 v1, 0x8

    new-array v1, v1, [C

    .line 109
    iput-object v1, p0, Landroid/icu/impl/USerializedSet;->array:[C

    :cond_1
    if-eqz p2, :cond_7

    .line 111
    array-length v1, p2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    mul-int/2addr p1, v2

    .line 115
    iget v1, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    const v3, 0x10ffff

    const/4 v4, 0x1

    if-ge p1, v1, :cond_4

    .line 116
    iget-object v2, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v5, p1, 0x1

    aget-char p1, v2, p1

    aput p1, p2, v0

    if-ge v5, v1, :cond_2

    .line 118
    aget-char p0, v2, v5

    sub-int/2addr p0, v4

    aput p0, p2, v4

    goto :goto_0

    .line 119
    :cond_2
    iget p0, p0, Landroid/icu/impl/USerializedSet;->length:I

    if-ge v5, p0, :cond_3

    .line 120
    aget-char p0, v2, v5

    shl-int/lit8 p0, p0, 0x10

    add-int/2addr v5, v4

    aget-char p1, v2, v5

    or-int/2addr p0, p1

    sub-int/2addr p0, v4

    aput p0, p2, v4

    goto :goto_0

    .line 122
    :cond_3
    aput v3, p2, v4

    :goto_0
    return v4

    :cond_4
    sub-int/2addr p1, v1

    mul-int/2addr p1, v2

    .line 128
    iget v5, p0, Landroid/icu/impl/USerializedSet;->length:I

    sub-int/2addr v5, v1

    if-ge p1, v5, :cond_6

    .line 130
    iget v6, p0, Landroid/icu/impl/USerializedSet;->arrayOffset:I

    add-int/2addr v6, v1

    .line 131
    iget-object p0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int v1, v6, p1

    aget-char v7, p0, v1

    shl-int/lit8 v7, v7, 0x10

    add-int/2addr v1, v4

    aget-char v1, p0, v1

    or-int/2addr v1, v7

    aput v1, p2, v0

    add-int/2addr p1, v2

    if-ge p1, v5, :cond_5

    add-int/2addr v6, p1

    .line 134
    aget-char p1, p0, v6

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr v6, v4

    aget-char p0, p0, v6

    or-int/2addr p0, p1

    sub-int/2addr p0, v4

    aput p0, p2, v4

    goto :goto_1

    .line 136
    :cond_5
    aput v3, p2, v4

    :goto_1
    return v4

    :cond_6
    return v0

    .line 112
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final getSet([CI)Z
    .locals 4

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Landroid/icu/impl/USerializedSet;->length:I

    iput v0, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    iput v0, p0, Landroid/icu/impl/USerializedSet;->arrayOffset:I

    add-int/lit8 v1, p2, 0x1

    .line 37
    aget-char p2, p1, p2

    iput p2, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 39
    iget p2, p0, Landroid/icu/impl/USerializedSet;->length:I

    const v2, 0x8000

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    and-int/lit16 p2, p2, 0x7fff

    .line 41
    iput p2, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 42
    array-length p2, p1

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Landroid/icu/impl/USerializedSet;->length:I

    add-int/2addr v3, v2

    if-lt p2, v3, :cond_0

    .line 46
    aget-char p2, p1, v1

    iput p2, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    move v1, v2

    goto :goto_0

    .line 43
    :cond_0
    iput v0, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 44
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 49
    :cond_1
    array-length v2, p1

    add-int v3, v1, p2

    if-lt v2, v3, :cond_2

    .line 53
    iput p2, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    .line 55
    :goto_0
    iget p2, p0, Landroid/icu/impl/USerializedSet;->length:I

    new-array v2, p2, [C

    iput-object v2, p0, Landroid/icu/impl/USerializedSet;->array:[C

    .line 56
    iget-object p0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    invoke-static {p1, v1, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    return p0

    .line 50
    :cond_2
    iput v0, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 51
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final setToOne(I)V
    .locals 6

    const v0, 0x10ffff

    if-ge v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const v2, 0xffff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p1, v2, :cond_1

    .line 71
    iput v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    iput v1, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    .line 72
    iget-object p0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    int-to-char v0, p1

    aput-char v0, p0, v3

    add-int/2addr p1, v4

    int-to-char p1, p1

    .line 73
    aput-char p1, p0, v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    if-ne p1, v2, :cond_2

    .line 75
    iput v4, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    .line 76
    iput v5, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 77
    iget-object p0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aput-char v2, p0, v3

    .line 78
    aput-char v4, p0, v4

    .line 79
    aput-char v3, p0, v1

    goto :goto_0

    :cond_2
    if-ge p1, v0, :cond_3

    .line 81
    iput v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    const/4 v0, 0x4

    .line 82
    iput v0, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 83
    iget-object p0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    shr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    aput-char v0, p0, v3

    int-to-char v0, p1

    .line 84
    aput-char v0, p0, v4

    add-int/2addr p1, v4

    shr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    .line 86
    aput-char v0, p0, v1

    int-to-char p1, p1

    .line 87
    aput-char p1, p0, v5

    goto :goto_0

    .line 89
    :cond_3
    iput v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    .line 90
    iput v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 91
    iget-object p0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    const/16 p1, 0x10

    aput-char p1, p0, v3

    .line 92
    aput-char v2, p0, v4

    :goto_0
    return-void
.end method
