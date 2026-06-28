.class public final Landroid/icu/text/StringCharacterIterator;
.super Ljava/lang/Object;
.source "StringCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private begin:I

.field private end:I

.field private pos:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Landroid/icu/text/StringCharacterIterator;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/icu/text/StringCharacterIterator;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 81
    iput-object p1, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    if-ltz p2, :cond_1

    if-gt p2, p3, :cond_1

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p3, p1, :cond_1

    if-lt p4, p2, :cond_0

    if-gt p4, p3, :cond_0

    .line 91
    iput p2, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    .line 92
    iput p3, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    .line 93
    iput p4, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    return-void

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid substring range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/StringCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 299
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public current()C
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    if-ge v0, v1, :cond_0

    .line 168
    iget-object p0, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const p0, 0xffff

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 256
    :cond_0
    instance-of v1, p1, Landroid/icu/text/StringCharacterIterator;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 260
    :cond_1
    check-cast p1, Landroid/icu/text/StringCharacterIterator;

    .line 262
    invoke-virtual {p0}, Landroid/icu/text/StringCharacterIterator;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/icu/text/StringCharacterIterator;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 265
    :cond_2
    iget-object v1, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 268
    :cond_3
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    iget v3, p1, Landroid/icu/text/StringCharacterIterator;->pos:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    iget v3, p1, Landroid/icu/text/StringCharacterIterator;->begin:I

    if-ne v1, v3, :cond_5

    iget p0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    iget p1, p1, Landroid/icu/text/StringCharacterIterator;->end:I

    if-eq p0, p1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v2
.end method

.method public first()C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    .line 125
    invoke-virtual {p0}, Landroid/icu/text/StringCharacterIterator;->current()C

    move-result p0

    return p0
.end method

.method public getBeginIndex()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    iget p0, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    return p0
.end method

.method public getEndIndex()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    iget p0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    return p0
.end method

.method public getIndex()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    iget p0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    return p0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    iget-object v0, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    xor-int/2addr v0, v1

    iget p0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public last()C
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 137
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    goto :goto_0

    .line 139
    :cond_0
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    .line 141
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/StringCharacterIterator;->current()C

    move-result p0

    return p0
.end method

.method public next()C
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 184
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    .line 185
    iget-object v0, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    iget p0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    .line 188
    :cond_0
    iput v1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    const p0, 0xffff

    return p0
.end method

.method public previous()C
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 202
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    .line 203
    iget-object v0, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    iget p0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const p0, 0xffff

    return p0
.end method

.method public setIndex(I)C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    if-gt p1, v0, :cond_0

    .line 155
    iput p1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    .line 156
    invoke-virtual {p0}, Landroid/icu/text/StringCharacterIterator;->current()C

    move-result p0

    return p0

    .line 153
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    .line 113
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    return-void

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
