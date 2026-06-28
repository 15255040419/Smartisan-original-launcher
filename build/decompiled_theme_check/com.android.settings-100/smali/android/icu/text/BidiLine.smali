.class final Landroid/icu/text/BidiLine;
.super Ljava/lang/Object;
.source "BidiLine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLevelAt(Landroid/icu/text/Bidi;I)B
    .locals 2

    .line 243
    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object p0, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte p0, p0, p1

    return p0

    .line 244
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result p0

    return p0
.end method

.method static getLevels(Landroid/icu/text/Bidi;)[B
    .locals 4

    .line 252
    iget v0, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 253
    iget v1, p0, Landroid/icu/text/Bidi;->length:I

    if-eq v0, v1, :cond_0

    .line 266
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    iget-byte v3, p0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 269
    iput v1, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 271
    :cond_0
    iget-object v0, p0, Landroid/icu/text/Bidi;->levels:[B

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 272
    new-array v0, v1, [B

    .line 273
    iget-object p0, p0, Landroid/icu/text/Bidi;->levels:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0

    .line 276
    :cond_1
    iget-object p0, p0, Landroid/icu/text/Bidi;->levels:[B

    return-object p0
.end method

.method static getLogicalIndex(Landroid/icu/text/Bidi;I)I
    .locals 12

    .line 916
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 917
    iget v1, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 918
    iget-object v2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v2, v2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    const/4 v3, 0x0

    if-lez v2, :cond_5

    move p0, v3

    move v2, p0

    move v4, v2

    .line 924
    :goto_0
    aget-object v5, v0, p0

    iget v5, v5, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v5, v2

    .line 925
    aget-object v6, v0, p0

    iget v6, v6, Landroid/icu/text/BidiRun;->insertRemove:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, -0x1

    if-lez v7, :cond_1

    add-int v7, v2, v4

    if-gt p1, v7, :cond_0

    return v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 933
    :cond_1
    aget-object v7, v0, p0

    iget v7, v7, Landroid/icu/text/BidiRun;->limit:I

    add-int/2addr v7, v4

    if-ge p1, v7, :cond_2

    sub-int/2addr p1, v4

    goto/16 :goto_5

    :cond_2
    and-int/lit8 v6, v6, 0xa

    if-lez v6, :cond_4

    add-int v6, v2, v5

    add-int/2addr v6, v4

    if-ne p1, v6, :cond_3

    return v8

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 p0, p0, 0x1

    add-int/2addr v2, v5

    goto :goto_0

    .line 945
    :cond_5
    iget v2, p0, Landroid/icu/text/Bidi;->controlCount:I

    if-lez v2, :cond_c

    move v2, v3

    move v4, v2

    move v5, v4

    .line 953
    :goto_1
    aget-object v6, v0, v2

    iget v6, v6, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v6, v4

    .line 954
    aget-object v7, v0, v2

    iget v7, v7, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 956
    aget-object v8, v0, v2

    iget v8, v8, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v8, v5

    add-int/2addr v8, v7

    if-lt p1, v8, :cond_6

    sub-int/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v4, v6

    goto :goto_1

    :cond_6
    if-nez v7, :cond_7

    add-int/2addr p1, v5

    goto :goto_5

    .line 966
    :cond_7
    aget-object v7, v0, v2

    iget v7, v7, Landroid/icu/text/BidiRun;->start:I

    .line 967
    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v2

    add-int v8, v7, v6

    add-int/lit8 v8, v8, -0x1

    move v9, v5

    move v5, v3

    :goto_2
    if-ge v5, v6, :cond_b

    if-eqz v2, :cond_8

    add-int v10, v7, v5

    goto :goto_3

    :cond_8
    sub-int v10, v8, v5

    .line 971
    :goto_3
    iget-object v11, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v10, v11, v10

    .line 972
    invoke-static {v10}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v10

    if-eqz v10, :cond_9

    add-int/lit8 v9, v9, 0x1

    :cond_9
    add-int v10, p1, v9

    add-int v11, v4, v5

    if-ne v10, v11, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    :goto_4
    add-int/2addr p1, v9

    :cond_c
    :goto_5
    const/16 p0, 0xa

    if-gt v1, p0, :cond_e

    .line 986
    :goto_6
    aget-object p0, v0, v3

    iget p0, p0, Landroid/icu/text/BidiRun;->limit:I

    if-lt p1, p0, :cond_d

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    move p0, v3

    goto :goto_8

    :cond_e
    :goto_7
    add-int p0, v3, v1

    ushr-int/lit8 p0, p0, 0x1

    .line 994
    aget-object v2, v0, p0

    iget v2, v2, Landroid/icu/text/BidiRun;->limit:I

    if-lt p1, v2, :cond_f

    add-int/lit8 v3, p0, 0x1

    goto :goto_7

    :cond_f
    if-eqz p0, :cond_11

    add-int/lit8 v1, p0, -0x1

    .line 996
    aget-object v1, v0, v1

    iget v1, v1, Landroid/icu/text/BidiRun;->limit:I

    if-lt p1, v1, :cond_10

    goto :goto_8

    :cond_10
    move v1, p0

    goto :goto_7

    .line 1004
    :cond_11
    :goto_8
    aget-object v1, v0, p0

    iget v1, v1, Landroid/icu/text/BidiRun;->start:I

    .line 1005
    aget-object v2, v0, p0

    invoke-virtual {v2}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v2

    if-eqz v2, :cond_13

    if-lez p0, :cond_12

    add-int/lit8 p0, p0, -0x1

    .line 1009
    aget-object p0, v0, p0

    iget p0, p0, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr p1, p0

    :cond_12
    add-int/2addr v1, p1

    return v1

    .line 1014
    :cond_13
    aget-object p0, v0, p0

    iget p0, p0, Landroid/icu/text/BidiRun;->limit:I

    add-int/2addr v1, p0

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method static getLogicalMap(Landroid/icu/text/Bidi;)[I
    .locals 15

    .line 1021
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 1023
    iget v1, p0, Landroid/icu/text/Bidi;->length:I

    new-array v1, v1, [I

    .line 1024
    iget v2, p0, Landroid/icu/text/Bidi;->length:I

    iget v3, p0, Landroid/icu/text/Bidi;->resultLength:I

    const/4 v4, -0x1

    if-le v2, v3, :cond_0

    .line 1025
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    move v5, v3

    .line 1029
    :goto_0
    iget v6, p0, Landroid/icu/text/Bidi;->runCount:I

    if-ge v3, v6, :cond_4

    .line 1030
    aget-object v6, v0, v3

    iget v6, v6, Landroid/icu/text/BidiRun;->start:I

    .line 1031
    aget-object v7, v0, v3

    iget v7, v7, Landroid/icu/text/BidiRun;->limit:I

    .line 1032
    aget-object v8, v0, v3

    invoke-virtual {v8}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_1
    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v9, v5, 0x1

    .line 1034
    aput v5, v1, v6

    if-lt v9, v7, :cond_1

    move v5, v9

    goto :goto_2

    :cond_1
    move v6, v8

    move v5, v9

    goto :goto_1

    :cond_2
    sub-int v8, v7, v5

    add-int/2addr v6, v8

    :cond_3
    add-int/2addr v6, v4

    add-int/lit8 v8, v5, 0x1

    .line 1039
    aput v5, v1, v6

    move v5, v8

    if-lt v8, v7, :cond_3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1045
    :cond_4
    iget-object v0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-lez v0, :cond_8

    .line 1046
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 1048
    iget-object p0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move v3, v2

    move v4, v3

    :goto_3
    if-ge v2, v0, :cond_f

    .line 1052
    aget-object v5, p0, v2

    iget v5, v5, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v5, v3

    .line 1053
    aget-object v6, p0, v2

    iget v6, v6, Landroid/icu/text/BidiRun;->insertRemove:I

    and-int/lit8 v7, v6, 0x5

    if-lez v7, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    if-lez v4, :cond_6

    .line 1058
    aget-object v7, p0, v2

    iget v7, v7, Landroid/icu/text/BidiRun;->start:I

    add-int v8, v7, v5

    :goto_4
    if-ge v7, v8, :cond_6

    .line 1061
    aget v9, v1, v7

    add-int/2addr v9, v4

    aput v9, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    and-int/lit8 v6, v6, 0xa

    if-lez v6, :cond_7

    add-int/lit8 v4, v4, 0x1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v5

    goto :goto_3

    .line 1069
    :cond_8
    iget v0, p0, Landroid/icu/text/Bidi;->controlCount:I

    if-lez v0, :cond_f

    .line 1070
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 1074
    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_5
    if-ge v5, v0, :cond_f

    .line 1078
    aget-object v8, v3, v5

    iget v8, v8, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v8, v6

    .line 1079
    aget-object v9, v3, v5

    iget v9, v9, Landroid/icu/text/BidiRun;->insertRemove:I

    sub-int v10, v7, v9

    if-nez v10, :cond_9

    goto :goto_a

    .line 1084
    :cond_9
    aget-object v10, v3, v5

    iget v10, v10, Landroid/icu/text/BidiRun;->start:I

    .line 1085
    aget-object v11, v3, v5

    invoke-virtual {v11}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v11

    add-int v12, v10, v8

    if-nez v9, :cond_a

    :goto_6
    if-ge v10, v12, :cond_e

    .line 1090
    aget v9, v1, v10

    sub-int/2addr v9, v7

    aput v9, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_a
    move v9, v7

    move v7, v2

    :goto_7
    if-ge v7, v8, :cond_d

    if-eqz v11, :cond_b

    add-int v13, v10, v7

    goto :goto_8

    :cond_b
    sub-int v13, v12, v7

    add-int/lit8 v13, v13, -0x1

    .line 1096
    :goto_8
    iget-object v14, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v14, v14, v13

    .line 1097
    invoke-static {v14}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v14

    if-eqz v14, :cond_c

    add-int/lit8 v9, v9, 0x1

    .line 1099
    aput v4, v1, v13

    goto :goto_9

    .line 1102
    :cond_c
    aget v14, v1, v13

    sub-int/2addr v14, v9

    aput v14, v1, v13

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_d
    move v7, v9

    :cond_e
    :goto_a
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v8

    goto :goto_5

    :cond_f
    return-object v1
.end method

.method static getLogicalRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;
    .locals 7

    .line 284
    new-instance v0, Landroid/icu/text/BidiRun;

    invoke-direct {v0}, Landroid/icu/text/BidiRun;-><init>()V

    .line 285
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 286
    iget v1, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 288
    iget-object v2, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v4, v2

    move v2, v3

    move v5, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 291
    iget-object v4, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v4, v4, v3

    .line 292
    iget v5, v4, Landroid/icu/text/BidiRun;->start:I

    iget v6, v4, Landroid/icu/text/BidiRun;->limit:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    .line 293
    iget v2, v4, Landroid/icu/text/BidiRun;->start:I

    if-lt p1, v2, :cond_0

    if-ge p1, v5, :cond_0

    goto :goto_1

    .line 297
    :cond_0
    iget v2, v4, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 299
    :cond_1
    :goto_1
    iget p0, v4, Landroid/icu/text/BidiRun;->start:I

    iput p0, v0, Landroid/icu/text/BidiRun;->start:I

    .line 300
    iput v5, v0, Landroid/icu/text/BidiRun;->limit:I

    .line 301
    iget-byte p0, v4, Landroid/icu/text/BidiRun;->level:B

    iput-byte p0, v0, Landroid/icu/text/BidiRun;->level:B

    return-object v0
.end method

.method static getRunFromLogicalIndex(Landroid/icu/text/Bidi;I)I
    .locals 5

    .line 451
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 452
    iget p0, p0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_1

    .line 455
    aget-object v3, v0, v1

    iget v3, v3, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v3, v2

    .line 456
    aget-object v4, v0, v1

    iget v4, v4, Landroid/icu/text/BidiRun;->start:I

    if-lt p1, v4, :cond_0

    add-int/2addr v4, v3

    if-ge p1, v4, :cond_0

    return v1

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal ICU error in getRunFromLogicalIndex"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getRuns(Landroid/icu/text/Bidi;)V
    .locals 15

    .line 484
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    if-ltz v0, :cond_0

    return-void

    .line 487
    :cond_0
    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 490
    iget-byte v0, p0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-static {p0, v0}, Landroid/icu/text/BidiLine;->getSingleRun(Landroid/icu/text/Bidi;B)V

    goto/16 :goto_4

    .line 493
    :cond_1
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    .line 494
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    const/4 v4, -0x1

    .line 508
    iget v5, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    move v6, v3

    move v7, v4

    move v4, v6

    :goto_0
    if-ge v4, v5, :cond_3

    .line 513
    aget-byte v8, v1, v4

    if-eq v8, v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 515
    aget-byte v7, v1, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ne v6, v2, :cond_4

    if-ne v5, v0, :cond_4

    .line 525
    aget-byte v0, v1, v3

    invoke-static {p0, v0}, Landroid/icu/text/BidiLine;->getSingleRun(Landroid/icu/text/Bidi;B)V

    goto/16 :goto_4

    :cond_4
    const/16 v4, 0x7e

    if-ge v5, v0, :cond_5

    add-int/lit8 v6, v6, 0x1

    .line 539
    :cond_5
    invoke-virtual {p0, v6}, Landroid/icu/text/Bidi;->getRunsMemory(I)V

    .line 540
    iget-object v7, p0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    move v9, v3

    move v10, v9

    move v8, v4

    move v4, v10

    .line 555
    :goto_1
    aget-byte v11, v1, v4

    if-ge v11, v8, :cond_6

    move v8, v11

    :cond_6
    if-le v11, v9, :cond_7

    move v9, v4

    move v12, v11

    goto :goto_2

    :cond_7
    move v12, v9

    move v9, v4

    :goto_2
    add-int/2addr v9, v2

    if-ge v9, v5, :cond_8

    .line 564
    aget-byte v13, v1, v9

    if-ne v13, v11, :cond_8

    goto :goto_2

    .line 567
    :cond_8
    new-instance v13, Landroid/icu/text/BidiRun;

    sub-int v14, v9, v4

    invoke-direct {v13, v4, v14, v11}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    aput-object v13, v7, v10

    add-int/2addr v10, v2

    if-lt v9, v5, :cond_10

    if-ge v5, v0, :cond_9

    .line 573
    new-instance v4, Landroid/icu/text/BidiRun;

    sub-int/2addr v0, v5

    iget-byte v9, p0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-direct {v4, v5, v0, v9}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    aput-object v4, v7, v10

    .line 576
    iget-byte v0, p0, Landroid/icu/text/Bidi;->paraLevel:B

    if-ge v0, v8, :cond_9

    .line 577
    iget-byte v8, p0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 582
    :cond_9
    iput-object v7, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 583
    iput v6, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 585
    invoke-static {p0, v8, v12}, Landroid/icu/text/BidiLine;->reorderLine(Landroid/icu/text/Bidi;BB)V

    move v0, v3

    move v4, v0

    :goto_3
    if-ge v0, v6, :cond_a

    .line 591
    aget-object v5, v7, v0

    aget-object v8, v7, v0

    iget v8, v8, Landroid/icu/text/BidiRun;->start:I

    aget-byte v8, v1, v8

    iput-byte v8, v5, Landroid/icu/text/BidiRun;->level:B

    .line 592
    aget-object v5, v7, v0

    iget v8, v5, Landroid/icu/text/BidiRun;->limit:I

    add-int/2addr v4, v8

    iput v4, v5, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    if-ge v10, v6, :cond_c

    .line 600
    iget-byte v0, p0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/2addr v0, v2

    if-eqz v0, :cond_b

    move v10, v3

    .line 601
    :cond_b
    aget-object v0, v7, v10

    iget-byte v1, p0, Landroid/icu/text/Bidi;->paraLevel:B

    iput-byte v1, v0, Landroid/icu/text/BidiRun;->level:B

    .line 607
    :cond_c
    :goto_4
    iget-object v0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-lez v0, :cond_d

    move v0, v3

    .line 610
    :goto_5
    iget-object v1, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v1, v1, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-ge v0, v1, :cond_d

    .line 611
    iget-object v1, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v1, v1, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    aget-object v1, v1, v0

    .line 612
    iget v4, v1, Landroid/icu/text/Bidi$Point;->pos:I

    invoke-static {p0, v4}, Landroid/icu/text/BidiLine;->getRunFromLogicalIndex(Landroid/icu/text/Bidi;I)I

    move-result v4

    .line 613
    iget-object v5, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v4, v5, v4

    iget v5, v4, Landroid/icu/text/BidiRun;->insertRemove:I

    iget v1, v1, Landroid/icu/text/Bidi$Point;->flag:I

    or-int/2addr v1, v5

    iput v1, v4, Landroid/icu/text/BidiRun;->insertRemove:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 618
    :cond_d
    iget v0, p0, Landroid/icu/text/Bidi;->controlCount:I

    if-lez v0, :cond_f

    .line 621
    :goto_6
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    if-ge v3, v0, :cond_f

    .line 622
    iget-object v0, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v0, v0, v3

    .line 623
    invoke-static {v0}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 624
    invoke-static {p0, v3}, Landroid/icu/text/BidiLine;->getRunFromLogicalIndex(Landroid/icu/text/Bidi;I)I

    move-result v0

    .line 625
    iget-object v1, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v0, v1, v0

    iget v1, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    return-void

    :cond_10
    move v4, v9

    move v9, v12

    goto/16 :goto_1
.end method

.method static getSingleRun(Landroid/icu/text/Bidi;B)V
    .locals 3

    .line 324
    iget-object v0, p0, Landroid/icu/text/Bidi;->simpleRuns:[Landroid/icu/text/BidiRun;

    iput-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/4 v0, 0x1

    .line 325
    iput v0, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 328
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    new-instance v1, Landroid/icu/text/BidiRun;

    iget p0, p0, Landroid/icu/text/Bidi;->length:I

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    aput-object v1, v0, v2

    return-void
.end method

.method static getVisualIndex(Landroid/icu/text/Bidi;I)I
    .locals 8

    .line 813
    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    .line 821
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 822
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move v4, v2

    move v5, v4

    .line 826
    :goto_0
    iget v6, p0, Landroid/icu/text/Bidi;->runCount:I

    if-ge v4, v6, :cond_2

    .line 827
    aget-object v6, v0, v4

    iget v6, v6, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v6, v5

    .line 828
    aget-object v7, v0, v4

    iget v7, v7, Landroid/icu/text/BidiRun;->start:I

    sub-int v7, p1, v7

    if-ltz v7, :cond_1

    if-ge v7, v6, :cond_1

    .line 830
    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr v5, v7

    goto :goto_1

    :cond_0
    add-int/2addr v5, v6

    sub-int/2addr v5, v7

    sub-int/2addr v5, v3

    goto :goto_1

    :cond_1
    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v5, v1

    .line 841
    :goto_1
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    if-lt v4, v0, :cond_3

    return v1

    :cond_3
    move v0, v5

    goto :goto_2

    .line 818
    :cond_4
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v3

    goto :goto_2

    :cond_5
    move v0, p1

    .line 846
    :goto_2
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v3, v3, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-lez v3, :cond_9

    .line 848
    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move p0, v2

    .line 852
    :goto_3
    aget-object p1, v3, v2

    iget p1, p1, Landroid/icu/text/BidiRun;->limit:I

    .line 853
    aget-object p1, v3, v2

    iget p1, p1, Landroid/icu/text/BidiRun;->insertRemove:I

    and-int/lit8 v1, p1, 0x5

    if-lez v1, :cond_6

    add-int/lit8 p0, p0, 0x1

    .line 858
    :cond_6
    aget-object v1, v3, v2

    iget v1, v1, Landroid/icu/text/BidiRun;->limit:I

    if-ge v0, v1, :cond_7

    add-int/2addr v0, p0

    return v0

    :cond_7
    and-int/lit8 p1, p1, 0xa

    if-lez p1, :cond_8

    add-int/lit8 p0, p0, 0x1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 866
    :cond_9
    iget v3, p0, Landroid/icu/text/Bidi;->controlCount:I

    if-lez v3, :cond_10

    .line 868
    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 871
    iget-object v4, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v4, v4, p1

    .line 873
    invoke-static {v4}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v4

    if-eqz v4, :cond_a

    return v1

    :cond_a
    move v1, v2

    move v4, v1

    .line 878
    :goto_4
    aget-object v5, v3, v2

    iget v5, v5, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v5, v1

    .line 879
    aget-object v6, v3, v2

    iget v6, v6, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 881
    aget-object v7, v3, v2

    iget v7, v7, Landroid/icu/text/BidiRun;->limit:I

    if-lt v0, v7, :cond_b

    sub-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v5

    goto :goto_4

    :cond_b
    if-nez v6, :cond_c

    sub-int/2addr v0, v4

    return v0

    .line 889
    :cond_c
    aget-object v1, v3, v2

    invoke-virtual {v1}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 891
    aget-object v1, v3, v2

    iget v1, v1, Landroid/icu/text/BidiRun;->start:I

    goto :goto_5

    :cond_d
    add-int/lit8 v1, p1, 0x1

    .line 896
    aget-object p1, v3, v2

    iget p1, p1, Landroid/icu/text/BidiRun;->start:I

    add-int/2addr p1, v5

    :goto_5
    if-ge v1, p1, :cond_f

    .line 899
    iget-object v2, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v2, v2, v1

    .line 900
    invoke-static {v2}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v4, v4, 0x1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    sub-int/2addr v0, v4

    :cond_10
    return v0
.end method

.method static getVisualMap(Landroid/icu/text/Bidi;)[I
    .locals 15

    .line 1112
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 1114
    iget v1, p0, Landroid/icu/text/Bidi;->length:I

    iget v2, p0, Landroid/icu/text/Bidi;->resultLength:I

    if-le v1, v2, :cond_0

    iget v1, p0, Landroid/icu/text/Bidi;->length:I

    goto :goto_0

    .line 1115
    :cond_0
    iget v1, p0, Landroid/icu/text/Bidi;->resultLength:I

    .line 1116
    :goto_0
    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 1120
    :goto_1
    iget v7, p0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v8, -0x1

    if-ge v4, v7, :cond_4

    .line 1121
    aget-object v7, v0, v4

    iget v7, v7, Landroid/icu/text/BidiRun;->start:I

    .line 1122
    aget-object v9, v0, v4

    iget v9, v9, Landroid/icu/text/BidiRun;->limit:I

    .line 1123
    aget-object v10, v0, v4

    invoke-virtual {v10}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v10

    if-eqz v10, :cond_2

    :goto_2
    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v10, v7, 0x1

    .line 1125
    aput v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    if-lt v5, v9, :cond_1

    goto :goto_3

    :cond_1
    move v7, v10

    goto :goto_2

    :cond_2
    sub-int v10, v9, v5

    add-int/2addr v7, v10

    :cond_3
    add-int/lit8 v10, v6, 0x1

    add-int/2addr v7, v8

    .line 1130
    aput v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v10

    if-lt v5, v9, :cond_3

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1136
    :cond_4
    iget-object v0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-lez v0, :cond_c

    .line 1137
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 1139
    iget-object v4, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move v5, v3

    move v6, v5

    :goto_4
    if-ge v5, v0, :cond_7

    .line 1142
    aget-object v7, v4, v5

    iget v7, v7, Landroid/icu/text/BidiRun;->insertRemove:I

    and-int/lit8 v9, v7, 0x5

    if-lez v9, :cond_5

    add-int/lit8 v6, v6, 0x1

    :cond_5
    and-int/lit8 v7, v7, 0xa

    if-lez v7, :cond_6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1151
    :cond_7
    iget v5, p0, Landroid/icu/text/Bidi;->resultLength:I

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_13

    if-lez v6, :cond_13

    .line 1153
    aget-object v7, v4, v0

    iget v7, v7, Landroid/icu/text/BidiRun;->insertRemove:I

    and-int/lit8 v9, v7, 0xa

    if-lez v9, :cond_8

    add-int/lit8 v5, v5, -0x1

    .line 1155
    aput v8, v2, v5

    add-int/lit8 v6, v6, -0x1

    :cond_8
    if-lez v0, :cond_9

    add-int/lit8 v9, v0, -0x1

    .line 1158
    aget-object v9, v4, v9

    iget v9, v9, Landroid/icu/text/BidiRun;->limit:I

    goto :goto_6

    :cond_9
    move v9, v3

    .line 1159
    :goto_6
    aget-object v10, v4, v0

    iget v10, v10, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v10, v10, -0x1

    :goto_7
    if-lt v10, v9, :cond_a

    if-lez v6, :cond_a

    add-int/lit8 v5, v5, -0x1

    .line 1160
    aget v11, v2, v10

    aput v11, v2, v5

    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    :cond_a
    and-int/lit8 v7, v7, 0x5

    if-lez v7, :cond_b

    add-int/lit8 v5, v5, -0x1

    .line 1163
    aput v8, v2, v5

    add-int/lit8 v6, v6, -0x1

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1168
    :cond_c
    iget v0, p0, Landroid/icu/text/Bidi;->controlCount:I

    if-lez v0, :cond_13

    .line 1169
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 1173
    iget-object v4, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_8
    if-ge v5, v0, :cond_13

    .line 1178
    aget-object v8, v4, v5

    iget v8, v8, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v8, v6

    .line 1179
    aget-object v9, v4, v5

    iget v9, v9, Landroid/icu/text/BidiRun;->insertRemove:I

    if-nez v9, :cond_d

    if-ne v7, v6, :cond_d

    add-int/2addr v7, v8

    goto :goto_c

    :cond_d
    if-nez v9, :cond_f

    .line 1187
    aget-object v9, v4, v5

    iget v9, v9, Landroid/icu/text/BidiRun;->limit:I

    move v10, v7

    move v7, v6

    :goto_9
    if-ge v7, v9, :cond_e

    add-int/lit8 v11, v10, 0x1

    .line 1189
    aget v12, v2, v7

    aput v12, v2, v10

    add-int/lit8 v7, v7, 0x1

    move v10, v11

    goto :goto_9

    :cond_e
    move v7, v10

    goto :goto_c

    .line 1193
    :cond_f
    aget-object v9, v4, v5

    iget v9, v9, Landroid/icu/text/BidiRun;->start:I

    .line 1194
    aget-object v10, v4, v5

    invoke-virtual {v10}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v10

    add-int v11, v9, v8

    add-int/lit8 v11, v11, -0x1

    move v12, v7

    move v7, v3

    :goto_a
    if-ge v7, v8, :cond_12

    if-eqz v10, :cond_10

    add-int v13, v9, v7

    goto :goto_b

    :cond_10
    sub-int v13, v11, v7

    .line 1198
    :goto_b
    iget-object v14, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v14, v14, v13

    .line 1199
    invoke-static {v14}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v14

    if-nez v14, :cond_11

    add-int/lit8 v14, v12, 0x1

    .line 1200
    aput v13, v2, v12

    move v12, v14

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_12
    move v7, v12

    :goto_c
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v8

    goto :goto_8

    .line 1205
    :cond_13
    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    if-ne v1, v0, :cond_14

    return-object v2

    .line 1208
    :cond_14
    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    new-array v0, v0, [I

    .line 1209
    iget p0, p0, Landroid/icu/text/Bidi;->resultLength:I

    invoke-static {v2, v3, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static getVisualRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;
    .locals 3

    .line 307
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/icu/text/BidiRun;->start:I

    .line 309
    iget-object v1, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v1, v1, p1

    iget-byte v1, v1, Landroid/icu/text/BidiRun;->level:B

    if-lez p1, :cond_0

    .line 312
    iget-object v2, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/icu/text/BidiRun;->limit:I

    add-int/2addr v2, v0

    iget-object p0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    iget p0, p0, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v2, p0

    goto :goto_0

    .line 316
    :cond_0
    iget-object p0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    iget p0, p0, Landroid/icu/text/BidiRun;->limit:I

    add-int v2, v0, p0

    .line 318
    :goto_0
    new-instance p0, Landroid/icu/text/BidiRun;

    invoke-direct {p0, v0, v2, v1}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    return-object p0
.end method

.method static invertMap([I)[I
    .locals 7

    .line 1215
    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    move v5, v3

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1220
    aget v6, p0, v3

    if-le v6, v4, :cond_0

    move v4, v6

    :cond_0
    if-ltz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 1229
    new-array v3, v4, [I

    if-ge v5, v4, :cond_3

    .line 1232
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_3
    :goto_1
    if-ge v2, v0, :cond_5

    .line 1235
    aget v1, p0, v2

    if-ltz v1, :cond_4

    .line 1237
    aput v2, v3, v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v3
.end method

.method static prepareReorder([B[B[B)[I
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 636
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_2

    .line 643
    :cond_0
    array-length v1, p0

    const/16 v2, 0x7e

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    :cond_1
    :goto_0
    if-lez v1, :cond_5

    add-int/lit8 v1, v1, -0x1

    .line 644
    aget-byte v6, p0, v1

    if-gez v6, :cond_2

    return-object v0

    :cond_2
    if-le v6, v2, :cond_3

    return-object v0

    :cond_3
    if-ge v6, v4, :cond_4

    move v4, v6

    :cond_4
    if-le v6, v5, :cond_1

    move v5, v6

    goto :goto_0

    .line 658
    :cond_5
    aput-byte v4, p1, v3

    .line 659
    aput-byte v5, p2, v3

    .line 662
    array-length p1, p0

    new-array p1, p1, [I

    .line 663
    array-length p0, p0

    :goto_1
    if-lez p0, :cond_6

    add-int/lit8 p0, p0, -0x1

    .line 665
    aput p0, p1, p0

    goto :goto_1

    :cond_6
    return-object p1

    :cond_7
    :goto_2
    return-object v0
.end method

.method private static reorderLine(Landroid/icu/text/Bidi;BB)V
    .locals 8

    or-int/lit8 v0, p1, 0x1

    if-gt p2, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    .line 383
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 384
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    .line 385
    iget v2, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 388
    iget v3, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    iget v4, p0, Landroid/icu/text/Bidi;->length:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, -0x1

    int-to-byte p2, p2

    const/4 v3, 0x0

    if-lt p2, p1, :cond_7

    :goto_1
    if-ge v3, v2, :cond_2

    .line 399
    aget-object v4, v0, v3

    iget v4, v4, Landroid/icu/text/BidiRun;->start:I

    aget-byte v4, v1, v4

    if-ge v4, p2, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-lt v3, v2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v2, :cond_4

    .line 407
    aget-object v5, v0, v4

    iget v5, v5, Landroid/icu/text/BidiRun;->start:I

    aget-byte v5, v1, v5

    if-lt v5, p2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v4, -0x1

    :goto_3
    if-ge v3, v5, :cond_5

    .line 413
    aget-object v6, v0, v3

    .line 414
    aget-object v7, v0, v5

    aput-object v7, v0, v3

    .line 415
    aput-object v6, v0, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_5
    if-ne v4, v2, :cond_6

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v4, 0x1

    goto :goto_1

    :cond_7
    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_9

    .line 433
    iget p1, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    iget p0, p0, Landroid/icu/text/Bidi;->length:I

    if-ne p1, p0, :cond_8

    :goto_4
    add-int/lit8 v2, v2, -0x1

    :cond_8
    if-ge v3, v2, :cond_9

    .line 439
    aget-object p0, v0, v3

    .line 440
    aget-object p1, v0, v2

    aput-object p1, v0, v3

    .line 441
    aput-object p0, v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method static reorderLogical([B)[I
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [B

    new-array v2, v0, [B

    .line 677
    invoke-static {p0, v1, v2}, Landroid/icu/text/BidiLine;->prepareReorder([B[B[B)[I

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v4, 0x0

    .line 682
    aget-byte v1, v1, v4

    .line 683
    aget-byte v2, v2, v4

    if-ne v1, v2, :cond_1

    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_1

    return-object v3

    :cond_1
    or-int/2addr v1, v0

    int-to-byte v1, v1

    :cond_2
    move v5, v4

    .line 701
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_3

    aget-byte v6, p0, v5

    if-ge v6, v2, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 704
    :cond_3
    array-length v6, p0

    if-lt v5, v6, :cond_4

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_1
    add-int/2addr v6, v0

    .line 709
    array-length v7, p0

    if-ge v6, v7, :cond_5

    aget-byte v7, p0, v6

    if-lt v7, v2, :cond_5

    goto :goto_1

    :cond_5
    add-int v7, v5, v6

    sub-int/2addr v7, v0

    .line 726
    :cond_6
    aget v8, v3, v5

    sub-int v8, v7, v8

    aput v8, v3, v5

    add-int/2addr v5, v0

    if-lt v5, v6, :cond_6

    .line 730
    array-length v5, p0

    if-ne v6, v5, :cond_7

    :goto_2
    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    if-ge v2, v1, :cond_2

    return-object v3

    :cond_7
    add-int/lit8 v5, v6, 0x1

    goto :goto_0
.end method

.method static reorderVisual([B)[I
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [B

    new-array v2, v0, [B

    .line 747
    invoke-static {p0, v1, v2}, Landroid/icu/text/BidiLine;->prepareReorder([B[B[B)[I

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v4, 0x0

    .line 752
    aget-byte v1, v1, v4

    .line 753
    aget-byte v2, v2, v4

    if-ne v1, v2, :cond_1

    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_1

    return-object v3

    :cond_1
    or-int/2addr v1, v0

    int-to-byte v1, v1

    :cond_2
    move v5, v4

    .line 771
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_3

    aget-byte v6, p0, v5

    if-ge v6, v2, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 774
    :cond_3
    array-length v6, p0

    if-lt v5, v6, :cond_4

    goto :goto_3

    :cond_4
    move v6, v5

    :goto_1
    add-int/2addr v6, v0

    .line 779
    array-length v7, p0

    if-ge v6, v7, :cond_5

    aget-byte v7, p0, v6

    if-lt v7, v2, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v6, -0x1

    :goto_2
    if-ge v5, v7, :cond_6

    .line 789
    aget v8, v3, v5

    .line 790
    aget v9, v3, v7

    aput v9, v3, v5

    .line 791
    aput v8, v3, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 797
    :cond_6
    array-length v5, p0

    if-ne v6, v5, :cond_7

    :goto_3
    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    if-ge v2, v1, :cond_2

    return-object v3

    :cond_7
    add-int/lit8 v5, v6, 0x1

    goto :goto_0
.end method

.method static setLine(Landroid/icu/text/Bidi;II)Landroid/icu/text/Bidi;
    .locals 7

    .line 120
    new-instance v0, Landroid/icu/text/Bidi;

    invoke-direct {v0}, Landroid/icu/text/Bidi;-><init>()V

    sub-int v1, p2, p1

    .line 128
    iput v1, v0, Landroid/icu/text/Bidi;->resultLength:I

    iput v1, v0, Landroid/icu/text/Bidi;->originalLength:I

    iput v1, v0, Landroid/icu/text/Bidi;->length:I

    .line 131
    new-array v2, v1, [C

    iput-object v2, v0, Landroid/icu/text/Bidi;->text:[C

    .line 132
    iget-object v2, p0, Landroid/icu/text/Bidi;->text:[C

    iget-object v3, v0, Landroid/icu/text/Bidi;->text:[C

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    iput-byte v2, v0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 134
    iget v2, p0, Landroid/icu/text/Bidi;->paraCount:I

    iput v2, v0, Landroid/icu/text/Bidi;->paraCount:I

    new-array v2, v4, [Landroid/icu/text/BidiRun;

    .line 135
    iput-object v2, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 136
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    iput v2, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    .line 137
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    iput v2, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    .line 138
    iget v2, p0, Landroid/icu/text/Bidi;->controlCount:I

    const/4 v3, 0x1

    if-lez v2, :cond_2

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_1

    .line 141
    iget-object v5, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v5, v5, v2

    invoke-static {v5}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    iget v5, v0, Landroid/icu/text/Bidi;->controlCount:I

    add-int/2addr v5, v3

    iput v5, v0, Landroid/icu/text/Bidi;->controlCount:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_1
    iget v2, v0, Landroid/icu/text/Bidi;->resultLength:I

    iget v5, v0, Landroid/icu/text/Bidi;->controlCount:I

    sub-int/2addr v2, v5

    iput v2, v0, Landroid/icu/text/Bidi;->resultLength:I

    .line 148
    :cond_2
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->getDirPropsMemory(I)V

    .line 149
    iget-object v2, v0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    iput-object v2, v0, Landroid/icu/text/Bidi;->dirProps:[B

    .line 150
    iget-object v2, p0, Landroid/icu/text/Bidi;->dirProps:[B

    iget-object v5, v0, Landroid/icu/text/Bidi;->dirProps:[B

    invoke-static {v2, p1, v5, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->getLevelsMemory(I)V

    .line 154
    iget-object v2, v0, Landroid/icu/text/Bidi;->levelsMemory:[B

    iput-object v2, v0, Landroid/icu/text/Bidi;->levels:[B

    .line 155
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    iget-object v5, v0, Landroid/icu/text/Bidi;->levels:[B

    invoke-static {v2, p1, v5, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v2, -0x1

    .line 157
    iput v2, v0, Landroid/icu/text/Bidi;->runCount:I

    .line 159
    iget-byte v2, p0, Landroid/icu/text/Bidi;->direction:B

    const/4 v5, 0x2

    if-eq v2, v5, :cond_5

    .line 161
    iget-byte v2, p0, Landroid/icu/text/Bidi;->direction:B

    iput-byte v2, v0, Landroid/icu/text/Bidi;->direction:B

    .line 168
    iget v2, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    if-gt v2, p1, :cond_3

    .line 169
    iput v4, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_3

    .line 170
    :cond_3
    iget v2, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    if-ge v2, p2, :cond_4

    .line 171
    iget p2, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_3

    .line 173
    :cond_4
    iput v1, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_3

    .line 176
    :cond_5
    iget-object p1, v0, Landroid/icu/text/Bidi;->levels:[B

    .line 180
    invoke-static {v0}, Landroid/icu/text/BidiLine;->setTrailingWSStart(Landroid/icu/text/Bidi;)V

    .line 181
    iget p2, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    if-nez p2, :cond_6

    .line 186
    iget-byte p1, v0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/2addr p1, v3

    int-to-byte p1, p1

    iput-byte p1, v0, Landroid/icu/text/Bidi;->direction:B

    goto :goto_2

    .line 189
    :cond_6
    aget-byte v2, p1, v4

    and-int/2addr v2, v3

    int-to-byte v2, v2

    if-ge p2, v1, :cond_7

    .line 193
    iget-byte v1, v0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/2addr v1, v3

    if-eq v1, v2, :cond_7

    .line 197
    iput-byte v5, v0, Landroid/icu/text/Bidi;->direction:B

    goto :goto_2

    :cond_7
    move v1, v3

    :goto_1
    if-ne v1, p2, :cond_8

    .line 204
    iput-byte v2, v0, Landroid/icu/text/Bidi;->direction:B

    goto :goto_2

    .line 206
    :cond_8
    aget-byte v6, p1, v1

    and-int/2addr v6, v3

    if-eq v6, v2, :cond_b

    .line 207
    iput-byte v5, v0, Landroid/icu/text/Bidi;->direction:B

    .line 214
    :goto_2
    iget-byte p1, v0, Landroid/icu/text/Bidi;->direction:B

    if-eqz p1, :cond_a

    if-eq p1, v3, :cond_9

    goto :goto_3

    .line 226
    :cond_9
    iget-byte p1, v0, Landroid/icu/text/Bidi;->paraLevel:B

    or-int/2addr p1, v3

    int-to-byte p1, p1

    iput-byte p1, v0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 230
    iput v4, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_3

    .line 217
    :cond_a
    iget-byte p1, v0, Landroid/icu/text/Bidi;->paraLevel:B

    add-int/2addr p1, v3

    and-int/lit8 p1, p1, -0x2

    int-to-byte p1, p1

    iput-byte p1, v0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 222
    iput v4, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 236
    :goto_3
    iput-object p0, v0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    return-object v0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static setTrailingWSStart(Landroid/icu/text/Bidi;)V
    .locals 6

    .line 88
    iget-object v0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    .line 89
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    .line 90
    iget v2, p0, Landroid/icu/text/Bidi;->length:I

    .line 91
    iget-byte v3, p0, Landroid/icu/text/Bidi;->paraLevel:B

    add-int/lit8 v4, v2, -0x1

    .line 99
    aget-byte v4, v0, v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 100
    iput v2, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    return-void

    :cond_0
    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    .line 104
    aget-byte v4, v0, v4

    .line 105
    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    sget v5, Landroid/icu/text/Bidi;->MASK_WS:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 v0, v2, -0x1

    .line 110
    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 114
    :cond_2
    iput v2, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    return-void
.end method
