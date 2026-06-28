.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([BBII)I
    .locals 0

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result p0

    return p0
.end method

.method static synthetic access$100([BBII)I
    .locals 0

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result p0

    return p0
.end method

.method public static varargs asList([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 233
    array-length v0, p0

    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 236
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([B)V

    return-object v0
.end method

.method public static varargs concat([[B)[B
    .locals 7

    .line 161
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    .line 162
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_0
    new-array v0, v3, [B

    .line 166
    array-length v2, p0

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v5, p0, v3

    .line 167
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static contains([BB)Z
    .locals 4

    .line 71
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static ensureCapacity([BII)[B
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    .line 187
    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "Invalid padding: %s"

    .line 188
    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 189
    array-length v0, p0

    if-ge v0, p1, :cond_2

    add-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static hashCode(B)I
    .locals 0

    return p0
.end method

.method public static indexOf([BB)I
    .locals 2

    .line 88
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result p0

    return p0
.end method

.method private static indexOf([BBII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 94
    aget-byte v0, p0, p2

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf([B[B)I
    .locals 5

    const-string v0, "array"

    .line 112
    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "target"

    .line 113
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 119
    :goto_0
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 120
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    add-int v3, v0, v2

    .line 121
    aget-byte v3, p0, v3

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static lastIndexOf([BB)I
    .locals 2

    .line 139
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result p0

    return p0
.end method

.method private static lastIndexOf([BBII)I
    .locals 1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    .line 145
    aget-byte v0, p0, p3

    if-ne v0, p1, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static reverse([B)V
    .locals 2

    .line 375
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/primitives/Bytes;->reverse([BII)V

    return-void
.end method

.method public static reverse([BII)V
    .locals 2

    .line 390
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 393
    aget-byte v0, p0, p1

    .line 394
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 395
    aput-byte v0, p0, p2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toArray(Ljava/util/Collection;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[B"
        }
    .end annotation

    .line 206
    instance-of v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    if-eqz v0, :cond_0

    .line 207
    check-cast p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 210
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 211
    array-length v0, p0

    .line 212
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 215
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
