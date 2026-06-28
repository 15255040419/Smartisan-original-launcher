.class final Landroid/icu/impl/coll/CollationIterator$SkippedState;
.super Ljava/lang/Object;
.source "CollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SkippedState"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final newBuffer:Ljava/lang/StringBuilder;

.field private final oldBuffer:Ljava/lang/StringBuilder;

.field private pos:I

.field private skipLengthAtMatch:I

.field private state:Landroid/icu/util/CharsTrie$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const-class v0, Landroid/icu/impl/coll/CollationIterator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    .line 173
    new-instance v0, Landroid/icu/util/CharsTrie$State;

    invoke-direct {v0}, Landroid/icu/util/CharsTrie$State;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->state:Landroid/icu/util/CharsTrie$State;

    return-void
.end method


# virtual methods
.method backwardNumCodePoints(I)I
    .locals 3

    .line 116
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 117
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    sub-int v2, v1, v0

    if-lez v2, :cond_1

    if-lt v2, p1, :cond_0

    sub-int/2addr v1, p1

    .line 121
    iput v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    return p1

    .line 125
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    sub-int p1, v2, p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result p1

    iput p1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    return v2

    .line 130
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    neg-int p1, p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result p1

    iput p1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    const/4 p0, 0x0

    return p0
.end method

.method clear()V
    .locals 2

    .line 90
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 91
    iput v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    return-void
.end method

.method hasNext()Z
    .locals 1

    .line 97
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method incBeyond()V
    .locals 1

    .line 109
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    return-void
.end method

.method isEmpty()Z
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

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

.method next()I
    .locals 3

    .line 101
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    .line 102
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    return v0
.end method

.method recordMatch()V
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skipLengthAtMatch:I

    return-void
.end method

.method replaceMatch()V
    .locals 4

    .line 150
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 151
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    if-le v1, v0, :cond_0

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    .line 152
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skipLengthAtMatch:I

    invoke-virtual {v0, v2, v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 153
    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    return-void
.end method

.method resetToTrieState(Landroid/icu/util/CharsTrie;)V
    .locals 0

    .line 157
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->state:Landroid/icu/util/CharsTrie$State;

    invoke-virtual {p1, p0}, Landroid/icu/util/CharsTrie;->resetToState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;

    return-void
.end method

.method saveTrieState(Landroid/icu/util/CharsTrie;)V
    .locals 0

    .line 156
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->state:Landroid/icu/util/CharsTrie$State;

    invoke-virtual {p1, p0}, Landroid/icu/util/CharsTrie;->saveState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;

    return-void
.end method

.method setFirstSkipped(I)V
    .locals 2

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skipLengthAtMatch:I

    .line 137
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 138
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method skip(I)V
    .locals 0

    .line 142
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    return-void
.end method
