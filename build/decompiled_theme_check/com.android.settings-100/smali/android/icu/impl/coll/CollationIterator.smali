.class public abstract Landroid/icu/impl/coll/CollationIterator;
.super Ljava/lang/Object;
.source "CollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationIterator$SkippedState;,
        Landroid/icu/impl/coll/CollationIterator$CEBuffer;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final NO_CP_AND_CE32:J = -0xffffff40L


# instance fields
.field private ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

.field private cesIndex:I

.field protected final data:Landroid/icu/impl/coll/CollationData;

.field private isNumeric:Z

.field private numCpFwd:I

.field private skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

.field protected final trie:Landroid/icu/impl/Trie2_32;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    .line 188
    iput-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    const/4 p1, -0x1

    .line 189
    iput p1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    const/4 p1, 0x0

    .line 190
    iput-boolean p1, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;Z)V
    .locals 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    .line 196
    iput-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    const/4 p1, -0x1

    .line 197
    iput p1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    .line 198
    iput-boolean p2, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    .line 199
    new-instance p1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-direct {p1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    return-void
.end method

.method private final appendNumericCEs(IZ)V
    .locals 4

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    const/16 v2, 0xc0

    const/4 v3, 0x1

    if-eqz p2, :cond_5

    .line 977
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->digitFromCE32(I)C

    move-result p1

    .line 978
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 979
    iget p1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-nez p1, :cond_1

    goto :goto_4

    .line 980
    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_4

    .line 982
    :cond_2
    iget-object p2, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p2, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p2

    if-ne p2, v2, :cond_3

    .line 984
    iget-object p2, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object p2, p2, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p2, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    goto :goto_1

    :cond_3
    move p1, p2

    .line 986
    :goto_1
    invoke-static {p1, v1}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p2

    if-nez p2, :cond_4

    .line 987
    invoke-virtual {p0, v3}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    goto :goto_4

    .line 990
    :cond_4
    iget p2, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    goto :goto_0

    .line 994
    :cond_5
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->digitFromCE32(I)C

    move-result p1

    .line 995
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result p1

    if-gez p1, :cond_6

    goto :goto_3

    .line 998
    :cond_6
    iget-object p2, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p2, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p2

    if-ne p2, v2, :cond_7

    .line 1000
    iget-object p2, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object p2, p2, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p2, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    goto :goto_2

    :cond_7
    move p1, p2

    .line 1002
    :goto_2
    invoke-static {p1, v1}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1003
    invoke-virtual {p0, v3}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    .line 1008
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    :goto_4
    const/4 p1, 0x0

    .line 1013
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v3

    if-ge p1, p2, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    if-nez p2, :cond_8

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 1015
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, p1

    const/16 v1, 0xfe

    if-le p2, v1, :cond_9

    move p2, v1

    :cond_9
    add-int/2addr p2, p1

    .line 1017
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->appendNumericSegmentCEs(Ljava/lang/CharSequence;)V

    .line 1019
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lt p2, p1, :cond_a

    return-void

    :cond_a
    move p1, p2

    goto :goto_5
.end method

.method private final appendNumericSegmentCEs(Ljava/lang/CharSequence;)V
    .locals 13

    .line 1027
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1030
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-wide v1, v1, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-gt v0, v3, :cond_3

    .line 1034
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v9, v3

    move v3, v7

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v9, v9, 0xa

    .line 1036
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x4a

    if-ge v9, v3, :cond_1

    add-int/2addr v9, v8

    shl-int/lit8 p1, v9, 0x10

    int-to-long v3, p1

    or-long v0, v1, v3

    .line 1048
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :cond_1
    sub-int/2addr v9, v3

    const/16 v3, 0x4c

    const/16 v10, 0x27b0

    if-ge v9, v10, :cond_2

    .line 1056
    div-int/lit16 p1, v9, 0xfe

    add-int/2addr v3, p1

    shl-int/lit8 p1, v3, 0x10

    int-to-long v5, p1

    or-long v0, v1, v5

    rem-int/lit16 v9, v9, 0xfe

    add-int/2addr v9, v8

    shl-int/lit8 p1, v9, 0x8

    int-to-long v2, p1

    or-long/2addr v0, v2

    .line 1058
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :cond_2
    sub-int/2addr v9, v10

    const/16 v3, 0x74

    const v10, 0xfc040

    if-ge v9, v10, :cond_3

    .line 1066
    rem-int/lit16 p1, v9, 0xfe

    add-int/2addr p1, v8

    int-to-long v10, p1

    or-long v0, v1, v10

    .line 1067
    div-int/lit16 v9, v9, 0xfe

    .line 1068
    rem-int/lit16 p1, v9, 0xfe

    add-int/2addr p1, v8

    shl-int/2addr p1, v4

    int-to-long v4, p1

    or-long/2addr v0, v4

    .line 1069
    div-int/lit16 v9, v9, 0xfe

    .line 1070
    rem-int/lit16 v9, v9, 0xfe

    add-int/2addr v3, v9

    shl-int/lit8 p1, v3, 0x10

    int-to-long v2, p1

    or-long/2addr v0, v2

    .line 1071
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :cond_3
    add-int/lit8 v3, v0, 0x1

    .line 1084
    div-int/2addr v3, v8

    add-int/lit16 v3, v3, 0x80

    shl-int/2addr v3, v6

    int-to-long v9, v3

    or-long/2addr v9, v1

    :goto_1
    add-int/lit8 v3, v0, -0x1

    .line 1087
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v3, v0, -0x2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_4
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_5

    .line 1095
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v5, v7

    goto :goto_2

    .line 1098
    :cond_5
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/2addr v3, v5

    move v5, v8

    :goto_2
    mul-int/2addr v3, v8

    add-int/lit8 v3, v3, 0xb

    :goto_3
    if-ge v5, v0, :cond_7

    if-nez v4, :cond_6

    int-to-long v3, v3

    or-long/2addr v3, v9

    .line 1109
    iget-object v9, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v3, v4}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    move-wide v9, v1

    move v4, v6

    goto :goto_4

    :cond_6
    shl-int/2addr v3, v4

    int-to-long v11, v3

    or-long/2addr v9, v11

    add-int/lit8 v4, v4, -0x8

    .line 1116
    :goto_4
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v11, v5, 0x1

    invoke-interface {p1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    add-int/2addr v3, v11

    mul-int/2addr v3, v8

    add-int/lit8 v3, v3, 0xb

    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_7
    sub-int/2addr v3, v7

    shl-int p1, v3, v4

    int-to-long v0, p1

    or-long/2addr v0, v9

    .line 1120
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void
.end method

.method private final backwardNumSkipped(I)V
    .locals 1

    .line 701
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->backwardNumCodePoints(I)I

    move-result p1

    .line 704
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    .line 705
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-ltz v0, :cond_1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    :cond_1
    return-void
.end method

.method private final getCE32FromPrefix(Landroid/icu/impl/coll/CollationData;I)I
    .locals 3

    .line 671
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 672
    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v0

    add-int/lit8 p2, p2, 0x2

    .line 676
    new-instance v1, Landroid/icu/util/CharsTrie;

    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    const/4 p1, 0x0

    .line 678
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result p2

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 681
    invoke-virtual {v1, p2}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object p2

    .line 682
    invoke-virtual {p2}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 683
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result v0

    .line 685
    :cond_2
    invoke-virtual {p2}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 687
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    return v0
.end method

.method protected static final isLeadSurrogate(I)Z
    .locals 1

    and-int/lit16 p0, p0, -0x400

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isSurrogate(I)Z
    .locals 1

    and-int/lit16 p0, p0, -0x800

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static final isTrailSurrogate(I)Z
    .locals 1

    and-int/lit16 p0, p0, -0x400

    const v0, 0xdc00

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final nextCE32FromContraction(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;III)I
    .locals 6

    .line 721
    new-instance v2, Landroid/icu/util/CharsTrie;

    invoke-direct {v2, p3, p4}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    .line 722
    iget-object p3, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p3, v2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    .line 723
    :cond_0
    invoke-virtual {v2, p6}, Landroid/icu/util/CharsTrie;->firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object p3

    const/4 p4, 0x1

    move v3, p5

    move v0, p6

    move p5, p4

    move p6, p5

    .line 726
    :goto_0
    invoke-virtual {p3}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 727
    invoke-virtual {v2}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result p5

    .line 728
    invoke-virtual {p3}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result p3

    if-gez p3, :cond_1

    goto :goto_1

    .line 731
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0, v2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    :cond_2
    move v0, p3

    move v3, p5

    move p5, p4

    goto :goto_2

    :cond_3
    :goto_1
    return p5

    .line 733
    :cond_4
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-eq p3, v1, :cond_6

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result p3

    if-gez p3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 p5, p5, 0x1

    move v0, p3

    :goto_2
    add-int/lit8 p6, p6, 0x1

    .line 768
    invoke-virtual {v2, v0}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object p3

    goto :goto_0

    :cond_6
    :goto_3
    and-int/lit16 p3, p2, 0x400

    if-eqz p3, :cond_9

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_7

    if-ge p5, p6, :cond_9

    :cond_7
    if-le p5, p4, :cond_8

    .line 748
    invoke-direct {p0, p5}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    .line 749
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result p2

    add-int/lit8 p5, p5, -0x1

    sub-int/2addr p6, p5

    move v5, p2

    move p5, p4

    move v4, p6

    goto :goto_4

    :cond_8
    move v4, p6

    move v5, v0

    .line 753
    :goto_4
    invoke-virtual {p1, v5}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result p2

    const/16 p3, 0xff

    if-le p2, p3, :cond_9

    move-object v0, p0

    move-object v1, p1

    .line 754
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationIterator;->nextCE32FromDiscontiguousContraction(Landroid/icu/impl/coll/CollationData;Landroid/icu/util/CharsTrie;III)I

    move-result p0

    return p0

    .line 770
    :cond_9
    invoke-direct {p0, p5}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    return v3
.end method

.method private final nextCE32FromDiscontiguousContraction(Landroid/icu/impl/coll/CollationData;Landroid/icu/util/CharsTrie;III)I
    .locals 8

    .line 794
    invoke-virtual {p1, p5}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result v0

    .line 796
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_0

    .line 799
    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    return p3

    :cond_0
    add-int/2addr p4, v2

    const/16 v3, 0xff

    and-int/2addr v0, v3

    .line 804
    invoke-virtual {p1, v1}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v3, :cond_1

    .line 807
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    return p3

    .line 814
    :cond_1
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 832
    :cond_2
    iget-object p4, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->resetToTrieState(Landroid/icu/util/CharsTrie;)V

    goto :goto_2

    .line 815
    :cond_3
    :goto_0
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-nez v6, :cond_4

    .line 816
    new-instance v6, Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-direct {v6}, Landroid/icu/impl/coll/CollationIterator$SkippedState;-><init>()V

    iput-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    .line 818
    :cond_4
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    if-le p4, v5, :cond_6

    .line 821
    invoke-virtual {p0, p4}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    .line 822
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/icu/util/CharsTrie;->firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    const/4 v6, 0x3

    :goto_1
    if-ge v6, p4, :cond_5

    .line 824
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 827
    :cond_5
    invoke-virtual {p0, v5}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    .line 829
    :cond_6
    iget-object p4, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    .line 835
    :goto_2
    iget-object p4, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4, p5}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->setFirstSkipped(I)V

    :cond_7
    shr-int/lit8 p4, v4, 0x8

    if-ge v0, p4, :cond_9

    .line 842
    invoke-virtual {p2, v1}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object p4

    invoke-virtual {p4}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result p5

    if-eqz p5, :cond_9

    .line 845
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result p3

    const/4 v5, 0x0

    .line 847
    iget-object p5, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p5}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->recordMatch()V

    .line 848
    invoke-virtual {p4}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result p4

    if-nez p4, :cond_8

    goto :goto_4

    .line 849
    :cond_8
    iget-object p4, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    goto :goto_3

    .line 852
    :cond_9
    iget-object p4, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4, v1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skip(I)V

    .line 853
    iget-object p4, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->resetToTrieState(Landroid/icu/util/CharsTrie;)V

    and-int/lit16 p4, v4, 0xff

    move v0, p4

    .line 856
    :goto_3
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result v1

    if-gez v1, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 858
    invoke-virtual {p1, v1}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result v4

    if-gt v4, v3, :cond_7

    .line 864
    :goto_4
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    .line 865
    iget-object p2, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result p2

    .line 866
    iget-object p4, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->replaceMatch()V

    if-eqz p2, :cond_d

    .line 867
    iget-object p2, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p2, -0x1

    .line 874
    :goto_5
    invoke-virtual {p0, p1, p2, p3, v2}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    .line 877
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->hasNext()Z

    move-result p1

    if-nez p1, :cond_b

    .line 890
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->clear()V

    move p3, v2

    goto :goto_6

    .line 878
    :cond_b
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->next()I

    move-result p2

    .line 879
    invoke-virtual {p0, p2}, Landroid/icu/impl/coll/CollationIterator;->getDataCE32(I)I

    move-result p3

    const/16 p1, 0xc0

    if-ne p3, p1, :cond_c

    .line 881
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 882
    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p3

    goto :goto_5

    .line 884
    :cond_c
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    goto :goto_5

    :cond_d
    :goto_6
    return p3
