.class public Landroid/icu/impl/ReplaceableUCharacterIterator;
.super Landroid/icu/text/UCharacterIterator;
.source "ReplaceableUCharacterIterator.java"


# instance fields
.field private currentIndex:I

.field private replaceable:Landroid/icu/text/Replaceable;


# direct methods
.method public constructor <init>(Landroid/icu/text/Replaceable;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    if-eqz p1, :cond_0

    .line 52
    new-instance v0, Landroid/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Landroid/icu/text/ReplaceableString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    if-eqz p1, :cond_0

    .line 64
    new-instance v0, Landroid/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Landroid/icu/text/ReplaceableString;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 78
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public current()I
    .locals 2

    .line 90
    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    iget p0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v0, p0}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public currentCodePoint()I
    .locals 3

    .line 106
    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->current()I

    move-result v0

    int-to-char v1, v0

    .line 107
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->next()I

    .line 112
    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->current()I

    move-result v2

    .line 114
    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->previous()I

    int-to-char p0, v2

    .line 116
    invoke-static {p0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-static {v1, p0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getIndex()I
    .locals 0

    .line 139
    iget p0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return p0
.end method

.method public getLength()I
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {p0}, Landroid/icu/text/Replaceable;->length()I

    move-result p0

    return p0
.end method

.method public getText([CI)I
    .locals 3

    .line 195
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-ltz p2, :cond_0

    add-int v1, p2, v0

    .line 196
    array-length v2, p1

    if-gt v1, v2, :cond_0

    .line 199
    iget-object p0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0, p1, p2}, Landroid/icu/text/Replaceable;->getChars(II[CI)V

    return v0

    .line 197
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public next()I
    .locals 3

    .line 152
    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    iget v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public previous()I
    .locals 2

    .line 169
    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    if-lez v0, :cond_0

    .line 170
    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v1, v0}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public setIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 187
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 190
    iput p1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void

    .line 188
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
