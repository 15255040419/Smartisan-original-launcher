.class public Landroid/icu/impl/PropsVectors;
.super Ljava/lang/Object;
.source "PropsVectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/PropsVectors$CompactHandler;,
        Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;,
        Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;
    }
.end annotation


# static fields
.field public static final ERROR_VALUE_CP:I = 0x110001

.field public static final FIRST_SPECIAL_CP:I = 0x110000

.field public static final INITIAL_ROWS:I = 0x1000

.field public static final INITIAL_VALUE_CP:I = 0x110000

.field public static final MAX_CP:I = 0x110001

.field public static final MAX_ROWS:I = 0x110002

.field public static final MEDIUM_ROWS:I = 0x10000


# instance fields
.field private columns:I

.field private isCompacted:Z

.field private maxRows:I

.field private prevRow:I

.field private rows:I

.field private v:[I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x2

    .line 151
    iput p1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    .line 152
    iget p1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/lit16 v1, p1, 0x1000

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/icu/impl/PropsVectors;->v:[I

    const/16 v1, 0x1000

    .line 153
    iput v1, p0, Landroid/icu/impl/PropsVectors;->maxRows:I

    const/4 v1, 0x3

    .line 154
    iput v1, p0, Landroid/icu/impl/PropsVectors;->rows:I

    const/4 v1, 0x0

    .line 155
    iput v1, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    .line 156
    iput-boolean v1, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    .line 157
    iget-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aput v1, v2, v1

    const/high16 v1, 0x110000

    .line 158
    aput v1, v2, v0

    :goto_0
    const v0, 0x110001

    if-gt v1, v0, :cond_0

    .line 161
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aput v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 162
    aput v1, v0, v2

    .line 163
    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return-void

    .line 148
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numOfColumns need to be no less than 1; but it is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Landroid/icu/impl/PropsVectors;)I
    .locals 0

    .line 40
    iget p0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    return p0
.end method

.method static synthetic access$100(Landroid/icu/impl/PropsVectors;)[I
    .locals 0

    .line 40
    iget-object p0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    return-object p0
.end method

.method private areElementsSame(I[III)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    .line 56
    iget-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int v3, p1, v1

    aget v2, v2, v3

    add-int v3, p3, v1

    aget v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private findRow(I)I
    .locals 7

    .line 73
    iget v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int v2, v0, v1

    .line 74
    iget-object v3, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget v4, v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt p1, v4, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 75
    aget v4, v3, v4

    if-ge p1, v4, :cond_0

    return v2

    :cond_0
    add-int/2addr v2, v1

    add-int/lit8 v4, v2, 0x1

    .line 80
    aget v4, v3, v4

    if-ge p1, v4, :cond_1

    add-int/2addr v0, v6

    .line 81
    iput v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    return v2

    :cond_1
    add-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x1

    .line 85
    aget v4, v3, v1

    if-ge p1, v4, :cond_2

    add-int/lit8 v0, v0, 0x2

    .line 86
    iput v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    return v2

    .line 88
    :cond_2
    aget v1, v3, v1

    sub-int v1, p1, v1

    const/16 v3, 0xa

    if-ge v1, v3, :cond_5

    add-int/lit8 v0, v0, 0x2

    .line 90
    iput v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    .line 92
    :cond_3
    iget v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    add-int/2addr v0, v6

    iput v0, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    .line 93
    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v2, v0

    .line 94
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    if-ge p1, v0, :cond_3

    return v2

    .line 99
    :cond_4
    aget v0, v3, v6

    if-ge p1, v0, :cond_5

    .line 101
    iput v5, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    return v5

    .line 108
    :cond_5
    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-ge v5, v1, :cond_8

    add-int v1, v5, v0

    .line 110
    div-int/lit8 v1, v1, 0x2

    .line 111
    iget v2, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v2, v1

    .line 112
    iget-object v3, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget v4, v3, v2

    if-ge p1, v4, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    add-int/lit8 v4, v2, 0x1

    .line 114
    aget v3, v3, v4

    if-ge p1, v3, :cond_7

    .line 115
    iput v1, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    return v2

    :cond_7
    move v5, v1

    goto :goto_0

    .line 124
    :cond_8
    iput v5, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    .line 125
    iget p0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v5, p0

    return v5
.end method


# virtual methods
.method public compact(Landroid/icu/impl/PropsVectors$CompactHandler;)V
    .locals 12

    .line 371
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    .line 378
    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v1, v1, -0x2

    .line 381
    iget v2, p0, Landroid/icu/impl/PropsVectors;->rows:I

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    move v4, v3

    .line 382
    :goto_0
    iget v5, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-ge v4, v5, :cond_1

    .line 383
    iget v5, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 386
    :cond_1
    new-instance v4, Landroid/icu/impl/PropsVectors$1;

    invoke-direct {v4, p0}, Landroid/icu/impl/PropsVectors$1;-><init>(Landroid/icu/impl/PropsVectors;)V

    invoke-static {v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    neg-int v4, v1

    move v5, v3

    move v6, v4

    .line 416
    :goto_1
    iget v7, p0, Landroid/icu/impl/PropsVectors;->rows:I

    const/high16 v8, 0x110000

    if-ge v5, v7, :cond_6

    .line 417
    iget-object v7, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget v7, v7, v9

    if-ltz v6, :cond_2

    .line 421
    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v11, v5, -0x1

    aget-object v11, v2, v11

    .line 422
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    .line 421
    invoke-direct {p0, v9, v10, v11, v1}, Landroid/icu/impl/PropsVectors;->areElementsSame(I[III)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    add-int/2addr v6, v1

    :cond_3
    if-ne v7, v8, :cond_4

    .line 427
    invoke-interface {p1, v6}, Landroid/icu/impl/PropsVectors$CompactHandler;->setRowIndexForInitialValue(I)V

    goto :goto_2

    :cond_4
    const v8, 0x110001

    if-ne v7, v8, :cond_5

    .line 429
    invoke-interface {p1, v6}, Landroid/icu/impl/PropsVectors$CompactHandler;->setRowIndexForErrorValue(I)V

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v6, v1

    .line 439
    invoke-interface {p1, v6}, Landroid/icu/impl/PropsVectors$CompactHandler;->startRealValues(I)V

    .line 448
    new-array v5, v6, [I

    .line 450
    :goto_3
    iget v6, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-ge v3, v6, :cond_a

    .line 451
    iget-object v6, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v6, v6, v7

    .line 452
    iget-object v7, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget-object v9, v2, v3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v0

    aget v7, v7, v9

    if-ltz v4, :cond_7

    .line 456
    aget-object v9, v2, v3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    invoke-direct {p0, v9, v5, v4, v1}, Landroid/icu/impl/PropsVectors;->areElementsSame(I[III)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    add-int/2addr v4, v1

    .line 459
    iget-object v9, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget-object v10, v2, v3

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    if-ge v6, v8, :cond_9

    sub-int/2addr v7, v0

    .line 464
    invoke-interface {p1, v6, v7, v4}, Landroid/icu/impl/PropsVectors$CompactHandler;->setRowIndexForRange(III)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 467
    :cond_a
    iput-object v5, p0, Landroid/icu/impl/PropsVectors;->v:[I

    .line 471
    div-int/2addr v4, v1

    add-int/2addr v4, v0

    iput v4, p0, Landroid/icu/impl/PropsVectors;->rows:I

    return-void
.end method

.method public compactToTrieWithRowIndexes()Landroid/icu/impl/IntTrie;
    .locals 3

    .line 518
    new-instance v0, Landroid/icu/impl/PVecToTrieCompactHandler;

    invoke-direct {v0}, Landroid/icu/impl/PVecToTrieCompactHandler;-><init>()V

    .line 519
    invoke-virtual {p0, v0}, Landroid/icu/impl/PropsVectors;->compact(Landroid/icu/impl/PropsVectors$CompactHandler;)V

    .line 520
    iget-object p0, v0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    new-instance v1, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;

    iget-object v0, v0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    invoke-direct {v1, v0}, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;-><init>(Landroid/icu/impl/IntTrieBuilder;)V

    new-instance v0, Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;-><init>(Landroid/icu/impl/PropsVectors$1;)V

    invoke-virtual {p0, v1, v0}, Landroid/icu/impl/IntTrieBuilder;->serialize(Landroid/icu/impl/TrieBuilder$DataManipulate;Landroid/icu/impl/Trie$DataManipulate;)Landroid/icu/impl/IntTrie;

    move-result-object p0

    return-object p0
.end method

.method public getCompactedArray()[I
    .locals 1

    .line 480
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_0

    .line 484
    iget-object p0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    return-object p0

    .line 481
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal Invocation of the method before compact()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompactedColumns()I
    .locals 1

    .line 506
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_0

    .line 510
    iget p0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 p0, p0, -0x2

    return p0

    .line 507
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal Invocation of the method before compact()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompactedRows()I
    .locals 1

    .line 493
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_0

    .line 497
    iget p0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    return p0

    .line 494
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal Invocation of the method before compact()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRow(I)[I
    .locals 3

    .line 301
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    .line 305
    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-gt p1, v0, :cond_0

    .line 308
    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v1, v0, -0x2

    new-array v1, v1, [I

    .line 309
    iget-object p0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    mul-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0x2

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 306
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rowIndex out of bound!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 302
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Illegal Invocation of the method after compact()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRowEnd(I)I
    .locals 1

    .line 342
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    .line 346
    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-gt p1, v0, :cond_0

    .line 349
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    iget p0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    aget p0, v0, p1

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 347
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rowIndex out of bound!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 343
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Illegal Invocation of the method after compact()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRowStart(I)I
    .locals 1

    .line 323
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    .line 327
    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-gt p1, v0, :cond_0

    .line 330
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    iget p0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr p1, p0

    aget p0, v0, p1

    return p0

    .line 328
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rowIndex out of bound!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Illegal Invocation of the method after compact()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValue(II)I
    .locals 1

    .line 285
    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    const v0, 0x110001

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v0, v0, -0x2

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/PropsVectors;->findRow(I)I

    move-result p1

    .line 290
    iget-object p0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setValue(IIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    if-ltz v1, :cond_e

    if-gt v1, v2, :cond_e

    const v5, 0x110001

    if-gt v2, v5, :cond_e

    if-ltz v3, :cond_e

    .line 178
    iget v5, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_e

    .line 182
    iget-boolean v5, v0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v5, :cond_d

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    and-int v6, p4, v4

    .line 196
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/PropsVectors;->findRow(I)I

    move-result v7

    .line 197
    invoke-direct {v0, v2}, Landroid/icu/impl/PropsVectors;->findRow(I)I

    move-result v2

    .line 204
    iget-object v8, v0, Landroid/icu/impl/PropsVectors;->v:[I

    aget v9, v8, v7

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v1, v9, :cond_0

    add-int v9, v7, v3

    aget v8, v8, v9

    and-int/2addr v8, v4

    if-eq v6, v8, :cond_0

    move v8, v11

    goto :goto_0

    :cond_0
    move v8, v10

    .line 205
    :goto_0
    iget-object v9, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v12, v2, 0x1

    aget v12, v9, v12

    if-eq v5, v12, :cond_1

    add-int v12, v2, v3

    aget v9, v9, v12

    and-int/2addr v9, v4

    if-eq v6, v9, :cond_1

    move v9, v11

    goto :goto_1

    :cond_1
    move v9, v10

    :goto_1
    if-nez v8, :cond_3

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    move/from16 p3, v6

    goto/16 :goto_6

    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    move v11, v10

    :goto_3
    if-eqz v9, :cond_5

    add-int/lit8 v11, v11, 0x1

    .line 217
    :cond_5
    iget v12, v0, Landroid/icu/impl/PropsVectors;->rows:I

    add-int/2addr v12, v11

    iget v13, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    if-le v12, v13, :cond_8

    const v12, 0x110002

    const/high16 v14, 0x10000

    if-ge v13, v14, :cond_6

    move v12, v14

    goto :goto_4

    :cond_6
    if-ge v13, v12, :cond_7

    .line 227
    :goto_4
    iget v13, v0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int v14, v12, v13

    new-array v14, v14, [I

    .line 228
    iget-object v15, v0, Landroid/icu/impl/PropsVectors;->v:[I

    move/from16 p3, v6

    iget v6, v0, Landroid/icu/impl/PropsVectors;->rows:I

    mul-int/2addr v6, v13

    invoke-static {v15, v10, v14, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput-object v14, v0, Landroid/icu/impl/PropsVectors;->v:[I

    .line 230
    iput v12, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    goto :goto_5

    .line 223
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "MAX_ROWS exceeded! Increase it to a higher valuein the implementation"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move/from16 p3, v6

    .line 235
    :goto_5
    iget v6, v0, Landroid/icu/impl/PropsVectors;->rows:I

    iget v10, v0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v6, v10

    add-int v12, v2, v10

    sub-int/2addr v6, v12

    if-lez v6, :cond_9

    .line 237
    iget-object v12, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int v13, v2, v10

    add-int/lit8 v14, v11, 0x1

    mul-int/2addr v14, v10

    add-int/2addr v14, v2

    invoke-static {v12, v13, v12, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    :cond_9
    iget v6, v0, Landroid/icu/impl/PropsVectors;->rows:I

    add-int/2addr v6, v11

    iput v6, v0, Landroid/icu/impl/PropsVectors;->rows:I

    if-eqz v8, :cond_a

    sub-int v6, v2, v7

    .line 246
    iget v8, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v6, v8

    .line 247
    iget-object v10, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/2addr v8, v7

    invoke-static {v10, v7, v10, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iget v6, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v2, v6

    .line 251
    iget-object v8, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v10, v7, 0x1

    add-int v11, v7, v6

    aput v1, v8, v11

    aput v1, v8, v10

    add-int/2addr v7, v6

    :cond_a
    if-eqz v9, :cond_b

    .line 258
    iget-object v1, v0, Landroid/icu/impl/PropsVectors;->v:[I

    iget v6, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int v8, v2, v6

    invoke-static {v1, v2, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iget-object v1, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v6, v2, 0x1

    iget v8, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v8, v2

    aput v5, v1, v8

    aput v5, v1, v6

    .line 266
    :cond_b
    :goto_6
    iget v1, v0, Landroid/icu/impl/PropsVectors;->columns:I

    div-int v1, v2, v1

    iput v1, v0, Landroid/icu/impl/PropsVectors;->prevRow:I

    add-int/2addr v7, v3

    add-int/2addr v2, v3

    not-int v1, v4

    .line 273
    :goto_7
    iget-object v3, v0, Landroid/icu/impl/PropsVectors;->v:[I

    aget v4, v3, v7

    and-int/2addr v4, v1

    or-int v4, v4, p3

    aput v4, v3, v7

    if-ne v7, v2, :cond_c

    return-void

    .line 277
    :cond_c
    iget v3, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v7, v3

    goto :goto_7

    .line 183
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called aftercompact()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
