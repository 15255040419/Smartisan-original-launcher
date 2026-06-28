.class public final Landroid/icu/text/Edits;
.super Ljava/lang/Object;
.source "Edits.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Edits$Iterator;
    }
.end annotation


# static fields
.field private static final LENGTH_IN_1TRAIL:I = 0x3d

.field private static final LENGTH_IN_2TRAIL:I = 0x3e

.field private static final MAX_SHORT_CHANGE:I = 0x6fff

.field private static final MAX_SHORT_CHANGE_NEW_LENGTH:I = 0x7

.field private static final MAX_SHORT_CHANGE_OLD_LENGTH:I = 0x6

.field private static final MAX_UNCHANGED:I = 0xfff

.field private static final MAX_UNCHANGED_LENGTH:I = 0x1000

.field private static final SHORT_CHANGE_NUM_MASK:I = 0x1ff

.field private static final STACK_CAPACITY:I = 0x64


# instance fields
.field private array:[C

.field private delta:I

.field private length:I

.field private numChanges:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    new-array v0, v0, [C

    .line 47
    iput-object v0, p0, Landroid/icu/text/Edits;->array:[C

    return-void
.end method

.method private append(I)V
    .locals 3

    .line 170
    iget v0, p0, Landroid/icu/text/Edits;->length:I

    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroid/icu/text/Edits;->growArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/icu/text/Edits;->array:[C

    iget v1, p0, Landroid/icu/text/Edits;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/Edits;->length:I

    int-to-char p0, p1

    aput-char p0, v0, v1

    :cond_1
    return-void
.end method

.method private growArray()Z
    .locals 4

    .line 177
    iget-object v0, p0, Landroid/icu/text/Edits;->array:[C

    array-length v1, v0

    const v2, 0x7fffffff

    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    const/16 v2, 0x7d0

    goto :goto_0

    .line 179
    :cond_0
    array-length v1, v0

    if-eq v1, v2, :cond_3

    .line 181
    array-length v1, v0

    const v3, 0x3fffffff    # 1.9999999f

    if-lt v1, v3, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    array-length v0, v0

    mul-int/lit8 v2, v0, 0x2

    .line 187
    :goto_0
    iget-object v0, p0, Landroid/icu/text/Edits;->array:[C

    array-length v1, v0

    sub-int v1, v2, v1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_2

    .line 190
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Edits;->array:[C

    const/4 p0, 0x1

    return p0

    .line 188
    :cond_2
    new-instance p0, Ljava/nio/BufferOverflowException;

    invoke-direct {p0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p0

    .line 180
    :cond_3
    new-instance p0, Ljava/nio/BufferOverflowException;

    invoke-direct {p0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p0
.end method

.method private lastUnit()I
    .locals 1

    .line 62
    iget v0, p0, Landroid/icu/text/Edits;->length:I

    if-lez v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/Edits;->array:[C

    add-int/lit8 v0, v0, -0x1

    aget-char p0, p0, v0

    goto :goto_0

    :cond_0
    const p0, 0xffff

    :goto_0
    return p0
.end method

.method private setLastUnit(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Landroid/icu/text/Edits;->array:[C

    iget p0, p0, Landroid/icu/text/Edits;->length:I

    add-int/lit8 p0, p0, -0x1

    int-to-char p1, p1

    aput-char p1, v0, p0

    return-void
.end method


# virtual methods
.method public addReplace(II)V
    .locals 8

    if-ltz p1, :cond_e

    if-ltz p2, :cond_e

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 111
    :cond_0
    iget v0, p0, Landroid/icu/text/Edits;->numChanges:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/Edits;->numChanges:I

    sub-int v0, p2, p1

    if-eqz v0, :cond_4

    if-lez v0, :cond_1

    .line 114
    iget v1, p0, Landroid/icu/text/Edits;->delta:I

    if-ltz v1, :cond_1

    const v2, 0x7fffffff

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_2

    :cond_1
    if-gez v0, :cond_3

    iget v1, p0, Landroid/icu/text/Edits;->delta:I

    if-gez v1, :cond_3

    const/high16 v2, -0x80000000

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 119
    :cond_3
    :goto_0
    iget v1, p0, Landroid/icu/text/Edits;->delta:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/text/Edits;->delta:I

    :cond_4
    const/4 v0, 0x6

    if-lez p1, :cond_6

    if-gt p1, v0, :cond_6

    const/4 v1, 0x7

    if-gt p2, v1, :cond_6

    shl-int/lit8 p1, p1, 0xc

    shl-int/lit8 p2, p2, 0x9

    or-int/2addr p1, p2

    .line 126
    invoke-direct {p0}, Landroid/icu/text/Edits;->lastUnit()I

    move-result p2

    const/16 v0, 0xfff

    if-ge v0, p2, :cond_5

    const/16 v0, 0x6fff

    if-ge p2, v0, :cond_5

    and-int/lit16 v0, p2, -0x200

    if-ne v0, p1, :cond_5

    and-int/lit16 v0, p2, 0x1ff

    const/16 v1, 0x1ff

    if-ge v0, v1, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 130
    invoke-direct {p0, p2}, Landroid/icu/text/Edits;->setLastUnit(I)V

    return-void

    .line 133
    :cond_5
    invoke-direct {p0, p1}, Landroid/icu/text/Edits;->append(I)V

    return-void

    :cond_6
    const/16 v1, 0x7000

    const/16 v2, 0x3d

    if-ge p1, v2, :cond_7

    if-ge p2, v2, :cond_7

    shl-int/2addr p1, v0

    or-int/2addr p1, v1

    or-int/2addr p1, p2

    .line 141
    invoke-direct {p0, p1}, Landroid/icu/text/Edits;->append(I)V

    goto/16 :goto_3

    .line 142
    :cond_7
    iget-object v3, p0, Landroid/icu/text/Edits;->array:[C

    array-length v3, v3

    iget v4, p0, Landroid/icu/text/Edits;->length:I

    sub-int/2addr v3, v4

    const/4 v4, 0x5

    if-ge v3, v4, :cond_8

    invoke-direct {p0}, Landroid/icu/text/Edits;->growArray()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 143
    :cond_8
    iget v3, p0, Landroid/icu/text/Edits;->length:I

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x7fff

    const v5, 0x8000

    if-ge p1, v2, :cond_9

    shl-int/2addr p1, v0

    or-int/2addr p1, v1

    move v0, p1

    goto :goto_1

    :cond_9
    if-gt p1, v4, :cond_a

    const/16 v0, 0x7f40

    .line 148
    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    add-int/lit8 v6, v3, 0x1

    or-int/2addr p1, v5

    int-to-char p1, p1

    aput-char p1, v1, v3

    move v3, v6

    goto :goto_1

    :cond_a
    shr-int/lit8 v6, p1, 0x1e

    add-int/lit8 v6, v6, 0x3e

    shl-int/lit8 v0, v6, 0x6

    or-int/2addr v0, v1

    .line 151
    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v7, p1, 0xf

    or-int/2addr v7, v5

    int-to-char v7, v7

    aput-char v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    or-int/2addr p1, v5

    int-to-char p1, p1

    .line 152
    aput-char p1, v1, v6

    :goto_1
    if-ge p2, v2, :cond_b

    or-int p1, v0, p2

    goto :goto_2

    :cond_b
    if-gt p2, v4, :cond_c

    or-int/lit8 p1, v0, 0x3d

    .line 158
    iget-object v0, p0, Landroid/icu/text/Edits;->array:[C

    add-int/lit8 v1, v3, 0x1

    or-int/2addr p2, v5

    int-to-char p2, p2

    aput-char p2, v0, v3

    move v3, v1

    goto :goto_2

    :cond_c
    shr-int/lit8 p1, p2, 0x1e

    add-int/lit8 p1, p1, 0x3e

    or-int/2addr p1, v0

    .line 161
    iget-object v0, p0, Landroid/icu/text/Edits;->array:[C

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v2, p2, 0xf

    or-int/2addr v2, v5

    int-to-char v2, v2

    aput-char v2, v0, v3

    add-int/lit8 v3, v1, 0x1

    or-int/2addr p2, v5

    int-to-char p2, p2

    .line 162
    aput-char p2, v0, v1

    .line 164
    :goto_2
    iget-object p2, p0, Landroid/icu/text/Edits;->array:[C

    iget v0, p0, Landroid/icu/text/Edits;->length:I

    int-to-char p1, p1

    aput-char p1, p2, v0

    .line 165
    iput v3, p0, Landroid/icu/text/Edits;->length:I

    :cond_d
    :goto_3
    return-void

    .line 104
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addReplace("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): both lengths must be non-negative"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addUnchanged(I)V
    .locals 3

    if-ltz p1, :cond_4

    .line 76
    invoke-direct {p0}, Landroid/icu/text/Edits;->lastUnit()I

    move-result v0

    const/16 v1, 0xfff

    if-ge v0, v1, :cond_1

    rsub-int v2, v0, 0xfff

    if-lt v2, p1, :cond_0

    add-int/2addr v0, p1

    .line 80
    invoke-direct {p0, v0}, Landroid/icu/text/Edits;->setLastUnit(I)V

    return-void

    .line 83
    :cond_0
    invoke-direct {p0, v1}, Landroid/icu/text/Edits;->setLastUnit(I)V

    sub-int/2addr p1, v2

    :cond_1
    :goto_0
    const/16 v0, 0x1000

    if-lt p1, v0, :cond_2

    .line 88
    invoke-direct {p0, v1}, Landroid/icu/text/Edits;->append(I)V

    add-int/lit16 p1, p1, -0x1000

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 93
    invoke-direct {p0, p1}, Landroid/icu/text/Edits;->append(I)V

    :cond_3
    return-void

    .line 72
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addUnchanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): length must not be negative"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCoarseChangesIterator()Landroid/icu/text/Edits$Iterator;
    .locals 7

    .line 738
    new-instance v6, Landroid/icu/text/Edits$Iterator;

    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    iget v2, p0, Landroid/icu/text/Edits;->length:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Edits$Iterator;-><init>([CIZZLandroid/icu/text/Edits$1;)V

    return-object v6
.end method

.method public getCoarseIterator()Landroid/icu/text/Edits$Iterator;
    .locals 7

    .line 747
    new-instance v6, Landroid/icu/text/Edits$Iterator;

    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    iget v2, p0, Landroid/icu/text/Edits;->length:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Edits$Iterator;-><init>([CIZZLandroid/icu/text/Edits$1;)V

    return-object v6
.end method

.method public getFineChangesIterator()Landroid/icu/text/Edits$Iterator;
    .locals 7

    .line 757
    new-instance v6, Landroid/icu/text/Edits$Iterator;

    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    iget v2, p0, Landroid/icu/text/Edits;->length:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Edits$Iterator;-><init>([CIZZLandroid/icu/text/Edits$1;)V

    return-object v6
.end method

.method public getFineIterator()Landroid/icu/text/Edits$Iterator;
    .locals 7

    .line 766
    new-instance v6, Landroid/icu/text/Edits$Iterator;

    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    iget v2, p0, Landroid/icu/text/Edits;->length:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Edits$Iterator;-><init>([CIZZLandroid/icu/text/Edits$1;)V

    return-object v6
.end method

.method public hasChanges()Z
    .locals 0

    .line 204
    iget p0, p0, Landroid/icu/text/Edits;->numChanges:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lengthDelta()I
    .locals 0

    .line 199
    iget p0, p0, Landroid/icu/text/Edits;->delta:I

    return p0
.end method

.method public mergeAndAppend(Landroid/icu/text/Edits;Landroid/icu/text/Edits;)Landroid/icu/text/Edits;
    .locals 10

    .line 796
    invoke-virtual {p1}, Landroid/icu/text/Edits;->getFineIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object p1

    .line 797
    invoke-virtual {p2}, Landroid/icu/text/Edits;->getFineIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move v0, v1

    move v4, v0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 818
    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 819
    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->oldLength()I

    move-result v0

    .line 820
    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result v8

    if-nez v0, :cond_2

    if-eqz v4, :cond_1

    .line 823
    invoke-virtual {p1}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v6, v8

    goto :goto_0

    :cond_1
    :goto_1
    add-int/2addr v6, v8

    .line 824
    invoke-virtual {p0, v5, v6}, Landroid/icu/text/Edits;->addReplace(II)V

    :goto_2
    move v5, v1

    :goto_3
    move v6, v5

    goto :goto_0

    :cond_2
    if-nez v4, :cond_9

    if-eqz v3, :cond_5

    .line 835
    invoke-virtual {p1}, Landroid/icu/text/Edits$Iterator;->next()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 836
    invoke-virtual {p1}, Landroid/icu/text/Edits$Iterator;->oldLength()I

    move-result v7

    .line 837
    invoke-virtual {p1}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result v4

    if-nez v4, :cond_9

    .line 840
    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->oldLength()I

    move-result v9

    if-eq v0, v9, :cond_4

    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    add-int/2addr v5, v7

    goto :goto_0

    :cond_4
    :goto_4
    add-int/2addr v5, v7

    .line 841
    invoke-virtual {p0, v5, v6}, Landroid/icu/text/Edits;->addReplace(II)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_8

    if-nez v5, :cond_6

    if-eqz v6, :cond_7

    .line 926
    :cond_6
    invoke-virtual {p0, v5, v6}, Landroid/icu/text/Edits;->addReplace(II)V

    :cond_7
    return-object p0

    .line 853
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The ab output string is shorter than the bc input string."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    if-eqz v0, :cond_12

    .line 869
    invoke-virtual {p1}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-nez v9, :cond_d

    if-nez v5, :cond_a

    if-eqz v6, :cond_b

    .line 872
    :cond_a
    invoke-virtual {p0, v5, v6}, Landroid/icu/text/Edits;->addReplace(II)V

    move v5, v1

    move v6, v5

    :cond_b
    if-gt v7, v8, :cond_c

    move v0, v7

    goto :goto_5

    :cond_c
    move v0, v8

    .line 876
    :goto_5
    invoke-virtual {p0, v0}, Landroid/icu/text/Edits;->addUnchanged(I)V

    sub-int/2addr v7, v0

    sub-int/2addr v8, v0

    move v4, v7

    goto :goto_6

    .line 882
    :cond_d
    invoke-virtual {p1}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-eqz v9, :cond_e

    if-lt v4, v0, :cond_10

    add-int/2addr v5, v0

    add-int/2addr v6, v8

    .line 886
    invoke-virtual {p0, v5, v6}, Landroid/icu/text/Edits;->addReplace(II)V

    sub-int v7, v4, v0

    move v0, v1

    move v5, v0

    move v6, v5

    move v4, v7

    goto/16 :goto_0

    .line 893
    :cond_e
    invoke-virtual {p1}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-nez v9, :cond_f

    if-gt v4, v0, :cond_10

    add-int/2addr v5, v7

    add-int/2addr v6, v4

    .line 897
    invoke-virtual {p0, v5, v6}, Landroid/icu/text/Edits;->addReplace(II)V

    sub-int v8, v0, v4

    move v4, v1

    move v5, v4

    move v6, v5

    :goto_6
    move v0, v8

    goto/16 :goto_0

    :cond_f
    if-ne v4, v0, :cond_10

    add-int/2addr v5, v7

    add-int/2addr v6, v8

    .line 907
    invoke-virtual {p0, v5, v6}, Landroid/icu/text/Edits;->addReplace(II)V

    move v0, v1

    move v4, v0

    move v5, v4

    goto/16 :goto_3

    :cond_10
    add-int/2addr v5, v7

    add-int/2addr v6, v8

    if-ge v4, v0, :cond_11

    sub-int/2addr v0, v4

    move v4, v1

    move v8, v4

    goto/16 :goto_0

    :cond_11
    sub-int/2addr v4, v0

    move v0, v1

    move v7, v0

    goto/16 :goto_0

    .line 858
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The bc input string is shorter than the ab output string."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public numberOfChanges()I
    .locals 0

    .line 210
    iget p0, p0, Landroid/icu/text/Edits;->numChanges:I

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Landroid/icu/text/Edits;->numChanges:I

    iput v0, p0, Landroid/icu/text/Edits;->delta:I

    iput v0, p0, Landroid/icu/text/Edits;->length:I

    return-void
.end method
