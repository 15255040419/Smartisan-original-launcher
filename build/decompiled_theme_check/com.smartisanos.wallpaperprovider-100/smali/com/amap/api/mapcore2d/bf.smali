.class Lcom/amap/api/mapcore2d/bf;
.super Ljava/lang/Object;
.source "MapProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/bf$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field c:F

.field public d:D

.field e:I

.field f:D

.field g:D

.field public h:I

.field public i:I

.field public j:F

.field public k:D

.field public l:Lcom/amap/api/mapcore2d/ab;

.field public m:Lcom/amap/api/mapcore2d/ab;

.field public n:Landroid/graphics/Point;

.field public o:Lcom/amap/api/mapcore2d/bf$a;

.field p:Lcom/amap/api/mapcore2d/bk$d;

.field private q:D

.field private r:D

.field private s:D


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/bk$d;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 18
    iput v0, p0, Lcom/amap/api/mapcore2d/bf;->a:I

    .line 19
    iput v0, p0, Lcom/amap/api/mapcore2d/bf;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Lcom/amap/api/mapcore2d/bf;->c:F

    const-wide v0, 0x405d196b11c6d1e1L    # 116.39716

    .line 24
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bf;->q:D

    const-wide v0, 0x4043f556191148feL    # 39.91669

    .line 29
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bf;->r:D

    const-wide v0, 0x41031bf8456d5cfbL    # 156543.0339

    .line 34
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bf;->d:D

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/amap/api/mapcore2d/bf;->e:I

    const-wide v0, -0x3e8ce407ba8f5c29L    # -2.003750834E7

    .line 44
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bf;->f:D

    const-wide v0, 0x41731bf84570a3d7L    # 2.003750834E7

    .line 45
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bf;->g:D

    .line 47
    sget v0, Lcom/amap/api/mapcore2d/v;->d:I

    iput v0, p0, Lcom/amap/api/mapcore2d/bf;->h:I

    .line 48
    sget v0, Lcom/amap/api/mapcore2d/v;->c:I

    iput v0, p0, Lcom/amap/api/mapcore2d/bf;->i:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 49
    iput v0, p0, Lcom/amap/api/mapcore2d/bf;->j:F

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bf;->k:D

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    .line 54
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bf;->m:Lcom/amap/api/mapcore2d/ab;

    .line 56
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    .line 57
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    .line 59
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bf;->p:Lcom/amap/api/mapcore2d/bk$d;

    const-wide v0, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 526
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bf;->s:D

    .line 62
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bf;->p:Lcom/amap/api/mapcore2d/bk$d;

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;)F
    .locals 17

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/ab;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/w;->a(J)D

    move-result-wide v0

    .line 537
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/ab;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/w;->a(J)D

    move-result-wide v2

    .line 538
    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/mapcore2d/ab;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/amap/api/mapcore2d/w;->a(J)D

    move-result-wide v4

    .line 539
    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/mapcore2d/ab;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/amap/api/mapcore2d/w;->a(J)D

    move-result-wide v6

    move-object/from16 v8, p0

    .line 541
    iget-wide v8, v8, Lcom/amap/api/mapcore2d/bf;->s:D

    mul-double/2addr v0, v8

    mul-double/2addr v2, v8

    mul-double/2addr v4, v8

    mul-double/2addr v6, v8

    .line 545
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 546
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 547
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 548
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 549
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 550
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 551
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 552
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move-wide/from16 p0, v14

    const/4 v14, 0x3

    new-array v15, v14, [D

    new-array v14, v14, [D

    mul-double/2addr v0, v2

    const/16 v16, 0x0

    aput-wide v0, v15, v16

    mul-double/2addr v2, v8

    const/4 v0, 0x1

    aput-wide v2, v15, v0

    const/4 v1, 0x2

    aput-wide v10, v15, v1

    mul-double/2addr v4, v6

    aput-wide v4, v14, v16

    mul-double/2addr v6, v12

    aput-wide v6, v14, v0

    aput-wide p0, v14, v1

    .line 561
    aget-wide v2, v15, v16

    aget-wide v4, v14, v16

    sub-double/2addr v2, v4

    aget-wide v4, v15, v16

    aget-wide v6, v14, v16

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    aget-wide v4, v15, v0

    aget-wide v6, v14, v0

    sub-double/2addr v4, v6

    aget-wide v6, v15, v0

    aget-wide v8, v14, v0

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-wide v4, v15, v1

    aget-wide v6, v14, v1

    sub-double/2addr v4, v6

    aget-wide v6, v15, v1

    aget-wide v0, v14, v1

    sub-double/2addr v6, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 565
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v2, 0x41684dae328e2ad1L    # 1.27420015798544E7

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public a(II)Landroid/graphics/PointF;
    .locals 13

    .line 301
    iget v0, p0, Lcom/amap/api/mapcore2d/bf;->a:I

    mul-int/2addr p1, v0

    int-to-double v1, p1

    iget-wide v3, p0, Lcom/amap/api/mapcore2d/bf;->k:D

    mul-double/2addr v1, v3

    iget-wide v5, p0, Lcom/amap/api/mapcore2d/bf;->f:D

    add-double v10, v1, v5

    .line 303
    iget p1, p0, Lcom/amap/api/mapcore2d/bf;->e:I

    if-nez p1, :cond_0

    .line 304
    iget-wide v1, p0, Lcom/amap/api/mapcore2d/bf;->g:D

    mul-int/2addr p2, v0

    int-to-double p1, p2

    mul-double/2addr p1, v3

    sub-double/2addr v1, p1

    move-wide v8, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    add-int/2addr p2, v1

    mul-int/2addr p2, v0

    int-to-double p1, p2

    mul-double/2addr p1, v3

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    :goto_0
    move-wide v8, p1

    .line 311
    :goto_1
    new-instance v1, Lcom/amap/api/mapcore2d/ab;

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/amap/api/mapcore2d/ab;-><init>(DDZ)V

    .line 314
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/bf;->k:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;
    .locals 1

    .line 467
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sub-int/2addr p1, p3

    .line 469
    iget p3, p0, Lcom/amap/api/mapcore2d/bf;->a:I

    mul-int/2addr p1, p3

    int-to-float p1, p1

    iget p3, p5, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, p3

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 471
    iget p1, p0, Lcom/amap/api/mapcore2d/bf;->e:I

    if-nez p1, :cond_0

    sub-int/2addr p2, p4

    .line 472
    iget p1, p0, Lcom/amap/api/mapcore2d/bf;->a:I

    mul-int/2addr p2, p1

    int-to-float p1, p2

    iget p2, p5, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 475
    iget p1, p5, Landroid/graphics/PointF;->y:F

    sub-int/2addr p2, p4

    iget p3, p0, Lcom/amap/api/mapcore2d/bf;->a:I

    mul-int/2addr p2, p3

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 480
    :cond_1
    :goto_0
    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget p2, p0, Lcom/amap/api/mapcore2d/bf;->a:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-lez p1, :cond_3

    iget p1, v0, Landroid/graphics/PointF;->x:F

    int-to-float p3, p6

    cmpl-float p1, p1, p3

    if-gez p1, :cond_3

    iget p1, v0, Landroid/graphics/PointF;->y:F

    iget p0, p0, Lcom/amap/api/mapcore2d/bf;->a:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    cmpg-float p0, p1, p2

    if-lez p0, :cond_3

    iget p0, v0, Landroid/graphics/PointF;->y:F

    int-to-float p1, p7

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method a(Lcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;D)Landroid/graphics/PointF;
    .locals 4

    .line 135
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    .line 137
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide v0

    .line 138
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide v2

    sub-double/2addr v0, v2

    div-double/2addr v0, p4

    iget v2, p3, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 141
    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-double v0, p3

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide v2

    .line 142
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide p1

    sub-double/2addr v2, p1

    div-double/2addr v2, p4

    sub-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-object p0
.end method

.method public a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/bf$a;)Lcom/amap/api/mapcore2d/ab;
    .locals 0

    .line 177
    invoke-virtual/range {p0 .. p6}, Lcom/amap/api/mapcore2d/bf;->b(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/bf$a;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bf;->b(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;
    .locals 12

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->b()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 114
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->a()I

    move-result p0

    int-to-double p0, p0

    div-double/2addr p0, v2

    const-wide v2, 0x41731bf84570a3d7L    # 2.003750834E7

    mul-double/2addr p0, v2

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double v9, p0, v4

    const-wide p0, 0x4056800000000000L    # 90.0

    add-double/2addr v0, p0

    const-wide p0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide p0, 0x4076800000000000L    # 360.0

    div-double/2addr v0, p0

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double/2addr p0, v0

    mul-double/2addr p0, v2

    div-double v7, p0, v4

    .line 120
    new-instance p0, Lcom/amap/api/mapcore2d/ab;

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/amap/api/mapcore2d/ab;-><init>(DDZ)V

    return-object p0
.end method

.method public a(Lcom/amap/api/mapcore2d/ab;III)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/mapcore2d/ab;",
            "III)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 330
    iget-wide v4, v8, Lcom/amap/api/mapcore2d/bf;->k:D

    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide v0

    iget-wide v2, v8, Lcom/amap/api/mapcore2d/bf;->f:D

    sub-double/2addr v0, v2

    iget v6, v8, Lcom/amap/api/mapcore2d/bf;->a:I

    int-to-double v9, v6

    mul-double/2addr v9, v4

    div-double/2addr v0, v9

    double-to-int v9, v0

    mul-int/2addr v6, v9

    int-to-double v0, v6

    mul-double/2addr v0, v4

    add-double v13, v0, v2

    .line 344
    iget v0, v8, Lcom/amap/api/mapcore2d/bf;->e:I

    const/16 v16, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_0

    .line 345
    iget-wide v0, v8, Lcom/amap/api/mapcore2d/bf;->g:D

    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget v2, v8, Lcom/amap/api/mapcore2d/bf;->a:I

    int-to-double v10, v2

    mul-double/2addr v10, v4

    div-double/2addr v0, v10

    double-to-int v0, v0

    .line 347
    iget-wide v10, v8, Lcom/amap/api/mapcore2d/bf;->g:D

    mul-int/2addr v2, v0

    int-to-double v1, v2

    mul-double/2addr v1, v4

    sub-double/2addr v10, v1

    move v6, v0

    move-wide v11, v10

    goto :goto_0

    :cond_0
    if-ne v0, v7, :cond_1

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide v0

    iget-wide v2, v8, Lcom/amap/api/mapcore2d/bf;->g:D

    sub-double/2addr v0, v2

    iget v2, v8, Lcom/amap/api/mapcore2d/bf;->a:I

    int-to-double v10, v2

    mul-double/2addr v10, v4

    div-double/2addr v0, v10

    double-to-int v0, v0

    add-int/lit8 v1, v0, 0x1

    mul-int/2addr v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, v4

    move v6, v0

    move-wide v11, v1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    move-wide v11, v0

    move/from16 v6, v16

    .line 355
    :goto_0
    new-instance v1, Lcom/amap/api/mapcore2d/ab;

    const/4 v15, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/amap/api/mapcore2d/ab;-><init>(DDZ)V

    .line 358
    iget-object v3, v8, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v10

    .line 361
    new-instance v0, Lcom/amap/api/mapcore2d/cc;

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/bf;->b()I

    move-result v1

    const/4 v11, -0x1

    invoke-direct {v0, v9, v6, v1, v11}, Lcom/amap/api/mapcore2d/cc;-><init>(IIII)V

    .line 365
    iput-object v10, v0, Lcom/amap/api/mapcore2d/cc;->f:Landroid/graphics/PointF;

    .line 366
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v7

    :goto_1
    sub-int v14, v9, v13

    move v15, v14

    move/from16 v17, v16

    :goto_2
    add-int v5, v9, v13

    if-gt v15, v5, :cond_6

    add-int v5, v6, v13

    move-object/from16 v0, p0

    move v1, v15

    move v2, v5

    move v3, v9

    move v4, v6

    move v11, v5

    move-object v5, v10

    move/from16 v18, v6

    move/from16 v6, p3

    move/from16 v19, v7

    move/from16 v7, p4

    .line 381
    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore2d/bf;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez v17, :cond_2

    move/from16 v17, v19

    .line 388
    :cond_2
    new-instance v1, Lcom/amap/api/mapcore2d/cc;

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/bf;->b()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v15, v11, v2, v3}, Lcom/amap/api/mapcore2d/cc;-><init>(IIII)V

    .line 392
    iput-object v0, v1, Lcom/amap/api/mapcore2d/cc;->f:Landroid/graphics/PointF;

    .line 393
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sub-int v11, v18, v13

    move-object/from16 v0, p0

    move v1, v15

    move v2, v11

    move v3, v9

    move/from16 v4, v18

    move-object v5, v10

    move/from16 v6, p3

    move/from16 v7, p4

    .line 398
    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore2d/bf;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez v17, :cond_4

    move/from16 v17, v19

    .line 405
    :cond_4
    new-instance v1, Lcom/amap/api/mapcore2d/cc;

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/bf;->b()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v15, v11, v2, v3}, Lcom/amap/api/mapcore2d/cc;-><init>(IIII)V

    .line 409
    iput-object v0, v1, Lcom/amap/api/mapcore2d/cc;->f:Landroid/graphics/PointF;

    .line 410
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v18

    move/from16 v7, v19

    const/4 v11, -0x1

    goto :goto_2

    :cond_6
    move/from16 v18, v6

    move/from16 v19, v7

    add-int v6, v18, v13

    add-int/lit8 v6, v6, -0x1

    move v11, v6

    :goto_3
    sub-int v6, v18, v13

    if-le v11, v6, :cond_b

    move-object/from16 v0, p0

    move v1, v5

    move v2, v11

    move v3, v9

    move/from16 v4, v18

    move v15, v5

    move-object v5, v10

    move/from16 v6, p3

    move/from16 v7, p4

    .line 419
    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore2d/bf;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_8

    if-nez v17, :cond_7

    move/from16 v17, v19

    .line 426
    :cond_7
    new-instance v1, Lcom/amap/api/mapcore2d/cc;

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/bf;->b()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v15, v11, v2, v3}, Lcom/amap/api/mapcore2d/cc;-><init>(IIII)V

    .line 430
    iput-object v0, v1, Lcom/amap/api/mapcore2d/cc;->f:Landroid/graphics/PointF;

    .line 431
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v0, p0

    move v1, v14

    move v2, v11

    move v3, v9

    move/from16 v4, v18

    move-object v5, v10

    move/from16 v6, p3

    move/from16 v7, p4

    .line 437
    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore2d/bf;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_a

    if-nez v17, :cond_9

    move/from16 v17, v19

    .line 444
    :cond_9
    new-instance v1, Lcom/amap/api/mapcore2d/cc;

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/bf;->b()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v14, v11, v2, v3}, Lcom/amap/api/mapcore2d/cc;-><init>(IIII)V

    .line 447
    iput-object v0, v1, Lcom/amap/api/mapcore2d/cc;->f:Landroid/graphics/PointF;

    .line 448
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    const/4 v3, -0x1

    :goto_4
    add-int/lit8 v11, v11, -0x1

    move v5, v15

    goto :goto_3

    :cond_b
    const/4 v3, -0x1

    if-nez v17, :cond_c

    return-object v12

    :cond_c
    add-int/lit8 v13, v13, 0x1

    move v11, v3

    move/from16 v6, v18

    move/from16 v7, v19

    goto/16 :goto_1
