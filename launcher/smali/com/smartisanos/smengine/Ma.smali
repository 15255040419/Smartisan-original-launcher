.class public Lcom/smartisanos/smengine/Ma;
.super Ljava/lang/Object;
.source "World.java"


# instance fields
.field private eU:F

.field private fU:F

.field private gU:F

.field private hU:F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/Ma;->j(FFFF)V

    return-void
.end method

.method private a(Landroid/graphics/Path;)V
    .locals 8

    const v0, 0x3b03126f    # 0.002f

    .line 1
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object p1

    .line 2
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    .line 3
    aget v2, p1, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    const/4 v2, 0x2

    aget v4, p1, v2

    cmpl-float v4, v4, v3

    if-nez v4, :cond_4

    array-length v4, p1

    sub-int/2addr v4, v2

    aget v2, p1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    array-length v2, p1

    sub-int/2addr v2, v1

    aget v1, p1, v2

    cmpl-float v1, v1, v4

    if-nez v1, :cond_4

    .line 4
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/smartisanos/smengine/Ma;->mX:[F

    .line 5
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/smartisanos/smengine/Ma;->mY:[F

    const/4 v1, 0x0

    move v2, v1

    move v4, v3

    :goto_0
    if-ge v1, v0, :cond_3

    add-int/lit8 v5, v2, 0x1

    .line 6
    aget v2, p1, v2

    add-int/lit8 v6, v5, 0x1

    .line 7
    aget v5, p1, v5

    add-int/lit8 v7, v6, 0x1

    .line 8
    aget v6, p1, v6

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    cmpl-float v3, v5, v4

    if-nez v3, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path cannot have discontinuity in the X axis."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    cmpg-float v3, v5, v4

    if-ltz v3, :cond_2

    .line 10
    iget-object v3, p0, Lcom/smartisanos/smengine/Ma;->mX:[F

    aput v5, v3, v1

    .line 11
    iget-object v3, p0, Lcom/smartisanos/smengine/Ma;->mY:[F

    aput v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v4, v5

    move v2, v7

    goto :goto_0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path cannot loop back on itself."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private j(FFFF)V
    .locals 10

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Ma;->eU:F

    .line 2
    iput p3, p0, Lcom/smartisanos/smengine/Ma;->gU:F

    .line 3
    iput p2, p0, Lcom/smartisanos/smengine/Ma;->fU:F

    .line 4
    iput p4, p0, Lcom/smartisanos/smengine/Ma;->hU:F

    .line 5
    sget-boolean v0, Lcom/smartisanos/smengine/Ra;->dV:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", x2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MyPathInterpolator"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 9
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 10
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Ma;->a(Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 1
    iget-object v2, p0, Lcom/smartisanos/smengine/Ma;->mX:[F

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    sub-int v4, v2, v1

    if-le v4, v3, :cond_3

    add-int v4, v1, v2

    .line 2
    div-int/lit8 v4, v4, 0x2

    .line 3
    iget-object v5, p0, Lcom/smartisanos/smengine/Ma;->mX:[F

    aget v5, v5, v4

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0

    .line 4
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/smengine/Ma;->mX:[F

    aget v4, v3, v2

    aget v5, v3, v1

    sub-float/2addr v4, v5

    cmpl-float v0, v4, v0

    if-nez v0, :cond_4

    .line 5
    iget-object p0, p0, Lcom/smartisanos/smengine/Ma;->mY:[F

    aget p0, p0, v1

    return p0

    .line 6
    :cond_4
    aget v0, v3, v1

    sub-float/2addr p1, v0

    div-float/2addr p1, v4

    .line 7
    iget-object p0, p0, Lcom/smartisanos/smengine/Ma;->mY:[F

    aget v0, p0, v1

    .line 8
    aget p0, p0, v2

    sub-float/2addr p0, v0

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    return v0
.end method
