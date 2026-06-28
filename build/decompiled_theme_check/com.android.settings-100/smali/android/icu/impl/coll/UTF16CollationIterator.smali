.class public Landroid/icu/impl/coll/UTF16CollationIterator;
.super Landroid/icu/impl/coll/CollationIterator;
.source "UTF16CollationIterator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected limit:I

.field protected pos:I

.field protected seq:Ljava/lang/CharSequence;

.field protected start:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;Z)V

    .line 33
    iput-object p3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    .line 35
    iput p4, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 36
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    return-void
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 2

    :cond_0
    :goto_0
    if-lez p1, :cond_1

    .line 137
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    if-eq v0, v1, :cond_1

    .line 138
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, -0x1

    .line 140
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, -0x1

    .line 141
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 41
    invoke-super {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 42
    :cond_0
    check-cast p1, Landroid/icu/impl/coll/UTF16CollationIterator;

    .line 44
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget p0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    sub-int/2addr v0, p0

    iget p0, p1, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget p1, p1, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    sub-int/2addr p0, p1

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected forwardNumCodePoints(I)V
    .locals 3

    :cond_0
    :goto_0
    if-lez p1, :cond_1

    .line 125
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-eq v0, v1, :cond_1

    .line 126
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, -0x1

    .line 128
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    .line 129
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getOffset()I
    .locals 1

    .line 61
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget p0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    sub-int/2addr v0, p0

    return v0
.end method

.method protected handleGetTrailSurrogate()C
    .locals 2

    .line 115
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    :cond_1
    return v0
.end method

.method protected handleNextCE32()J
    .locals 3

    .line 106
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-ne v0, v1, :cond_0

    const-wide v0, -0xffffff40L

    return-wide v0

    .line 109
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 110
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/UTF16CollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public nextCodePoint()I
    .locals 3

    .line 74
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 77
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    .line 80
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public previousCodePoint()I
    .locals 3

    .line 90
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 93
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 95
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    .line 96
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 98
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public resetToOffset(I)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroid/icu/impl/coll/UTF16CollationIterator;->reset()V

    .line 56
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    return-void
.end method

.method public setText(ZLjava/lang/CharSequence;I)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;->reset(Z)V

    .line 66
    iput-object p2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    .line 68
    iput p3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 69
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    return-void
.end method