.end method

.method public a()V
    .locals 10

    .line 69
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/bf;->g:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/amap/api/mapcore2d/bf;->a:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bf;->d:D

    .line 70
    iget v0, p0, Lcom/amap/api/mapcore2d/bf;->j:F

    float-to-int v1, v0

    .line 71
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/bf;->d:D

    const/4 v4, 0x1

    shl-int/2addr v4, v1

    int-to-double v4, v4

    div-double/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v0, v4

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    div-double/2addr v2, v0

    .line 73
    iput-wide v2, p0, Lcom/amap/api/mapcore2d/bf;->k:D

    .line 81
    new-instance v0, Lcom/amap/api/mapcore2d/ab;

    iget-wide v5, p0, Lcom/amap/api/mapcore2d/bf;->r:D

    iget-wide v7, p0, Lcom/amap/api/mapcore2d/bf;->q:D

    const/4 v9, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/amap/api/mapcore2d/ab;-><init>(DDZ)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    .line 83
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ab;->g()Lcom/amap/api/mapcore2d/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bf;->m:Lcom/amap/api/mapcore2d/ab;

    .line 84
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bf;->p:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk$d;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bf;->p:Lcom/amap/api/mapcore2d/bk$d;

    .line 85
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bk$d;->d()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    .line 86
    new-instance v0, Lcom/amap/api/mapcore2d/bf$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bf$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    .line 87
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    const v0, -0x3467203e    # -2.0037508E7f

    iput v0, p0, Lcom/amap/api/mapcore2d/bf$a;->a:F

    const v1, 0x4b98dfc2    # 2.0037508E7f

    .line 88
    iput v1, p0, Lcom/amap/api/mapcore2d/bf$a;->b:F

    .line 89
    iput v1, p0, Lcom/amap/api/mapcore2d/bf$a;->c:F

    .line 90
    iput v0, p0, Lcom/amap/api/mapcore2d/bf$a;->d:F

    return-void
