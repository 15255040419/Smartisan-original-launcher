.class public final Lcom/google/common/math/Quantiles;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/Quantiles$ScaleAndIndexes;,
        Lcom/google/common/math/Quantiles$ScaleAndIndex;,
        Lcom/google/common/math/Quantiles$Scale;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(II)V
    .locals 0

    .line 131
    invoke-static {p0, p1}, Lcom/google/common/math/Quantiles;->checkIndex(II)V

    return-void
.end method

.method static synthetic access$400([J)[D
    .locals 0

    .line 131
    invoke-static {p0}, Lcom/google/common/math/Quantiles;->longsToDoubles([J)[D

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500([I)[D
    .locals 0

    .line 131
    invoke-static {p0}, Lcom/google/common/math/Quantiles;->intsToDoubles([I)[D

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600([D)Z
    .locals 0

    .line 131
    invoke-static {p0}, Lcom/google/common/math/Quantiles;->containsNaN([D)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(I[DII)V
    .locals 0

    .line 131
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/math/Quantiles;->selectInPlace(I[DII)V

    return-void
.end method

.method static synthetic access$800(DDDD)D
    .locals 0

    .line 131
    invoke-static/range {p0 .. p7}, Lcom/google/common/math/Quantiles;->interpolate(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$900([III[DII)V
    .locals 0

    .line 131
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    return-void
.end method

.method private static checkIndex(II)V
    .locals 2

    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    return-void

    .line 473
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Quantile indexes must be between 0 and the scale, which is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static chooseNextSelection([IIIII)I
    .locals 2

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    add-int/2addr p3, p4

    ushr-int/lit8 p4, p3, 0x1

    :goto_0
    add-int/lit8 v0, p1, 0x1

    if-le p2, v0, :cond_3

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .line 662
    aget v1, p0, v0

    if-le v1, p4, :cond_1

    move p2, v0

    goto :goto_0

    .line 664
    :cond_1
    aget p1, p0, v0

    if-ge p1, p4, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    return v0

    .line 672
    :cond_3
    aget p4, p0, p1

    sub-int/2addr p3, p4

    aget p0, p0, p2

    sub-int/2addr p3, p0

    if-lez p3, :cond_4

    return p2

    :cond_4
    return p1
.end method

.method private static varargs containsNaN([D)Z
    .locals 5

    .line 442
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p0, v2

    .line 443
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static interpolate(DDDD)D
    .locals 5

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p0, v0

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-nez v2, :cond_1

    cmpl-double p0, p2, v3

    if-nez p0, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    return-wide v0

    :cond_1
    cmpl-double v0, p2, v3

    if-nez v0, :cond_2

    return-wide v3

    :cond_2
    sub-double/2addr p2, p0

    mul-double/2addr p2, p4

    div-double/2addr p2, p6

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private static intsToDoubles([I)[D
    .locals 5

    .line 488
    array-length v0, p0

    .line 489
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 491
    aget v3, p0, v2

    int-to-double v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static longsToDoubles([J)[D
    .locals 5

    .line 479
    array-length v0, p0

    .line 480
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 482
    aget-wide v3, p0, v2

    long-to-double v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static median()Lcom/google/common/math/Quantiles$ScaleAndIndex;
    .locals 2

    const/4 v0, 0x2

    .line 135
    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/math/Quantiles$Scale;->index(I)Lcom/google/common/math/Quantiles$ScaleAndIndex;

    move-result-object v0

    return-object v0
.end method

.method private static movePivotToStartOfSlice([DII)V
    .locals 9

    add-int v0, p1, p2

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    .line 588
    aget-wide v2, p0, p2

    aget-wide v4, p0, v0

    cmpg-double v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 589
    :goto_0
    aget-wide v4, p0, v0

    aget-wide v6, p0, p1

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 590
    :goto_1
    aget-wide v5, p0, p2

    aget-wide v7, p0, p1

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-ne v2, v4, :cond_3

    .line 593
    invoke-static {p0, v0, p1}, Lcom/google/common/math/Quantiles;->swap([DII)V

    goto :goto_3

    :cond_3
    if-eq v2, v1, :cond_4

    .line 596
    invoke-static {p0, p1, p2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    :cond_4
    :goto_3
    return-void
.end method

.method private static partition([DII)I
    .locals 5

    .line 556
    invoke-static {p0, p1, p2}, Lcom/google/common/math/Quantiles;->movePivotToStartOfSlice([DII)V

    .line 557
    aget-wide v0, p0, p1

    move v2, p2

    :goto_0
    if-le p2, p1, :cond_1

    .line 563
    aget-wide v3, p0, p2

    cmpl-double v3, v3, v0

    if-lez v3, :cond_0

    .line 564
    invoke-static {p0, v2, p2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 572
    :cond_1
    invoke-static {p0, p1, v2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    return v2
.end method

.method public static percentiles()Lcom/google/common/math/Quantiles$Scale;
    .locals 1

    const/16 v0, 0x64

    .line 145
    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    return-object v0
.end method

.method public static quartiles()Lcom/google/common/math/Quantiles$Scale;
    .locals 1

    const/4 v0, 0x4

    .line 140
    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    return-object v0
.end method

.method public static scale(I)Lcom/google/common/math/Quantiles$Scale;
    .locals 2

    .line 155
    new-instance v0, Lcom/google/common/math/Quantiles$Scale;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/math/Quantiles$Scale;-><init>(ILcom/google/common/math/Quantiles$1;)V

    return-object v0
.end method

.method private static selectAllInPlace([III[DII)V
    .locals 9

    .line 609
    invoke-static {p0, p1, p2, p4, p5}, Lcom/google/common/math/Quantiles;->chooseNextSelection([IIIII)I

    move-result v0

    .line 610
    aget v1, p0, v0

    .line 613
    invoke-static {v1, p3, p4, p5}, Lcom/google/common/math/Quantiles;->selectInPlace(I[DII)V

    add-int/lit8 v2, v0, -0x1

    move v5, v2

    :goto_0
    if-lt v5, p1, :cond_0

    .line 617
    aget v2, p0, v5

    if-ne v2, v1, :cond_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_0
    if-lt v5, p1, :cond_1

    add-int/lit8 v8, v1, -0x1

    move-object v3, p0

    move v4, p1

    move-object v6, p3

    move v7, p4

    .line 621
    invoke-static/range {v3 .. v8}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    :goto_1
    if-gt v3, p2, :cond_2

    .line 626
    aget p1, p0, v3

    if-ne p1, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-gt v3, p2, :cond_3

    add-int/lit8 v6, v1, 0x1

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move v7, p5

    .line 630
    invoke-static/range {v2 .. v7}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    :cond_3
    return-void
.end method

.method private static selectInPlace(I[DII)V
    .locals 5

    if-ne p0, p2, :cond_3

    add-int/lit8 p0, p2, 0x1

    move v0, p2

    :goto_0
    if-gt p0, p3, :cond_1

    .line 523
    aget-wide v1, p1, v0

    aget-wide v3, p1, p0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    move v0, p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-eq v0, p2, :cond_2

    .line 528
    invoke-static {p1, v0, p2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    if-le p3, p2, :cond_5

    .line 536
    invoke-static {p1, p2, p3}, Lcom/google/common/math/Quantiles;->partition([DII)I

    move-result v0

    if-lt v0, p0, :cond_4

    add-int/lit8 p3, v0, -0x1

    :cond_4
    if-gt v0, p0, :cond_3

    add-int/lit8 v0, v0, 0x1

    move p2, v0

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static swap([DII)V
    .locals 4

    .line 681
    aget-wide v0, p0, p1

    .line 682
    aget-wide v2, p0, p2

    aput-wide v2, p0, p1

    .line 683
    aput-wide v0, p0, p2

    return-void
.end method
