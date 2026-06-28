.class public Landroid/icu/impl/RuleCharacterIterator;
.super Ljava/lang/Object;
.source "RuleCharacterIterator.java"


# static fields
.field public static final DONE:I = -0x1

.field public static final PARSE_ESCAPES:I = 0x2

.field public static final PARSE_VARIABLES:I = 0x1

.field public static final SKIP_WHITESPACE:I = 0x4


# instance fields
.field private buf:[C

.field private bufPos:I

.field private isEscaped:Z

.field private pos:Ljava/text/ParsePosition;

.field private sym:Landroid/icu/text/SymbolTable;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/SymbolTable;Ljava/text/ParsePosition;)V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 110
    iput-object p1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    .line 112
    iput-object p3, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    return-void

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private _advance(I)V
    .locals 2

    .line 337
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v0, :cond_0

    .line 338
    iget v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    .line 339
    iget p1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    array-length v0, v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 340
    iput-object p1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 344
    iget-object p1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 345
    iget-object p1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    iget-object p0, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private _current()I
    .locals 3

    .line 324
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 325
    array-length v2, v0

    iget p0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    invoke-static {v0, v1, v2, p0}, Landroid/icu/text/UTF16;->charAt([CIII)I

    move-result p0

    return p0

    .line 327
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 328
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object p0, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public atEnd()Z
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object p0, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPos(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array v2, p1, [Ljava/lang/Object;

    .line 219
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    aput-object v3, v2, v1

    new-array p1, p1, [I

    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    aput v3, p1, v1

    iget p0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    aput p0, p1, v0

    aput-object p1, v2, v0

    return-object v2

    .line 221
    :cond_0
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    .line 222
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    aput-object v3, v2, v1

    .line 223
    aget-object v2, v2, v0

    check-cast v2, [I

    .line 224
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    aput v3, v2, v1

    .line 225
    iget p0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    aput p0, v2, v0

    return-object p1
.end method

.method public inVariable()Z
    .locals 0

    .line 195
    iget-object p0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEscaped()Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Landroid/icu/impl/RuleCharacterIterator;->isEscaped:Z

    return p0
.end method

.method public jumpahead(I)V
    .locals 2

    if-ltz p1, :cond_4

    .line 289
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v0, :cond_1

    .line 290
    iget v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    .line 291
    iget p1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    array-length v1, v0

    if-gt p1, v1, :cond_0

    .line 294
    array-length v0, v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 295
    iput-object p1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    goto :goto_0

    .line 292
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 298
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    .line 299
    iget-object p1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 300
    iget-object p0, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gt v0, p0, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 301
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 287
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public lookahead()Ljava/lang/String;
    .locals 3

    .line 273
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v0, :cond_0

    .line 274
    new-instance v1, Ljava/lang/String;

    iget p0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    array-length v2, v0

    sub-int/2addr v2, p0

    invoke-direct {v1, v0, p0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 276
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    iget-object p0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p0}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next(I)I
    .locals 6

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Landroid/icu/impl/RuleCharacterIterator;->isEscaped:Z

    .line 136
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/RuleCharacterIterator;->_current()I

    move-result v1

    .line 137
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/icu/impl/RuleCharacterIterator;->_advance(I)V

    const/16 v2, 0x24

    if-ne v1, v2, :cond_3

    .line 139
    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-nez v2, :cond_3

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    if-eqz v2, :cond_3

    .line 141
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/icu/text/SymbolTable;->parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    iput v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    .line 148
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    invoke-interface {v1, v2}, Landroid/icu/text/SymbolTable;->lookup(Ljava/lang/String;)[C

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    .line 149
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v1, :cond_2

    .line 154
    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 155
    iput-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    goto :goto_0

    .line 150
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Undefined variable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_4

    .line 161
    invoke-static {v1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_6

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    new-array v1, p1, [I

    aput v0, v1, v0

    .line 167
    invoke-virtual {p0}, Landroid/icu/impl/RuleCharacterIterator;->lookahead()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v2

    .line 168
    aget v0, v1, v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/RuleCharacterIterator;->jumpahead(I)V

    .line 169
    iput-boolean p1, p0, Landroid/icu/impl/RuleCharacterIterator;->isEscaped:Z

    if-ltz v2, :cond_5

    move v1, v2

    goto :goto_1

    .line 171
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid escape"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return v1
.end method

.method public setPos(Ljava/lang/Object;)V
    .locals 3

    .line 235
    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 236
    aget-object v1, p1, v0

    check-cast v1, [C

    iput-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    const/4 v1, 0x1

    .line 237
    aget-object p1, p1, v1

    check-cast p1, [I

    .line 238
    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    aget v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 239
    aget p1, p1, v1

    iput p1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    return-void
.end method

.method public skipIgnored(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 253
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/RuleCharacterIterator;->_current()I

    move-result p1

    .line 254
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 255
    :cond_0
    invoke-static {p1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/icu/impl/RuleCharacterIterator;->_advance(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 314
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