.end method

.method public a(Landroid/graphics/Point;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    return-void
.end method

.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 9

    .line 490
    iget-wide v7, p0, Lcom/amap/api/mapcore2d/bf;->k:D

    .line 491
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, v7

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/bf;->b(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/bf$a;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p1

    .line 493
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/bf;->b(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/bf$a;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p2

    .line 496
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide v0

    .line 497
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 498
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide p2

    .line 499
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide v2

    sub-double/2addr p2, v2

    .line 501
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide v2

    add-double/2addr v2, v0

    .line 503
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide v0

    add-double/2addr v0, p2

    .line 505
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    iget p1, p1, Lcom/amap/api/mapcore2d/bf$a;->a:F

    float-to-double p1, p1

    cmpg-double p1, v2, p1

    if-gez p1, :cond_0

    .line 506
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    iget p1, p1, Lcom/amap/api/mapcore2d/bf$a;->b:F

    iget-object p2, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    iget p2, p2, Lcom/amap/api/mapcore2d/bf$a;->a:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    add-double/2addr v2, p1

    goto :goto_0

    .line 509
    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    iget p1, p1, Lcom/amap/api/mapcore2d/bf$a;->b:F

    float-to-double p1, p1

    cmpl-double p1, v2, p1

    if-lez p1, :cond_1

    .line 510
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    iget p1, p1, Lcom/amap/api/mapcore2d/bf$a;->b:F

    iget-object p2, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    iget p2, p2, Lcom/amap/api/mapcore2d/bf$a;->a:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    sub-double/2addr v2, p1

    goto :goto_1

    .line 513
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    iget p1, p1, Lcom/amap/api/mapcore2d/bf$a;->d:F

    float-to-double p1, p1

    cmpg-double p1, v0, p1

    if-gez p1, :cond_2

    .line 514
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    iget p1, p1, Lcom/amap/api/mapcore2d/bf$a;->c:F

    iget-object p2, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    iget p2, p2, Lcom/amap/api/mapcore2d/bf$a;->d:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    add-double/2addr v0, p1

    goto :goto_2

    .line 517
    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    iget p1, p1, Lcom/amap/api/mapcore2d/bf$a;->c:F

    float-to-double p1, p1

    cmpl-double p1, v0, p1

    if-lez p1, :cond_3

    .line 518
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    iget p1, p1, Lcom/amap/api/mapcore2d/bf$a;->c:F

    iget-object p2, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    iget p2, p2, Lcom/amap/api/mapcore2d/bf$a;->d:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    sub-double/2addr v0, p1

    goto :goto_3

    .line 520
    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/mapcore2d/ab;->b(D)V

    .line 521
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    invoke-virtual {p0, v2, v3}, Lcom/amap/api/mapcore2d/ab;->a(D)V

    return-void
.end method

.method b()I
    .locals 5

    .line 261
    iget p0, p0, Lcom/amap/api/mapcore2d/bf;->j:F

    float-to-int v0, p0

    int-to-float v1, v0

    sub-float/2addr p0, v1

    float-to-double v1, p0

    .line 262
    sget-wide v3, Lcom/amap/api/mapcore2d/bk;->a:D

    cmpg-double p0, v1, v3

    if-gez p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b(Lcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;D)Landroid/graphics/PointF;
    .locals 6

    .line 232
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object p1

    .line 234
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bf;->p:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method b(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/bf$a;)Lcom/amap/api/mapcore2d/ab;
    .locals 8

    .line 194
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bf;->p:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->c(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    .line 195
    iget p1, p0, Landroid/graphics/PointF;->x:F

    iget v0, p3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 196
    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    sub-float/2addr p0, p3

    .line 198
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    .line 199
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide p1

    float-to-double v2, p0

    mul-double/2addr v2, p4

    sub-double/2addr p1, v2

    .line 201
    :goto_0
    iget p0, p6, Lcom/amap/api/mapcore2d/bf$a;->a:F

    float-to-double p3, p0

    cmpg-double p0, v0, p3

    if-gez p0, :cond_0

    .line 202
    iget p0, p6, Lcom/amap/api/mapcore2d/bf$a;->b:F

    iget p3, p6, Lcom/amap/api/mapcore2d/bf$a;->a:F

    sub-float/2addr p0, p3

    float-to-double p3, p0

    add-double/2addr v0, p3

    goto :goto_0

    :cond_0
    move-wide v5, v0

    .line 205
    :goto_1
    iget p0, p6, Lcom/amap/api/mapcore2d/bf$a;->b:F

    float-to-double p3, p0

    cmpl-double p0, v5, p3

    if-lez p0, :cond_1

    .line 206
    iget p0, p6, Lcom/amap/api/mapcore2d/bf$a;->b:F

    iget p3, p6, Lcom/amap/api/mapcore2d/bf$a;->a:F

    sub-float/2addr p0, p3

    float-to-double p3, p0

    sub-double/2addr v5, p3

    goto :goto_1

    .line 209
    :cond_1
    :goto_2
    iget p0, p6, Lcom/amap/api/mapcore2d/bf$a;->d:F

    float-to-double p3, p0

    cmpg-double p0, p1, p3

    if-gez p0, :cond_2

    .line 210
    iget p0, p6, Lcom/amap/api/mapcore2d/bf$a;->c:F

    iget p3, p6, Lcom/amap/api/mapcore2d/bf$a;->d:F

    sub-float/2addr p0, p3

    float-to-double p3, p0

    add-double/2addr p1, p3

    goto :goto_2

    :cond_2
    move-wide v3, p1

    .line 213
    :goto_3
    iget p0, p6, Lcom/amap/api/mapcore2d/bf$a;->c:F

    float-to-double p0, p0

    cmpl-double p0, v3, p0

    if-lez p0, :cond_3

    .line 214
    iget p0, p6, Lcom/amap/api/mapcore2d/bf$a;->c:F

    iget p1, p6, Lcom/amap/api/mapcore2d/bf$a;->d:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    sub-double/2addr v3, p0

    goto :goto_3

    .line 216
    :cond_3
    new-instance p0, Lcom/amap/api/mapcore2d/ab;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/mapcore2d/ab;-><init>(DDZ)V

    return-object p0
.end method

.method public b(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;
    .locals 6

    .line 155
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v4, 0x41731bf84570a3d7L    # 2.003750834E7

    div-double/2addr v0, v4

    double-to-float p0, v0

    .line 156
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    .line 159
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 161
    new-instance v0, Lcom/amap/api/mapcore2d/ab;

    float-to-double v1, p1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v1, v3

    double-to-int p1, v1

    float-to-double v1, p0

    mul-double/2addr v1, v3

    double-to-int p0, v1

    invoke-direct {v0, p1, p0}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    return-object v0
.end method
