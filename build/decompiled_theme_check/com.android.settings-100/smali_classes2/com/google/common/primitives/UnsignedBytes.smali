.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
    }
.end annotation


# static fields
.field public static final MAX_POWER_OF_TWO:B = -0x80t

.field public static final MAX_VALUE:B = -0x1t

.field private static final UNSIGNED_MASK:I = 0xff


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .locals 4

    const/16 v0, 0x8

    shr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "out of range: %s"

    .line 87
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    long-to-int p0, p0

    int-to-byte p0, p0

    return p0
.end method

.method public static compare(BB)I
    .locals 0

    .line 120
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result p0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private static flip(B)B
    .locals 0

    xor-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    return p0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    .line 242
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 249
    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 250
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v1

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;->BEST_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static lexicographicalComparatorJavaImpl()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .locals 3

    .line 152
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 153
    aget-byte v0, p0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    .line 154
    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_2

    .line 155
    aget-byte v1, p0, v2

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    if-le v1, v0, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    int-to-byte p0, v0

    return p0
.end method

.method public static varargs min([B)B
    .locals 3

    .line 132
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 133
    aget-byte v0, p0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    .line 134
    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_2

    .line 135
    aget-byte v1, p0, v2

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    if-ge v1, v0, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    int-to-byte p0, v0

    return p0
.end method

.method public static parseUnsignedByte(Ljava/lang/String;)B
    .locals 1

    const/16 v0, 0xa

    .line 205
    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedBytes;->parseUnsignedByte(Ljava/lang/String;I)B

    move-result p0

    return p0
.end method

.method public static parseUnsignedByte(Ljava/lang/String;I)B
    .locals 2

    .line 223
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    shr-int/lit8 p1, p0, 0x8

    if-nez p1, :cond_0

    int-to-byte p0, p0

    return p0

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static saturatedCast(J)B
    .locals 3

    const/4 v0, -0x1

    .line 100
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    long-to-int p0, p0

    int-to-byte p0, p0

    return p0
.end method

.method public static sort([B)V
    .locals 2

    .line 460
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/primitives/UnsignedBytes;->sort([BII)V

    return-void
.end method

.method public static sort([BII)V
    .locals 2

    .line 471
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 474
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->flip(B)B

    move-result v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([BII)V

    :goto_1
    if-ge p1, p2, :cond_1

    .line 478
    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->flip(B)B

    move-result v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static sortDescending([B)V
    .locals 2

    .line 489
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/primitives/UnsignedBytes;->sortDescending([BII)V

    return-void
.end method

.method public static sortDescending([BII)V
    .locals 2

    .line 500
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 503
    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([BII)V

    :goto_1
    if-ge p1, p2, :cond_1

    .line 507
    aget-byte v0, p0, p1

    xor-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static toInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static toString(B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    .line 170
    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedBytes;->toString(BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(BI)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x24

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    .line 185
    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 190
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
