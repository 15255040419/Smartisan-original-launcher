.class public final Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReorderingBuffer"
.end annotation


# instance fields
.field private final app:Ljava/lang/Appendable;

.field private final appIsStringBuilder:Z

.field private codePointLimit:I

.field private codePointStart:I

.field private final impl:Landroid/icu/impl/Normalizer2Impl;

.field private lastCC:I

.field private reorderStart:I

.field private final str:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 138
    iput-object p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    .line 139
    iget-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    instance-of p1, p1, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    .line 141
    check-cast p2, Ljava/lang/StringBuilder;

    iput-object p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    .line 143
    iget-object p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 144
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 145
    iget-object p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_0

    .line 146
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    goto :goto_1

    .line 148
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->setIterator()V

    .line 149
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result p2

    iput p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 151
    iget p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le p2, p1, :cond_1

    .line 152
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result p2

    if-le p2, p1, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    iget p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_1

    .line 157
    :cond_2
    iput-boolean v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    .line 159
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 160
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    :goto_1
    return-void
.end method

.method private insert(II)V
    .locals 3

    .line 319
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->setIterator()V

    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->skipPrevious()V

    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result v0

    if-le v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xffff

    const/4 v1, 0x1

    if-gt p1, v0, :cond_1

    .line 322
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    int-to-char p1, p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    if-gt p2, v1, :cond_2

    .line 324
    iget p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_1

    .line 327
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    if-gt p2, v1, :cond_2

    .line 329
    iget p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :cond_2
    :goto_1
    return-void
.end method

.method private previousCC()I
    .locals 3

    .line 348
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    .line 349
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    if-lt v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 352
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v0

    .line 353
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    .line 354
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybeCP(I)I

    move-result p0

    return p0
.end method

.method private setIterator()V
    .locals 1

    .line 342
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    return-void
.end method

.method private skipPrevious()V
    .locals 3

    .line 344
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    .line 345
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    return-void
.end method


# virtual methods
.method public append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 222
    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 223
    iget-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 1

    .line 233
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 235
    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 236
    iget-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :cond_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 1

    if-eq p2, p3, :cond_0

    .line 243
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 244
    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 245
    iget-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :cond_0
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object p0

    return-object p0
.end method

.method public append(II)V
    .locals 1

    .line 175
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le v0, p2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->insert(II)V

    goto :goto_1

    .line 176
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 177
    iput p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    const/4 p1, 0x1

    if-gt p2, p1, :cond_2

    .line 179
    iget-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :cond_2
    :goto_1
    return-void
.end method

.method public append(Ljava/lang/CharSequence;IIII)V
    .locals 2

    if-ne p2, p3, :cond_0

    return-void

    .line 191
    :cond_0
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le v0, p4, :cond_3

    if-nez p4, :cond_1

    goto :goto_2

    .line 200
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 201
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    .line 202
    invoke-direct {p0, v0, p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->insert(II)V

    :goto_0
    if-ge p2, p3, :cond_6

    .line 204
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p4

    .line 205
    invoke-static {p4}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    if-ge p2, p3, :cond_2

    .line 208
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p4}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, p5

    .line 212
    :goto_1
    invoke-virtual {p0, p4, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v0, 0x1

    if-gt p5, v0, :cond_4

    .line 193
    iget-object p4, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    sub-int v0, p3, p2

    add-int/2addr p4, v0

    iput p4, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_3

    :cond_4
    if-gt p4, v0, :cond_5

    .line 195
    iget-object p4, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    add-int/2addr p4, v0

    iput p4, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 197
    :cond_5
    :goto_3
    iget-object p4, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 198
    iput p5, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    :cond_6
    return-void
.end method

.method public appendZeroCC(I)V
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 228
    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 229
    iget-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    return-void
.end method

.method public equals(Ljava/lang/CharSequence;II)Z
    .locals 6

    .line 171
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v1, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->equal(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public flush()V
    .locals 3

    .line 256
    iget-boolean v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_0

    .line 260
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 261
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 262
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    return-void

    :catch_0
    move-exception p0

    .line 264
    new-instance v0, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 3

    .line 276
    iget-boolean v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 278
    iget-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_0

    .line 281
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 282
    iget-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 283
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    return-object p0

    :catch_0
    move-exception p0

    .line 285
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getLastCC()I
    .locals 0

    .line 166
    iget p0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    return p0
.end method

.method public getStringBuilder()Ljava/lang/StringBuilder;
    .locals 0

    .line 168
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 164
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public length()I
    .locals 0

    .line 165
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    return p0
.end method

.method public remove()V
    .locals 2

    .line 292
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 293
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 294
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    return-void
.end method

.method public removeSuffix(I)V
    .locals 2

    .line 297
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 298
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    sub-int p1, v0, p1

    invoke-virtual {v1, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 299
    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 300
    iget-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    return-void
.end method
