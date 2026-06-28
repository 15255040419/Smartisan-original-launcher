.class public final Landroid/icu/impl/UCharArrayIterator;
.super Landroid/icu/text/UCharacterIterator;
.source "UCharArrayIterator.java"


# instance fields
.field private final limit:I

.field private pos:I

.field private final start:I

.field private final text:[C


# direct methods
.method public constructor <init>([CII)V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    if-ltz p2, :cond_0

    .line 29
    array-length v0, p1

    if-gt p3, v0, :cond_0

    if-gt p2, p3, :cond_0

    .line 34
    iput-object p1, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    .line 35
    iput p2, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    .line 36
    iput p3, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    .line 38
    iput p2, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    return-void

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " or limit: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " out of range [0, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 91
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

    .line 43
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    aget-char p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getIndex()I
    .locals 1

    .line 53
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    iget p0, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 48
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    iget p0, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getText([CI)I
    .locals 2

    .line 78
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    sub-int/2addr v0, v1

    .line 79
    iget-object p0, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    invoke-static {p0, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method

.method public next()I
    .locals 3

    .line 58
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    aget-char p0, v1, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public previous()I
    .locals 2

    .line 63
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    if-le v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    aget-char p0, v1, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public setIndex(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 68
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p1

    .line 73
    iput v1, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range [0, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    iget p0, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    sub-int/2addr p1, p0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
