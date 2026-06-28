.class Landroid/icu/text/ReplaceableContextIterator;
.super Ljava/lang/Object;
.source "ReplaceableContextIterator.java"

# interfaces
.implements Landroid/icu/impl/UCaseProps$ContextIterator;


# instance fields
.field protected contextLimit:I

.field protected contextStart:I

.field protected cpLimit:I

.field protected cpStart:I

.field protected dir:I

.field protected index:I

.field protected limit:I

.field protected reachedLimit:Z

.field protected rep:Landroid/icu/text/Replaceable;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    .line 40
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    .line 41
    iput-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method


# virtual methods
.method public didReachLimit()Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return p0
.end method

.method public getCaseMapCPStart()I
    .locals 0

    .line 72
    iget p0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    return p0
.end method

.method public next()I
    .locals 3

    .line 177
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 178
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    if-ge v0, v2, :cond_0

    .line 179
    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v1, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    .line 180
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    return v0

    .line 184
    :cond_0
    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    .line 186
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    if-le v0, v2, :cond_2

    .line 187
    iget-object v2, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    sub-int/2addr v0, v1

    invoke-interface {v2, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    .line 188
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    return v0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public nextCaseMapCP()I
    .locals 3

    .line 122
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    if-ge v0, v1, :cond_0

    .line 123
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    .line 124
    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v1, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    .line 125
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    return v0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public replace(Ljava/lang/String;)I
    .locals 4

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    sub-int v3, v1, v2

    sub-int/2addr v0, v3

    .line 141
    iget-object v3, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v3, v2, v1, p1}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 142
    iget p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    .line 143
    iget p1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    .line 144
    iget p1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    return v0
.end method

.method public reset(I)V
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 160
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    .line 161
    iget p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    .line 164
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    .line 165
    iget p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    goto :goto_0

    .line 168
    :cond_1
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    .line 169
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    .line 171
    :goto_0
    iput-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method

.method public setContextLimits(II)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 98
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    if-gt p1, v1, :cond_1

    .line 100
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    .line 104
    :goto_0
    iget p1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    if-ge p2, p1, :cond_2

    .line 105
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    goto :goto_1

    .line 106
    :cond_2
    iget-object p1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result p1

    if-gt p2, p1, :cond_3

    .line 107
    iput p2, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    goto :goto_1

    .line 109
    :cond_3
    iget-object p1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    .line 111
    :goto_1
    iput-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 61
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    .line 63
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    .line 64
    iput-boolean p1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method

.method public setLimit(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 83
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 84
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    :goto_0
    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method

.method public setText(Landroid/icu/text/Replaceable;)V
    .locals 0

    .line 49
    iput-object p1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    .line 50
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    .line 52
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    .line 53
    iput-boolean p1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method
