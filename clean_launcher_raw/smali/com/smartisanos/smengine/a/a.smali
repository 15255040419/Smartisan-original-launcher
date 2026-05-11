.class public final Lcom/smartisanos/smengine/a/a;
.super Ljava/lang/Object;
.source "FastMath.java"


# static fields
.field public static final jV:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/smartisanos/smengine/a/a;->jV:Ljava/util/Random;

    return-void
.end method

.method public static I(II)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/a/a;->xt()F

    move-result v0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public static Z(F)F
    .locals 4

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public static abs(F)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    neg-float p0, p0

    :cond_0
    return p0
.end method

.method public static atan2(FF)F
    .locals 2

    float-to-double v0, p0

    float-to-double p0, p1

    .line 1
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static cos(F)F
    .locals 2

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static e(FFF)F
    .locals 2

    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    return p1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_2

    return p2

    :cond_2
    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float/2addr p0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static sin(F)F
    .locals 2

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static sqrt(F)F
    .locals 2

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static tan(F)F
    .locals 2

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static x(FF)F
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/a/a;->xt()F

    move-result v0

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static xt()F
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/a/a;->jV:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method
