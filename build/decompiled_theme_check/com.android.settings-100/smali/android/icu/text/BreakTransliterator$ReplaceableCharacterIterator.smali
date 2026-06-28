.class final Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
.super Ljava/lang/Object;
.source "BreakTransliterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaceableCharacterIterator"
.end annotation


# instance fields
.field private begin:I

.field private end:I

.field private pos:I

.field private text:Landroid/icu/text/Replaceable;


# direct methods
.method public constructor <init>(Landroid/icu/text/Replaceable;III)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 198
    iput-object p1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    if-ltz p2, :cond_1

    if-gt p2, p3, :cond_1

    .line 200
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result p1

    if-gt p3, p1, :cond_1

    if-lt p4, p2, :cond_0

    if-gt p4, p3, :cond_0

    .line 208
    iput p2, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    .line 209
    iput p3, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    .line 210
    iput p4, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    return-void

    .line 205
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 201
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid substring range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 398
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 402
    :catch_0
    new-instance p0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>()V

    throw p0
.end method

.method public current()C
    .locals 2

    .line 278
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    if-ge v0, v1, :cond_0

    .line 279
    iget-object p0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    invoke-interface {p0, v0}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const p0, 0xffff

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 361
    :cond_0
    instance-of v1, p1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 365
    :cond_1
    check-cast p1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;

    .line 367
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 370
    :cond_2
    iget-object v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    iget-object v3, p1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 373
    :cond_3
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    iget v3, p1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    iget v3, p1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-ne v1, v3, :cond_5

    iget p0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    iget p1, p1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

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

    .line 238
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 239
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->current()C

    move-result p0

    return p0
.end method

.method public getBeginIndex()I
    .locals 0

    .line 326
    iget p0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    return p0
.end method

.method public getEndIndex()I
    .locals 0

    .line 336
    iget p0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    .line 346
    iget p0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 386
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    xor-int/2addr v0, v1

    iget p0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public last()C
    .locals 2

    .line 249
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 250
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    goto :goto_0

    .line 252
    :cond_0
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 254
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->current()C

    move-result p0

    return p0
.end method

.method public next()C
    .locals 3

    .line 293
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 294
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 295
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    iget p0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    invoke-interface {v0, p0}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result p0

    return p0

    .line 298
    :cond_0
    iput v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    const p0, 0xffff

    return p0
.end method

.method public previous()C
    .locals 2

    .line 310
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 311
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 312
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    iget p0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    invoke-interface {v0, p0}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const p0, 0xffff

    return p0
.end method

.method public setIndex(I)C
    .locals 1

    .line 264
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    if-gt p1, v0, :cond_0

    .line 267
    iput p1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 268
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->current()C

    move-result p0

    return p0

    .line 265
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setText(Landroid/icu/text/Replaceable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 225
    iput-object p1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    const/4 v0, 0x0

    .line 226
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    .line 227
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    .line 228
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    return-void

    .line 223
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
