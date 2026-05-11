.class public Laurelienribon/tweenengine/b/a;
.super Ljava/lang/Object;
.source "CatmullRom.java"

# interfaces
.implements Laurelienribon/tweenengine/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(FFFFF)F
    .locals 4

    sub-float p0, p3, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    sub-float/2addr p4, p2

    mul-float/2addr p4, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p1, p5

    mul-float/2addr p1, p5

    mul-float v0, p1, p5

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, p5

    mul-float/2addr v1, p5

    sub-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    const/high16 v2, -0x40000000    # -2.0f

    mul-float/2addr v2, p5

    mul-float/2addr v2, p5

    mul-float/2addr v2, p5

    add-float/2addr v2, v1

    mul-float v1, p5, p5

    mul-float v3, v1, p5

    sub-float p1, v3, p1

    add-float/2addr p1, p5

    sub-float/2addr v3, v1

    mul-float/2addr p2, v0

    mul-float/2addr p3, v2

    add-float/2addr p2, p3

    mul-float/2addr p0, p1

    add-float/2addr p2, p0

    mul-float/2addr p4, v3

    add-float/2addr p2, p4

    return p2
.end method


# virtual methods
.method public a(F[FI)F
    .locals 11

    add-int/lit8 v0, p3, -0x1

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-double v2, v1

    .line 1
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v3, p3, -0x2

    .line 3
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float v4, p1

    sub-float v10, v1, v4

    const/4 v1, 0x2

    if-nez p1, :cond_0

    .line 4
    aget v6, p2, v2

    aget v7, p2, v2

    const/4 p1, 0x1

    aget v8, p2, p1

    aget v9, p2, v1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Laurelienribon/tweenengine/b/a;->a(FFFFF)F

    move-result p0

    return p0

    :cond_0
    if-ne p1, v3, :cond_1

    add-int/lit8 p3, p3, -0x3

    .line 5
    aget v6, p2, p3

    aget v7, p2, v3

    aget v8, p2, v0

    aget v9, p2, v0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Laurelienribon/tweenengine/b/a;->a(FFFFF)F

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p3, p1, -0x1

    .line 6
    aget v6, p2, p3

    aget v7, p2, p1

    add-int/lit8 p3, p1, 0x1

    aget v8, p2, p3

    add-int/2addr p1, v1

    aget v9, p2, p1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Laurelienribon/tweenengine/b/a;->a(FFFFF)F

    move-result p0

    return p0
.end method
