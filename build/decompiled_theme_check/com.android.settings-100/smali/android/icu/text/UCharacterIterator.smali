.class public abstract Landroid/icu/text/UCharacterIterator;
.super Ljava/lang/Object;
.source "UCharacterIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/text/UForwardCharacterIterator;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance(Landroid/icu/text/Replaceable;)Landroid/icu/text/UCharacterIterator;
    .locals 1

    .line 50
    new-instance v0, Landroid/icu/impl/ReplaceableUCharacterIterator;

    invoke-direct {v0, p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;-><init>(Landroid/icu/text/Replaceable;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;
    .locals 1

    .line 63
    new-instance v0, Landroid/icu/impl/ReplaceableUCharacterIterator;

    invoke-direct {v0, p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;
    .locals 1

    .line 102
    new-instance v0, Landroid/icu/impl/ReplaceableUCharacterIterator;

    invoke-direct {v0, p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;
    .locals 1

    .line 115
    new-instance v0, Landroid/icu/impl/CharacterIteratorWrapper;

    invoke-direct {v0, p0}, Landroid/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V

    return-object v0
.end method

.method public static final getInstance([C)Landroid/icu/text/UCharacterIterator;
    .locals 2

    .line 76
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/icu/text/UCharacterIterator;->getInstance([CII)Landroid/icu/text/UCharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance([CII)Landroid/icu/text/UCharacterIterator;
    .locals 1

    .line 89
    new-instance v0, Landroid/icu/impl/UCharArrayIterator;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/UCharArrayIterator;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 378
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract current()I
.end method

.method public currentCodePoint()I
    .locals 3

    .line 144
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v1, v0

    .line 145
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    .line 152
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v2

    .line 155
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    int-to-char p0, v2

    .line 157
    invoke-static {p0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-static {v1, p0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getCharacterIterator()Ljava/text/CharacterIterator;
    .locals 1

    .line 126
    new-instance v0, Landroid/icu/impl/UCharacterIteratorWrapper;

    invoke-direct {v0, p0}, Landroid/icu/impl/UCharacterIteratorWrapper;-><init>(Landroid/icu/text/UCharacterIterator;)V

    return-object v0
.end method

.method public abstract getIndex()I
.end method

.method public abstract getLength()I
.end method

.method public final getText([C)I
    .locals 1

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/UCharacterIterator;->getText([CI)I

    move-result p0

    return p0
.end method

.method public abstract getText([CI)I
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 317
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    new-array v0, v0, [C

    .line 318
    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->getText([C)I

    .line 319
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public moveCodePointIndex(I)I
    .locals 2

    const/4 v0, -0x1

    if-lez p1, :cond_0

    :goto_0
    if-lez p1, :cond_1

    .line 355
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v1

    if-eq v1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gez p1, :cond_1

    .line 359
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v1

    if-eq v1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 367
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result p0

    return p0

    .line 364
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public moveIndex(I)I
    .locals 1

    .line 335
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 336
    invoke-virtual {p0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    return p1
.end method

.method public abstract next()I
.end method

.method public nextCodePoint()I
    .locals 5

    .line 198
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    int-to-char v1, v0

    .line 199
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v2

    int-to-char v3, v2

    .line 201
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    invoke-static {v1, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, -0x1

    if-eq v2, v1, :cond_1

    .line 205
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    :cond_1
    return v0
.end method

.method public abstract previous()I
.end method

.method public previousCodePoint()I
    .locals 5

    .line 228
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v0

    int-to-char v1, v0

    .line 229
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v2

    int-to-char v3, v2

    .line 231
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, -0x1

    if-eq v2, v1, :cond_1

    .line 235
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    :cond_1
    return v0
.end method

.method public abstract setIndex(I)V
.end method

.method public setToLimit()V
    .locals 1

    .line 255
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    return-void
.end method

.method public setToStart()V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    return-void
.end method
