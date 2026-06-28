.class public final Landroid/icu/impl/coll/TailoredSet;
.super Ljava/lang/Object;
.source "TailoredSet.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private baseData:Landroid/icu/impl/coll/CollationData;

.field private data:Landroid/icu/impl/coll/CollationData;

.field private suffix:Ljava/lang/String;

.field private tailored:Landroid/icu/text/UnicodeSet;

.field private unreversedPrefix:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    .line 51
    iput-object p1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method private add(I)V
    .locals 2

    .line 377
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 378
    iget-object p0, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 381
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 382
    iget-object p1, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 383
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    :goto_0
    return-void
.end method

.method private addContractions(ILjava/lang/CharSequence;I)V
    .locals 1

    .line 365
    new-instance v0, Landroid/icu/util/CharsTrie;

    invoke-direct {v0, p2, p3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object p2

    .line 366
    :goto_0
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 367
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object p3

    .line 368
    iget-object p3, p3, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, p3}, Landroid/icu/impl/coll/TailoredSet;->addSuffix(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V
    .locals 0

    .line 354
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/TailoredSet;->setPrefix(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {p1, p4}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p2

    .line 356
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 357
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 358
    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    invoke-direct {p0, p3, p1, p2}, Landroid/icu/impl/coll/TailoredSet;->addContractions(ILjava/lang/CharSequence;I)V

    .line 360
    :cond_0
    iget-object p1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    new-instance p2, Ljava/lang/StringBuilder;

    iget-object p4, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 361
    invoke-direct {p0}, Landroid/icu/impl/coll/TailoredSet;->resetPrefix()V

    return-void
.end method

.method private addPrefixes(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;I)V
    .locals 1

    .line 346
    new-instance v0, Landroid/icu/util/CharsTrie;

    invoke-direct {v0, p3, p4}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object p3

    .line 347
    :goto_0
    invoke-virtual {p3}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 348
    invoke-virtual {p3}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object p4

    .line 349
    iget-object v0, p4, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    iget p4, p4, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, v0, p2, p4}, Landroid/icu/impl/coll/TailoredSet;->addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addSuffix(ILjava/lang/CharSequence;)V
    .locals 2

    .line 373
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method private compare(III)V
    .locals 11

    .line 101
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isPrefixCE32(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 102
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 103
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p2}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v0

    .line 104
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isPrefixCE32(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    .line 106
    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v2, p3}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v2

    .line 107
    iget-object v3, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v6, v3, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v7, p2, 0x2

    iget-object p2, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v8, p2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v9, p3, 0x2

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/icu/impl/coll/TailoredSet;->comparePrefixes(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V

    move p3, v2

    goto :goto_0

    .line 109
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/2addr p2, v1

    invoke-direct {p0, v2, p1, v3, p2}, Landroid/icu/impl/coll/TailoredSet;->addPrefixes(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;I)V

    :goto_0
    move p2, v0

    goto :goto_1

    .line 111
    :cond_1
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isPrefixCE32(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    .line 113
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p3}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v0

    .line 114
    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/2addr p3, v1

    invoke-direct {p0, v2, p1, v3, p3}, Landroid/icu/impl/coll/TailoredSet;->addPrefixes(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;I)V

    move p3, v0

    .line 117
    :cond_2
    :goto_1
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 118
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_2

    .line 122
    :cond_3
    iget-object p2, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p2, v0}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p2

    .line 124
    :goto_2
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v3

    and-int/lit16 p3, p3, 0x100

    if-eqz p3, :cond_4

    move p3, v2

    goto :goto_3

    .line 129
    :cond_4
    iget-object p3, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p3, v3}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p3

    .line 131
    :goto_3
    iget-object v4, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v7, v4, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v8, v0, 0x2

    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v9, v0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v10, v3, 0x2

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/icu/impl/coll/TailoredSet;->compareContractions(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V

    goto :goto_4

    .line 133
    :cond_5
    iget-object v3, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v3, v0}, Landroid/icu/impl/coll/TailoredSet;->addContractions(ILjava/lang/CharSequence;I)V

    goto :goto_4

    .line 135
    :cond_6
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    .line 137
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p3}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v0

    .line 138
    iget-object v3, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/2addr p3, v1

    invoke-direct {p0, p1, v3, p3}, Landroid/icu/impl/coll/TailoredSet;->addContractions(ILjava/lang/CharSequence;I)V

    move p3, v0

    .line 142
    :cond_7
    :goto_4
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_8

    .line 143
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    goto :goto_5

    :cond_8
    move v0, v3

    .line 155
    :goto_5
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 156
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v3

    :cond_9
    const/16 v4, 0xe

    if-ne v3, v4, :cond_b

    .line 170
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isLongPrimaryCE32(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 171
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    return-void

    .line 174
    :cond_a
    iget-object v4, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v5

    aget-wide v4, v4, v5

    .line 175
    invoke-static {p1, v4, v5}, Landroid/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    move-result-wide v4

    .line 176
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->primaryFromLongPrimaryCE32(I)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_b

    .line 177
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    return-void

    :cond_b
    if-eq v0, v3, :cond_c

    .line 183
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    return-void

    :cond_c
    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v0, v3, :cond_f

    .line 188
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v0

    .line 189
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v1

    if-eq v0, v1, :cond_d

    .line 192
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    return-void

    .line 196
    :cond_d
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 197
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    :goto_6
    if-ge v4, v0, :cond_15

    .line 200
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int v2, p2, v4

    aget v1, v1, v2

    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int v3, p3, v4

    aget v2, v2, v3

    if-eq v1, v2, :cond_e

    .line 201
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    goto/16 :goto_8

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_f
    const/4 v3, 0x6

    if-ne v0, v3, :cond_12

    .line 206
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v0

    .line 207
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v1

    if-eq v0, v1, :cond_10

    .line 210
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    return-void

    .line 214
    :cond_10
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 215
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    :goto_7
    if-ge v4, v0, :cond_15

    .line 218
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->ces:[J

    add-int v2, p2, v4

    aget-wide v1, v1, v2

    iget-object v3, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->ces:[J

    add-int v5, p3, v4

    aget-wide v5, v3, v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_11

    .line 219
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    goto :goto_8

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_12
    const/16 v3, 0xc

    if-ne v0, v3, :cond_14

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    invoke-static {p1, p2}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    move-result p3

    .line 226
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    if-ne p3, v0, :cond_15

    iget-object p3, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    .line 227
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    invoke-virtual {p3, p2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 228
    :cond_13
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    goto :goto_8

    :cond_14
    if-eq p2, p3, :cond_15

    .line 231
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    :cond_15
    :goto_8
    return-void
.end method

.method private compareContractions(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V
    .locals 6

    .line 293
    new-instance v0, Landroid/icu/util/CharsTrie;

    invoke-direct {v0, p2, p3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object p2

    .line 294
    new-instance p3, Landroid/icu/util/CharsTrie;

    invoke-direct {p3, p4, p5}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {p3}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object p3

    const/4 p4, 0x0

    :goto_0
    move-object p5, p4

    move-object v0, p5

    move-object v1, v0

    move-object v2, v1

    :goto_1
    const-string/jumbo v3, "\uffff\uffff"

    if-nez p5, :cond_1

    .line 304
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 305
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object p5

    .line 306
    iget-object v1, p5, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v1, p5

    move-object p5, v5

    goto :goto_2

    :cond_0
    move-object v1, p4

    move-object p5, v3

    :cond_1
    :goto_2
    if-nez v0, :cond_3

    .line 313
    invoke-virtual {p3}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p3}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v0

    .line 315
    iget-object v2, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_3

    :cond_2
    move-object v2, p4

    move-object v0, v3

    .line 321
    :cond_3
    :goto_3
    invoke-static {p5, v3}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0, v3}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    .line 324
    :cond_4
    invoke-virtual {p5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5

    .line 327
    invoke-direct {p0, p1, p5}, Landroid/icu/impl/coll/TailoredSet;->addSuffix(ILjava/lang/CharSequence;)V

    move-object p5, p4

    move-object v1, p5

    goto :goto_1

    :cond_5
    if-lez v3, :cond_6

    .line 332
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/coll/TailoredSet;->addSuffix(ILjava/lang/CharSequence;)V

    move-object v0, p4

    move-object v2, v0

    goto :goto_1

    .line 336
    :cond_6
    iput-object p5, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    .line 337
    iget p5, v1, Landroid/icu/util/CharsTrie$Entry;->value:I

    iget v0, v2, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, p5, v0}, Landroid/icu/impl/coll/TailoredSet;->compare(III)V

    .line 338
    iput-object p4, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    goto :goto_0
.end method

.method private comparePrefixes(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V
    .locals 6

    .line 237
    new-instance v0, Landroid/icu/util/CharsTrie;

    invoke-direct {v0, p2, p3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object p2

    .line 238
    new-instance p3, Landroid/icu/util/CharsTrie;

    invoke-direct {p3, p4, p5}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {p3}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object p3

    const/4 p4, 0x0

    :goto_0
    move-object p5, p4

    move-object v0, p5

    move-object v1, v0

    move-object v2, v1

    :goto_1
    const-string/jumbo v3, "\uffff"

    if-nez p5, :cond_1

    .line 247
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 248
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object p5

    .line 249
    iget-object v1, p5, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v1, p5

    move-object p5, v5

    goto :goto_2

    :cond_0
    move-object v1, p4

    move-object p5, v3

    :cond_1
    :goto_2
    if-nez v0, :cond_3

    .line 256
    invoke-virtual {p3}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p3}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v0

    .line 258
    iget-object v2, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_3

    :cond_2
    move-object v2, p4

    move-object v0, v3

    .line 264
    :cond_3
    :goto_3
    invoke-static {p5, v3}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0, v3}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    .line 267
    :cond_4
    invoke-virtual {p5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5

    .line 271
    iget-object v3, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget v1, v1, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, v3, p5, p1, v1}, Landroid/icu/impl/coll/TailoredSet;->addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V

    move-object p5, p4

    move-object v1, p5

    goto :goto_1

    :cond_5
    if-lez v3, :cond_6

    .line 277
    iget-object v3, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget v2, v2, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, v3, v0, p1, v2}, Landroid/icu/impl/coll/TailoredSet;->addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V

    move-object v0, p4

    move-object v2, v0

    goto :goto_1

    .line 281
    :cond_6
    invoke-direct {p0, p5}, Landroid/icu/impl/coll/TailoredSet;->setPrefix(Ljava/lang/CharSequence;)V

    .line 283
    iget p5, v1, Landroid/icu/util/CharsTrie$Entry;->value:I

    iget v0, v2, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, p5, v0}, Landroid/icu/impl/coll/TailoredSet;->compare(III)V

    .line 284
    invoke-direct {p0}, Landroid/icu/impl/coll/TailoredSet;->resetPrefix()V

    goto :goto_0
.end method

.method private enumTailoredRange(IIILandroid/icu/impl/coll/TailoredSet;)V
    .locals 0

    const/16 p0, 0xc0

    if-ne p3, p0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-direct {p4, p1, p2, p3}, Landroid/icu/impl/coll/TailoredSet;->handleCE32(III)V

    return-void
.end method

.method private handleCE32(III)V
    .locals 2

    .line 78
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p3}, Landroid/icu/impl/coll/CollationData;->getIndirectCE32(I)I

    move-result p3

    const/16 v0, 0xc0

    if-ne p3, v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v0

    .line 89
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isSelfContainedCE32(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->isSelfContainedCE32(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p3, v0, :cond_2

    .line 92
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 95
    :cond_1
    invoke-direct {p0, p1, p3, v0}, Landroid/icu/impl/coll/TailoredSet;->compare(III)V

    :cond_2
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-le p1, p2, :cond_0

    return-void
.end method

.method private resetPrefix()V
    .locals 1

    .line 396
    iget-object p0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private setPrefix(Ljava/lang/CharSequence;)V
    .locals 2

    .line 391
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 392
    iget-object p0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public forData(Landroid/icu/impl/coll/CollationData;)V
    .locals 3

    .line 55
    iput-object p1, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    .line 56
    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    iput-object p1, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    .line 59
    iget-object p1, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {p1}, Landroid/icu/impl/Trie2_32;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 61
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v1, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_0

    .line 62
    iget v1, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v2, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v0, v0, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v1, v2, v0, p0}, Landroid/icu/impl/coll/TailoredSet;->enumTailoredRange(IIILandroid/icu/impl/coll/TailoredSet;)V

    goto :goto_0

    :cond_0
    return-void
.end method
