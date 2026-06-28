.class public final Landroid/icu/impl/UCharacterUtility;
.super Ljava/lang/Object;
.source "UCharacterUtility.java"


# static fields
.field private static final NON_CHARACTER_MAX_3_1_:I = 0xfdef

.field private static final NON_CHARACTER_MIN_3_1_:I = 0xfdd0

.field private static final NON_CHARACTER_SUFFIX_MIN_3_0_:I = 0xfffe


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareNullTermByteSubString(Ljava/lang/String;[BII)I
    .locals 5

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    move v2, p2

    move p2, v1

    :goto_0
    if-eqz p2, :cond_3

    .line 98
    aget-byte p2, p1, p3

    add-int/2addr p3, v1

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    if-eq v2, v0, :cond_2

    .line 106
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v4, p2, 0xff

    int-to-char v4, v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_3
    :goto_2
    return v2
.end method

.method static getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 69
    aget-byte v0, p1, p2

    if-eqz v0, :cond_0

    and-int/lit16 v1, v0, 0xff

    int-to-char v1, v1

    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static isNonCharacter(I)Z
    .locals 3

    const v0, 0xfffe

    and-int v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    const v0, 0xfdd0

    if-lt p0, v0, :cond_1

    const v0, 0xfdef

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static skipByteSubString([BIIB)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int v1, p1, v0

    .line 159
    aget-byte v1, p0, v1

    if-ne v1, p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method static skipNullTermByteSubString([BII)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    .line 133
    aget-byte v1, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method static toInt(CC)I
    .locals 0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method
