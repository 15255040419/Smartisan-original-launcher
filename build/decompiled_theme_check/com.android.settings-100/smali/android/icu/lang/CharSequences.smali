.class public Landroid/icu/lang/CharSequences;
.super Ljava/lang/Object;
.source "CharSequences.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static codePoints(Ljava/lang/CharSequence;)[I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 292
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 293
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const v5, 0xdc00

    if-lt v4, v5, :cond_0

    const v5, 0xdfff

    if-gt v4, v5, :cond_0

    if-eqz v2, :cond_0

    add-int/lit8 v5, v3, -0x1

    .line 295
    aget v6, v0, v5

    int-to-char v6, v6

    const v7, 0xd800

    if-lt v6, v7, :cond_0

    const v7, 0xdbff

    if-gt v6, v7, :cond_0

    .line 298
    invoke-static {v6, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    aput v4, v0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 302
    aput v4, v0, v3

    move v3, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_1
    array-length p0, v0

    if-ne v3, p0, :cond_2

    return-object v0

    .line 307
    :cond_2
    new-array p0, v3, [I

    .line 308
    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static compare(ILjava/lang/CharSequence;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    invoke-static {p1, p0}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static compare(Ljava/lang/CharSequence;I)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p1, :cond_5

    const v0, 0x10ffff

    if-gt p1, v0, :cond_5

    .line 138
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v1, 0x0

    .line 142
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/high16 v2, 0x10000

    sub-int v2, p1, v2

    const/4 v3, 0x1

    if-gez v2, :cond_2

    sub-int/2addr v1, p1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    sub-int/2addr v0, v3

    return v0

    :cond_2
    ushr-int/lit8 p1, v2, 0xa

    const v4, 0xd800

    add-int/2addr p1, v4

    int-to-char p1, p1

    sub-int/2addr v1, p1

    if-eqz v1, :cond_3

    return v1

    :cond_3
    if-le v0, v3, :cond_4

    and-int/lit16 p1, v2, 0x3ff

    const v1, 0xdc00

    add-int/2addr p1, v1

    int-to-char p1, p1

    .line 160
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sub-int/2addr p0, p1

    if-eqz p0, :cond_4

    return p0

    :cond_4
    add-int/lit8 v0, v0, -0x2

    return v0

    .line 136
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 222
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 225
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    sub-int/2addr v4, v5

    if-eqz v4, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v1

    return v0
.end method

.method public static final equals(ILjava/lang/CharSequence;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 107
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    return v0

    :cond_1
    const v1, 0xffff

    if-le p0, v1, :cond_2

    .line 109
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    if-ne p0, p1, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 108
    :cond_3
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne p0, p1, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method public static final equals(Ljava/lang/CharSequence;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-static {p1, p0}, Landroid/icu/lang/CharSequences;->equals(ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static equalsChars(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getSingleCodePoint(Ljava/lang/CharSequence;)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    .line 195
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    const/high16 v4, 0x10000

    if-ge p0, v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-ne v4, v2, :cond_3

    goto :goto_2

    :cond_3
    move p0, v1

    :goto_2
    return p0

    :cond_4
    :goto_3
    return v1
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 268
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 269
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    .line 268
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static matchAfter(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 58
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, p3

    move p3, p2

    :goto_0
    if-ge p3, v0, :cond_1

    if-ge v2, v1, :cond_1

    .line 60
    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 61
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int p2, p3, p2

    if-eqz p2, :cond_2

    .line 68
    invoke-static {p0, p3}, Landroid/icu/lang/CharSequences;->onCharacterBoundary(Ljava/lang/CharSequence;I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p1, v2}, Landroid/icu/lang/CharSequences;->onCharacterBoundary(Ljava/lang/CharSequence;I)Z

    move-result p0

    if-nez p0, :cond_2

    add-int/lit8 p2, p2, -0x1

    :cond_2
    return p2
.end method

.method public static onCharacterBoundary(Ljava/lang/CharSequence;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-lez p1, :cond_1

    .line 254
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    .line 255
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public codePointLength(Ljava/lang/CharSequence;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method
