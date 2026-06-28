.class public final Landroid/icu/impl/CharacterIteration;
.super Ljava/lang/Object;
.source "CharacterIteration.java"


# static fields
.field public static final DONE32:I = 0x7fffffff


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static current32(Ljava/text/CharacterIterator;)I
    .locals 3

    .line 109
    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    const v1, 0xd800

    if-ge v0, v1, :cond_0

    return v0

    .line 114
    :cond_0
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    .line 116
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    int-to-char p0, v2

    .line 117
    invoke-static {p0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_2

    sub-int/2addr v0, v1

    shl-int/lit8 p0, v0, 0xa

    const v0, 0xdc00

    sub-int/2addr v2, v0

    add-int/2addr p0, v2

    const/high16 v0, 0x10000

    add-int/2addr v0, p0

    goto :goto_0

    :cond_1
    const v1, 0xffff

    if-ne v0, v1, :cond_2

    .line 124
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p0

    if-lt v1, p0, :cond_2

    const v0, 0x7fffffff

    :cond_2
    :goto_0
    return v0
.end method

.method public static next32(Ljava/text/CharacterIterator;)I
    .locals 3

    .line 38
    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    const v1, 0xd800

    if-lt v0, v1, :cond_1

    const v2, 0xdbff

    if-gt v0, v2, :cond_1

    .line 40
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    const v2, 0xdc00

    if-lt v0, v2, :cond_0

    const v2, 0xdfff

    if-le v0, v2, :cond_1

    .line 42
    :cond_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    .line 47
    :cond_1
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    if-lt v0, v1, :cond_2

    .line 52
    invoke-static {p0, v0}, Landroid/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v0

    :cond_2
    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_3

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    .line 58
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    :cond_3
    return v0
.end method

.method public static nextTrail32(Ljava/text/CharacterIterator;I)I
    .locals 2

    const v0, 0xffff

    if-ne p1, v0, :cond_0

    .line 72
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    if-lt v0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const v0, 0xdbff

    if-gt p1, v0, :cond_2

    .line 77
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    .line 78
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const p0, 0xd800

    sub-int/2addr p1, p0

    shl-int/lit8 p0, p1, 0xa

    const p1, 0xdc00

    sub-int/2addr v0, p1

    add-int/2addr p0, v0

    const/high16 p1, 0x10000

    add-int/2addr p1, p0

    goto :goto_0

    .line 83
    :cond_1
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    :cond_2
    :goto_0
    return p1
.end method

.method public static previous32(Ljava/text/CharacterIterator;)I
    .locals 3

    .line 90
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    if-gt v0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    .line 93
    :cond_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v0

    .line 95
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 96
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v1

    .line 97
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const p0, 0xd800

    sub-int/2addr v1, p0

    shl-int/lit8 p0, v1, 0xa

    const v1, 0xdc00

    sub-int/2addr v0, v1

    add-int/2addr p0, v0

    const/high16 v0, 0x10000

    add-int/2addr v0, p0

    goto :goto_0

    .line 102
    :cond_1
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    :cond_2
    :goto_0
    return v0
.end method