.end method

.method private final nextCEFromCE32(Landroid/icu/impl/coll/CollationData;II)J
    .locals 3

    .line 665
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    .line 666
    invoke-virtual {p0, p1, p2, p3, v2}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    .line 667
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget p2, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private final nextSkippedCodePoint()I
    .locals 2

    .line 692
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->next()I

    move-result p0

    return p0

    .line 693
    :cond_0
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 694
    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v0

    .line 695
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->incBeyond()V

    .line 696
    :cond_2
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-lez v1, :cond_3

    if-ltz v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    :cond_3
    return v0
.end method

.method private final previousCEUnsafe(ILandroid/icu/impl/coll/UVector32;)J
    .locals 5

    const/4 p1, 0x1

    move v0, p1

    .line 916
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 918
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-boolean v3, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    invoke-virtual {v2, v1, v3}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 925
    :cond_1
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    const/4 v1, 0x0

    .line 927
    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    .line 930
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v2

    .line 931
    :cond_2
    iget v3, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-lez v3, :cond_3

    add-int/lit8 v3, v3, -0x1

    .line 934
    iput v3, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    .line 936
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    .line 939
    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v3, v3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v3, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    .line 944
    invoke-virtual {p2, v2}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 947
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v2

    .line 948
    :goto_0
    invoke-virtual {p2}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v3

    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v4, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ge v3, v4, :cond_2

    .line 949
    invoke-virtual {p2, v2}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    goto :goto_0

    .line 954
    :cond_3
    invoke-virtual {p2, v2}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    const/4 p2, -0x1

    .line 957
    iput p2, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    .line 958
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    .line 960
    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    .line 961
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget p2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-virtual {p0, p2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method protected final appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V
    .locals 8

    :cond_0
    :goto_0
    move v2, p3

    .line 462
    :goto_1
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 463
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result p3

    const/16 v0, 0xc0

    const/4 v1, 0x2

    const/4 v3, -0x1

    const/4 v7, 0x1

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    .line 633
    :pswitch_0
    invoke-static {p2}, Landroid/icu/impl/coll/CollationIterator;->isSurrogate(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->forbidSurrogateCodePoints()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, -0x2fafb

    goto :goto_0

    .line 637
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    .line 629
    :pswitch_1
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {p1, p2, v2}, Landroid/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    .line 610
    :pswitch_2
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->handleGetTrailSurrogate()C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_4

    int-to-char p2, p2

    .line 611
    invoke-static {p2, p3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p2

    and-int/lit16 p3, v2, 0x300

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x100

    if-eq p3, v1, :cond_3

    .line 616
    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationData;->getCE32FromSupplementary(I)I

    move-result p3

    if-ne p3, v0, :cond_0

    .line 618
    :cond_3
    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 619
    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationData;->getCE32FromSupplementary(I)I

    move-result p3

    goto :goto_0

    :cond_4
    :goto_2
    move v2, v3

    goto :goto_1

    .line 574
    :pswitch_3
    iget-object p3, p1, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    const v0, 0xac00

    sub-int/2addr p2, v0

    .line 576
    rem-int/lit8 v0, p2, 0x1c

    .line 577
    div-int/lit8 p2, p2, 0x1c

    .line 578
    rem-int/lit8 v4, p2, 0x15

    .line 579
    div-int/lit8 p2, p2, 0x15

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_7

    .line 583
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    if-nez v0, :cond_5

    move p4, v1

    goto :goto_3

    :cond_5
    const/4 p4, 0x3

    :goto_3
    invoke-virtual {p1, p4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 584
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget p4, p1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    aget p2, p3, p2

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v2

    invoke-virtual {p1, p4, v2, v3}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    .line 585
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget p2, p1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr p2, v7

    add-int/lit8 v4, v4, 0x13

    aget p4, p3, v4

    invoke-static {p4}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v2

    invoke-virtual {p1, p2, v2, v3}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    .line 586
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget p2, p1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr p2, v1

    iput p2, p1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-eqz v0, :cond_6

    .line 588
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    add-int/lit8 v0, v0, 0x27

    aget p1, p3, v0

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    :cond_6
    return-void

    .line 594
    :cond_7
    aget p2, p3, p2

    invoke-virtual {p0, p1, v3, p2, p4}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    add-int/lit8 v4, v4, 0x13

    .line 595
    aget p2, p3, v4

    invoke-virtual {p0, p1, v3, p2, p4}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    if-nez v0, :cond_8

    return-void

    :cond_8
    add-int/lit8 v0, v0, 0x27

    .line 601
    aget p2, p3, v0

    move v2, p2

    move p2, v3

    goto/16 :goto_1

    .line 571
    :pswitch_4
    iget-object p3, p1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    const/4 v0, 0x0

    aget p3, p3, v0

    goto/16 :goto_0

    .line 559
    :pswitch_5
    iget-boolean p3, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    if-eqz p3, :cond_9

    .line 560
    invoke-direct {p0, v2, p4}, Landroid/icu/impl/coll/CollationIterator;->appendNumericCEs(IZ)V

    return-void

    .line 564
    :cond_9
    iget-object p3, p1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    aget p3, p3, v0

    goto/16 :goto_0

    .line 510
    :pswitch_6
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    .line 511
    invoke-virtual {p1, p3}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v5

    if-nez p4, :cond_a

    goto :goto_4

    .line 519
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-nez v0, :cond_c

    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-gez v0, :cond_c

    .line 522
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v0

    if-gez v0, :cond_b

    goto :goto_4

    :cond_b
    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_e

    .line 528
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->mayHaveLccc(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 531
    invoke-virtual {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    goto :goto_4

    .line 536
    :cond_c
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result v0

    if-gez v0, :cond_d

    goto :goto_4

    :cond_d
    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_e

    .line 542
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->mayHaveLccc(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 545
    invoke-direct {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    :goto_4
    move v2, v5

    goto/16 :goto_1

    :cond_e
    move v6, v0

    .line 550
    iget-object v3, p1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v4, p3, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/coll/CollationIterator;->nextCE32FromContraction(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;III)I

    move-result p3

    if-ne p3, v7, :cond_0

    return-void

    :pswitch_7
    if-eqz p4, :cond_f

    .line 505
    invoke-virtual {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    .line 506
    :cond_f
    invoke-direct {p0, p1, v2}, Landroid/icu/impl/coll/CollationIterator;->getCE32FromPrefix(Landroid/icu/impl/coll/CollationData;I)I

    move-result p3

    if-eqz p4, :cond_0

    .line 507
    invoke-virtual {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    goto/16 :goto_0

    .line 498
    :pswitch_8
    invoke-virtual {p0, v2}, Landroid/icu/impl/coll/CollationIterator;->getCE32FromBuilderData(I)I

    move-result p3

    if-ne p3, v0, :cond_0

    .line 500
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 501
    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p3

    goto/16 :goto_0

    .line 489
    :pswitch_9
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 490
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p3

    .line 491
    iget-object p4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {p4, p3}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 493
    :goto_5
    iget-object p4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->ces:[J

    add-int/lit8 v1, p2, 0x1

    aget-wide v4, v0, p2

    invoke-virtual {p4, v4, v5}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    add-int/2addr p3, v3

    if-gtz p3, :cond_10

    return-void

    :cond_10
    move p2, v1

    goto :goto_5

    .line 480
    :pswitch_a
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 481
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p3

    .line 482
    iget-object p4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {p4, p3}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 484
    :goto_6
    iget-object p4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int/lit8 v1, p2, 0x1

    aget p2, v0, p2

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v4

    invoke-virtual {p4, v4, v5}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    add-int/2addr p3, v3

    if-gtz p3, :cond_11

    return-void

    :cond_11
    move p2, v1

    goto :goto_6

    .line 474
    :pswitch_b
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {p1, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 475
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget p2, p1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    .line 476
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget p2, p1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr p2, v7

    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    .line 477
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget p1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    return-void

    .line 471
    :pswitch_c
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    .line 468
    :pswitch_d
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    .line 466
    :pswitch_e
    new-instance p0, Landroid/icu/util/ICUException;

    const-string p1, "internal program error: should be unreachable"

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 642
    :cond_12
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract backwardNumCodePoints(I)V
.end method

.method final clearCEs()V
    .locals 2

    .line 358
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    const/4 v1, 0x0

    iput v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    return-void
.end method

.method public final clearCEsIfNoneRemaining()V
    .locals 2

    .line 362
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, v1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->clearCEs()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 211
    :cond_1
    check-cast p1, Landroid/icu/impl/coll/CollationIterator;

    .line 212
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, v1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iget-object v2, p1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v2, v2, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    iget v2, p1, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    iget v2, p1, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    iget-boolean v2, p1, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    .line 218
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v2, v2, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ge v1, v2, :cond_4

    .line 219
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v2, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v2

    iget-object v4, p1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v4, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v0
.end method

.method public final fetchCEs()I
    .locals 4

    .line 290
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v0

    const-wide v2, 0x101000100L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    goto :goto_0

    .line 294
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget p0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    return p0
.end method

.method protected forbidSurrogateCodePoints()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract forwardNumCodePoints(I)V
.end method

.method public final getCE(I)J
    .locals 0

    .line 350
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

.method protected getCE32FromBuilderData(I)I
    .locals 0

    .line 457
    new-instance p0, Landroid/icu/util/ICUException;

    const-string p1, "internal program error: should be unreachable"

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCEs()[J
    .locals 0

    .line 354
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->getCEs()[J

    move-result-object p0

    return-object p0
.end method

.method public final getCEsLength()I
    .locals 0

    .line 346
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget p0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    return p0
.end method

.method protected getDataCE32(I)I
    .locals 0

    .line 453
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p0

    return p0
.end method

.method public abstract getOffset()I
.end method

.method protected handleGetTrailSurrogate()C
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected handleNextCE32()J
    .locals 2

    .line 407
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v0

    if-gez v0, :cond_0

    const-wide v0, -0xffffff40L

    return-wide v0

    .line 409
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/CollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected makeCodePointAndCE32Pair(II)J
    .locals 4

    int-to-long p0, p1

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public final nextCE()J
    .locals 11

    .line 243
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, v1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ge v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v0

    return-wide v0

    .line 248
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->incLength()V

    .line 249
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->handleNextCE32()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    long-to-int v0, v0

    and-int/lit16 v1, v0, 0xff

    const/16 v4, 0x10

    const v5, 0xff00

    const/high16 v6, -0x10000

    const/16 v7, 0xc0

    if-ge v1, v7, :cond_1

    .line 256
    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    and-int p0, v0, v6

    int-to-long v8, p0

    shl-long/2addr v8, v2

    and-int p0, v0, v5

    int-to-long v5, p0

    shl-long v4, v5, v4

    or-long/2addr v4, v8

    shl-int/lit8 p0, v1, 0x8

    int-to-long v0, p0

    or-long/2addr v0, v4

    invoke-virtual {v3, v7, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    if-ne v1, v7, :cond_4

    if-gez v3, :cond_2

    .line 264
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    const-wide v2, 0x101000100L

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v0

    return-wide v0

    .line 266
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 267
    invoke-virtual {v0, v3}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    and-int/lit16 v8, v1, 0xff

    if-ge v8, v7, :cond_3

    .line 271
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v3, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    and-int p0, v1, v6

    int-to-long v6, p0

    shl-long/2addr v6, v2

    and-int p0, v1, v5

    int-to-long v1, p0

    shl-long/2addr v1, v4

    or-long/2addr v1, v6

    shl-int/lit8 p0, v8, 0x8

    int-to-long v4, p0

    or-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v0

    return-wide v0

    :cond_3
    move v4, v1

    move v1, v8

    goto :goto_0

    .line 275
    :cond_4
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    move-object v10, v4

    move v4, v0

    move-object v0, v10

    :goto_0
    const/16 v5, 0xc1

    if-ne v1, v5, :cond_5

    .line 279
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v3, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    sub-int/2addr v4, v1

    int-to-long v4, v4

    shl-long v1, v4, v2

    const-wide/32 v4, 0x5000500

    or-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v0

    return-wide v0

    .line 282
    :cond_5
    invoke-direct {p0, v0, v3, v4}, Landroid/icu/impl/coll/CollationIterator;->nextCEFromCE32(Landroid/icu/impl/coll/CollationData;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract nextCodePoint()I
.end method

.method public final previousCE(Landroid/icu/impl/coll/UVector32;)J
    .locals 7

    .line 309
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 311
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget p1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide p0

    return-wide p0

    .line 313
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/coll/UVector32;->removeAllElements()V

    .line 314
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v0

    .line 315
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result v2

    if-gez v2, :cond_1

    const-wide p0, 0x101000100L

    return-wide p0

    .line 317
    :cond_1
    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-boolean v4, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    invoke-virtual {v3, v2, v4}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    invoke-direct {p0, v2, p1}, Landroid/icu/impl/coll/CollationIterator;->previousCEUnsafe(ILandroid/icu/impl/coll/UVector32;)J

    move-result-wide p0

    return-wide p0

    .line 322
    :cond_2
    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v3

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_3

    .line 325
    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 326
    invoke-virtual {v3, v2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v4

    move v6, v4

    move-object v4, v3

    move v3, v6

    goto :goto_0

    .line 328
    :cond_3
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    .line 330
    :goto_0
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->isSimpleOrLongCE32(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 331
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide p0

    return-wide p0

    :cond_4
    const/4 v5, 0x0

    .line 333
    invoke-virtual {p0, v4, v2, v3, v5}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    .line 334
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v2, v2, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-le v2, v1, :cond_5

    .line 335
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 338
    :goto_1
    invoke-virtual {p1}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v2

    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v3, v3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-gt v2, v3, :cond_5

    .line 339
    invoke-virtual {p1, v0}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    goto :goto_1

    .line 342
    :cond_5
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget p1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public abstract previousCodePoint()I
.end method

.method protected final reset()V
    .locals 2

    .line 378
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    const/4 v1, 0x0

    iput v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    .line 379
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->clear()V

    :cond_0
    return-void
.end method

.method protected final reset(Z)V
    .locals 1

    .line 389
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    .line 392
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->reset()V

    .line 393
    iput-boolean p1, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    return-void
.end method

.method public abstract resetToOffset(I)V
.end method

.method final setCurrentCE(J)V
    .locals 1

    .line 302
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget p0, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    return-void
.end method
