.class public Landroid/icu/impl/TrieIterator;
.super Ljava/lang/Object;
.source "TrieIterator.java"

# interfaces
.implements Landroid/icu/util/RangeValueIterator;


# static fields
.field private static final BMP_INDEX_LENGTH_:I = 0x800

.field private static final DATA_BLOCK_LENGTH_:I = 0x20

.field private static final LEAD_SURROGATE_MIN_VALUE_:I = 0xd800

.field private static final TRAIL_SURROGATE_COUNT_:I = 0x400

.field private static final TRAIL_SURROGATE_INDEX_BLOCK_LENGTH_:I = 0x20

.field private static final TRAIL_SURROGATE_MIN_VALUE_:I = 0xdc00


# instance fields
.field private m_currentCodepoint_:I

.field private m_initialValue_:I

.field private m_nextBlockIndex_:I

.field private m_nextBlock_:I

.field private m_nextCodepoint_:I

.field private m_nextIndex_:I

.field private m_nextTrailIndexOffset_:I

.field private m_nextValue_:I

.field private m_trie_:Landroid/icu/impl/Trie;


# direct methods
.method public constructor <init>(Landroid/icu/impl/Trie;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    .line 108
    iget-object p1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    invoke-virtual {p1}, Landroid/icu/impl/Trie;->getInitialValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/TrieIterator;->extract(I)I

    move-result p1

    iput p1, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    .line 109
    invoke-virtual {p0}, Landroid/icu/impl/TrieIterator;->reset()V

    return-void

    .line 103
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument trie cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final calculateNextBMPElement(Landroid/icu/util/RangeValueIterator$Element;)Z
    .locals 5

    .line 204
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 205
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 206
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    .line 207
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 208
    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkBlockDetail(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    return v2

    .line 215
    :cond_0
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    const/high16 v3, 0x10000

    const/4 v4, 0x0

    if-ge v1, v3, :cond_3

    const v3, 0xd800

    if-ne v1, v3, :cond_1

    const/16 v1, 0x800

    .line 222
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    goto :goto_0

    :cond_1
    const v3, 0xdc00

    if-ne v1, v3, :cond_2

    shr-int/lit8 v1, v1, 0x5

    .line 226
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    goto :goto_0

    .line 228
    :cond_2
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    .line 231
    :goto_0
    iput v4, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 232
    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkBlock(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    return v2

    :cond_3
    sub-int/2addr v1, v2

    .line 238
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    .line 239
    iget p1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    sub-int/2addr p1, v2

    iput p1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    return v4
.end method

.method private final calculateNextSupplementaryElement(Landroid/icu/util/RangeValueIterator$Element;)V
    .locals 8

    .line 262
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 263
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    .line 264
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 266
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-static {v1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v1

    const v2, 0xdc00

    if-eq v1, v2, :cond_1

    .line 270
    invoke-direct {p0}, Landroid/icu/impl/TrieIterator;->checkNullNextTrailIndex()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkBlockDetail(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    .line 273
    iget p1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput p1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    return-void

    .line 277
    :cond_0
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    .line 278
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    .line 279
    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkTrailBlock(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    .line 282
    iget p1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput p1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    return-void

    .line 286
    :cond_1
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-static {v1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v1

    :goto_0
    if-ge v1, v2, :cond_8

    .line 290
    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v3, v3, Landroid/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v4, v1, 0x5

    aget-char v3, v3, v4

    shl-int/lit8 v3, v3, 0x2

    .line 293
    iget-object v4, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v4, v4, Landroid/icu/impl/Trie;->m_dataOffset_:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    .line 295
    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    if-eq v0, v4, :cond_2

    .line 296
    iput v4, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 297
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    .line 298
    iput v5, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 299
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    .line 301
    iget p1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput p1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x20

    int-to-char v3, v1

    .line 311
    invoke-static {v3, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    goto :goto_0

    .line 314
    :cond_3
    iget-object v4, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v4, v4, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-eqz v4, :cond_7

    .line 319
    iget-object v4, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v4, v4, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    iget-object v6, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    and-int/lit8 v7, v1, 0x1f

    add-int/2addr v3, v7

    .line 320
    invoke-virtual {v6, v3}, Landroid/icu/impl/Trie;->getValue(I)I

    move-result v3

    .line 319
    invoke-interface {v4, v3}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v3

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    .line 322
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    if-gtz v3, :cond_5

    .line 324
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    if-eq v0, v3, :cond_4

    .line 325
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 326
    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v1, v1, Landroid/icu/impl/Trie;->m_dataOffset_:I

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    .line 327
    iput v5, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 328
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    .line 330
    iget p1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput p1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    return-void

    .line 333
    :cond_4
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    goto :goto_1

    .line 335
    :cond_5
    iput v5, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    .line 336
    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkTrailBlock(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 337
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    .line 339
    iget p1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput p1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    return-void

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 315
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The field DataManipulate in this Trie is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 347
    :cond_8
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    const/high16 v2, 0x110000

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    return-void
.end method

.method private final checkBlock(I)Z
    .locals 4

    .line 391
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    .line 392
    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v1, v1, Landroid/icu/impl/Trie;->m_index_:[C

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    aget-char v1, v1, v2

    shl-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    .line 394
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    const/16 v2, 0x20

    if-ne v1, v0, :cond_0

    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    sub-int v1, v0, v1

    if-lt v1, v2, :cond_0

    add-int/2addr v0, v2

    .line 398
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    goto :goto_0

    .line 400
    :cond_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v1, v1, Landroid/icu/impl/Trie;->m_dataOffset_:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 402
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    if-eq p1, v0, :cond_1

    .line 403
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 404
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    return v3

    .line 407
    :cond_1
    iget p1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    goto :goto_0

    .line 410
    :cond_2
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->checkBlockDetail(I)Z

    move-result p0

    if-nez p0, :cond_3

    return v3

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final checkBlockDetail(I)Z
    .locals 4

    .line 365
    :goto_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 366
    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v3}, Landroid/icu/impl/Trie;->getValue(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/TrieIterator;->extract(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 368
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    if-eq v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 371
    :cond_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 372
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    goto :goto_0

    :cond_1
    return v2
.end method

.method private final checkNullNextTrailIndex()Z
    .locals 4

    .line 456
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    if-gtz v0, :cond_1

    .line 457
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit16 v0, v0, 0x3ff

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    .line 458
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    .line 459
    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v1, v1, Landroid/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v2, v0, 0x5

    aget-char v1, v1, v2

    shl-int/lit8 v1, v1, 0x2

    .line 462
    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v2, v2, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-eqz v2, :cond_0

    .line 466
    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v2, v2, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    and-int/lit8 v0, v0, 0x1f

    add-int/2addr v1, v0

    .line 467
    invoke-virtual {v3, v1}, Landroid/icu/impl/Trie;->getValue(I)I

    move-result v0

    .line 466
    invoke-interface {v2, v0}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    .line 469
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    const/16 v0, 0x20

    .line 470
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    return v1

    .line 463
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "The field DataManipulate in this Trie is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final checkTrailBlock(I)Z
    .locals 3

    .line 431
    :goto_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 434
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 436
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->checkBlock(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 439
    :cond_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    .line 440
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    goto :goto_0

    :cond_1
    return v2
.end method

.method private final setResult(Landroid/icu/util/RangeValueIterator$Element;III)V
    .locals 0

    .line 186
    iput p2, p1, Landroid/icu/util/RangeValueIterator$Element;->start:I

    .line 187
    iput p3, p1, Landroid/icu/util/RangeValueIterator$Element;->limit:I

    .line 188
    iput p4, p1, Landroid/icu/util/RangeValueIterator$Element;->value:I

    return-void
.end method


# virtual methods
.method protected extract(I)I
    .locals 0

    return p1
.end method

.method public final next(Landroid/icu/util/RangeValueIterator$Element;)Z
    .locals 3

    .line 127
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    const v1, 0x10ffff

    if-le v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 v1, 0x10000

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 131
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->calculateNextBMPElement(Landroid/icu/util/RangeValueIterator$Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 134
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->calculateNextSupplementaryElement(Landroid/icu/util/RangeValueIterator$Element;)V

    return v2
.end method

.method public final reset()V
    .locals 3

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    .line 145
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    .line 146
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    .line 147
    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v1, v1, Landroid/icu/impl/Trie;->m_index_:[C

    aget-char v1, v1, v0

    shl-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    .line 148
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v2, v2, Landroid/icu/impl/Trie;->m_dataOffset_:I

    if-ne v1, v2, :cond_0

    .line 149
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie;->getValue(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/icu/impl/TrieIterator;->extract(I)I

    move-result v1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 154
    :goto_0
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    const/16 v0, 0x20

    .line 155
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    return-void
.end method
