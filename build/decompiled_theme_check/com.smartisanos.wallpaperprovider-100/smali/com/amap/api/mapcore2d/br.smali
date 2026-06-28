.class Lcom/amap/api/mapcore2d/br;
.super Ljava/lang/Object;
.source "PolylineDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/am;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/b;

.field private b:F

.field private c:I

.field private d:F

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/ak;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/amap/api/maps2d/model/LatLngBounds;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 23
    iput v0, p0, Lcom/amap/api/mapcore2d/br;->b:F

    const/high16 v0, -0x1000000

    .line 24
    iput v0, p0, Lcom/amap/api/mapcore2d/br;->c:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/amap/api/mapcore2d/br;->d:F

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/br;->e:Z

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/br;->f:Z

    .line 28
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/br;->g:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/br;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/amap/api/mapcore2d/br;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 36
    iput-object p1, p0, Lcom/amap/api/mapcore2d/br;->a:Lcom/amap/api/mapcore2d/b;

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/br;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/br;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PolylineDelegateImp"

    .line 40
    invoke-static {p0, p1, p1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private m()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ak;

    if-eqz v2, :cond_0

    .line 123
    new-instance v3, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/x;-><init>()V

    .line 124
    iget-object v4, p0, Lcom/amap/api/mapcore2d/br;->a:Lcom/amap/api/mapcore2d/b;

    iget v5, v2, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v2, v2, Lcom/amap/api/mapcore2d/ak;->b:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/amap/api/mapcore2d/b;->b(IILcom/amap/api/mapcore2d/x;)V

    .line 125
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/mapcore2d/x;->b:D

    iget-wide v6, v3, Lcom/amap/api/mapcore2d/x;->a:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method a(Lcom/amap/api/mapcore2d/ak;Lcom/amap/api/mapcore2d/ak;Lcom/amap/api/mapcore2d/ak;DI)Lcom/amap/api/mapcore2d/ak;
    .locals 6

    .line 286
    new-instance p0, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 287
    iget v0, p2, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v1, p1, Lcom/amap/api/mapcore2d/ak;->a:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    .line 288
    iget p2, p2, Lcom/amap/api/mapcore2d/ak;->b:I

    iget p1, p1, Lcom/amap/api/mapcore2d/ak;->b:I

    sub-int/2addr p2, p1

    int-to-double p1, p2

    mul-double v2, p1, p1

    mul-double v4, v0, v0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    int-to-double v4, p6

    mul-double/2addr v4, p4

    .line 290
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    div-double/2addr v4, p4

    iget p4, p3, Lcom/amap/api/mapcore2d/ak;->b:I

    int-to-double p4, p4

    add-double/2addr v4, p4

    double-to-int p4, v4

    iput p4, p0, Lcom/amap/api/mapcore2d/ak;->b:I

    .line 291
    iget p4, p3, Lcom/amap/api/mapcore2d/ak;->b:I

    iget p5, p0, Lcom/amap/api/mapcore2d/ak;->b:I

    sub-int/2addr p4, p5

    int-to-double p4, p4

    mul-double/2addr p4, p1

    div-double/2addr p4, v0

    iget p1, p3, Lcom/amap/api/mapcore2d/ak;->a:I

    int-to-double p1, p1

    add-double/2addr p4, p1

    double-to-int p1, p4

    iput p1, p0, Lcom/amap/api/mapcore2d/ak;->a:I

    return-object p0
.end method

.method public a(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    iput p1, p0, Lcom/amap/api/mapcore2d/br;->d:F

    .line 186
    iget-object p0, p0, Lcom/amap/api/mapcore2d/br;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    return-void
.end method

.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    iput p1, p0, Lcom/amap/api/mapcore2d/br;->c:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore2d/br;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 244
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 245
    new-instance v1, Lcom/amap/api/mapcore2d/ab;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ak;

    iget v2, v2, Lcom/amap/api/mapcore2d/ak;->b:I

    iget-object v4, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    .line 246
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/ak;

    iget v4, v4, Lcom/amap/api/mapcore2d/ak;->a:I

    invoke-direct {v1, v2, v4}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    .line 247
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 248
    iget-object v4, p0, Lcom/amap/api/mapcore2d/br;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->r()Lcom/amap/api/mapcore2d/bs;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lcom/amap/api/mapcore2d/bs;->a(Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 251
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x1

    move v2, v1

    .line 253
    :goto_0
    iget-object v4, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 254
    new-instance v4, Lcom/amap/api/mapcore2d/ab;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/mapcore2d/ak;

    iget v5, v5, Lcom/amap/api/mapcore2d/ak;->b:I

    iget-object v6, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    .line 255
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/mapcore2d/ak;

    iget v6, v6, Lcom/amap/api/mapcore2d/ak;->a:I

    invoke-direct {v4, v5, v6}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    .line 256
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 257
    iget-object v6, p0, Lcom/amap/api/mapcore2d/br;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/b;->r()Lcom/amap/api/mapcore2d/bs;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/amap/api/mapcore2d/bs;->a(Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 259
    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    :cond_1
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 263
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/br;->h()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/br;->g()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 266
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 267
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 268
    iget-boolean v4, p0, Lcom/amap/api/mapcore2d/br;->f:Z

    if-eqz v4, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/br;->g()F

    move-result p0

    float-to-int p0, p0

    .line 270
    new-instance v4, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x4

    new-array v5, v5, [F

    mul-int/lit8 v6, p0, 0x3

    int-to-float v6, v6

    aput v6, v5, v3

    int-to-float p0, p0

    aput p0, v5, v1

    const/4 v1, 0x2

    aput v6, v5, v1

    const/4 v1, 0x3

    aput p0, v5, v1

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, p0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 272
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 274
    :cond_2
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Ljava/util/List;Lcom/amap/api/maps2d/model/LatLngBounds$Builder;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps2d/model/LatLng;",
            "Lcom/amap/api/maps2d/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/ak;",
            ">;",
            "Lcom/amap/api/maps2d/model/LatLngBounds$Builder;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 344
    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    .line 346
    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v5, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    add-double/2addr v5, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v8

    iget-wide v10, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v12, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    add-double/2addr v10, v12

    div-double/2addr v10, v8

    invoke-direct {v4, v5, v6, v10, v11}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    move-object/from16 v5, p4

    .line 350
    invoke-virtual {v5, v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 353
    iget-wide v5, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide/16 v8, 0x0

    cmpl-double v5, v5, v8

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    move v6, v5

    .line 355
    new-instance v14, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v14}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 356
    iget-object v8, v7, Lcom/amap/api/mapcore2d/br;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v9, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v11, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v13, v14

    invoke-virtual/range {v8 .. v13}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ak;)V

    .line 357
    new-instance v8, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v8}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 358
    iget-object v15, v7, Lcom/amap/api/mapcore2d/br;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v9, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v0, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-wide/from16 v16, v9

    move-wide/from16 v18, v0

    move-object/from16 v20, v8

    invoke-virtual/range {v15 .. v20}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ak;)V

    .line 359
    new-instance v5, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v5}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 360
    iget-object v0, v7, Lcom/amap/api/mapcore2d/br;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v9, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v11, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object/from16 v16, v0

    move-wide/from16 v17, v9

    move-wide/from16 v19, v11

    move-object/from16 v21, v5

    invoke-virtual/range {v16 .. v21}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ak;)V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    .line 364
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 366
    iget v4, v14, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v11, v8, Lcom/amap/api/mapcore2d/ak;->a:I

    sub-int/2addr v4, v11

    int-to-double v11, v4

    iget v4, v14, Lcom/amap/api/mapcore2d/ak;->b:I

    iget v13, v8, Lcom/amap/api/mapcore2d/ak;->b:I

    sub-int/2addr v4, v13

    move-wide/from16 p1, v9

    int-to-double v9, v4

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    mul-double/2addr v9, v0

    .line 369
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double/2addr v9, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v8

    move-object v3, v5

    move-wide v4, v9

    .line 371
    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/br;->a(Lcom/amap/api/mapcore2d/ak;Lcom/amap/api/mapcore2d/ak;Lcom/amap/api/mapcore2d/ak;DI)Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v2, p1

    move-object/from16 v0, p3

    .line 379
    invoke-virtual {v7, v1, v0, v2, v3}, Lcom/amap/api/mapcore2d/br;->a(Ljava/util/List;Ljava/util/List;D)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/br;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/br;->f:Z

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/br;->j:Ljava/util/List;

    .line 106
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/br;->b(Ljava/util/List;)V

    return-void
.end method

.method a(Ljava/util/List;Ljava/util/List;D)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/ak;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/ak;",
            ">;D)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 310
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xa

    if-gt v3, v4, :cond_1

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float v4, v3, v4

    .line 319
    new-instance v5, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v5}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v4

    sub-double/2addr v6, v8

    mul-double v8, v6, v6

    .line 320
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/api/mapcore2d/ak;

    iget v10, v10, Lcom/amap/api/mapcore2d/ak;->a:I

    int-to-double v10, v10

    mul-double/2addr v10, v8

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v4

    float-to-double v12, v12

    mul-double/2addr v12, v6

    const/4 v6, 0x1

    .line 321
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/api/mapcore2d/ak;

    iget v7, v7, Lcom/amap/api/mapcore2d/ak;->a:I

    int-to-double v14, v7

    mul-double/2addr v14, v12

    mul-double v14, v14, p3

    add-double/2addr v10, v14

    mul-float/2addr v4, v4

    const/4 v7, 0x2

    .line 322
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/amap/api/mapcore2d/ak;

    iget v14, v14, Lcom/amap/api/mapcore2d/ak;->a:I

    int-to-float v14, v14

    mul-float/2addr v14, v4

    float-to-double v14, v14

    add-double/2addr v10, v14

    .line 323
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/amap/api/mapcore2d/ak;

    iget v14, v14, Lcom/amap/api/mapcore2d/ak;->b:I

    int-to-double v14, v14

    mul-double/2addr v14, v8

    .line 324
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/mapcore2d/ak;

    iget v6, v6, Lcom/amap/api/mapcore2d/ak;->b:I

    int-to-double v1, v6

    mul-double/2addr v1, v12

    mul-double v1, v1, p3

    add-double/2addr v14, v1

    .line 325
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ak;

    iget v1, v1, Lcom/amap/api/mapcore2d/ak;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-double v1, v1

    add-double/2addr v14, v1

    mul-double v12, v12, p3

    add-double/2addr v8, v12

    float-to-double v1, v4

    add-double/2addr v8, v1

    div-double/2addr v10, v8

    double-to-int v1, v10

    .line 330
    iput v1, v5, Lcom/amap/api/mapcore2d/ak;->a:I

    div-double/2addr v14, v8

    double-to-int v1, v14

    .line 331
    iput v1, v5, Lcom/amap/api/mapcore2d/ak;->b:I

    move-object/from16 v1, p2

    .line 333
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    float-to-int v3, v3

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/br;->e:Z

    return-void
.end method

.method public a()Z
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->w()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 228
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore2d/br;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/amap/api/mapcore2d/br;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {p0, v0}, Lcom/amap/api/maps2d/model/LatLngBounds;->intersects(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public a(Lcom/amap/api/mapcore2d/aj;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aj;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/br;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/br;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/b;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public b(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    iput p1, p0, Lcom/amap/api/mapcore2d/br;->b:F

    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 49
    :cond_0
    invoke-static {}, Lcom/amap/api/maps2d/model/LatLngBounds;->builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {v2, v1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    iget-boolean v3, p0, Lcom/amap/api/mapcore2d/br;->g:Z

    if-nez v3, :cond_3

    .line 58
    new-instance v1, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 59
    iget-object v4, p0, Lcom/amap/api/mapcore2d/br;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v5, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v7, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ak;)V

    .line 60
    iget-object v3, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    .line 64
    iget-wide v3, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v5, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v3, v5

    if-gez v3, :cond_4

    .line 65
    new-instance v3, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 66
    iget-object v4, p0, Lcom/amap/api/mapcore2d/br;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v5, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v7, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ak;)V

    .line 68
    iget-object v4, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 70
    new-instance v1, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 71
    iget-object v5, p0, Lcom/amap/api/mapcore2d/br;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v6, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v8, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v10, v1

    invoke-virtual/range {v5 .. v10}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ak;)V

    .line 72
    iget-object v3, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    goto :goto_1

    .line 75
    :cond_4
    iget-object v3, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/amap/api/mapcore2d/br;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Ljava/util/List;Lcom/amap/api/maps2d/model/LatLngBounds$Builder;)V

    :cond_5
    :goto_1
    move-object v1, v2

    goto :goto_0

    .line 83
    :cond_6
    iget-object p1, p0, Lcom/amap/api/mapcore2d/br;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 84
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/br;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

    :cond_7
    :goto_2
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/br;->f:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Polyline"

    .line 96
    invoke-static {v0}, Lcom/amap/api/mapcore2d/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/br;->h:Ljava/lang/String;

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/br;->h:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/br;->g:Z

    if-eq v0, p1, :cond_0

    .line 160
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/br;->g:Z

    :cond_0
    return-void
.end method

.method public d()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iget p0, p0, Lcom/amap/api/mapcore2d/br;->d:F

    return p0
.end method

.method public e()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/br;->e:Z

    return p0
.end method

.method public f()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public g()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget p0, p0, Lcom/amap/api/mapcore2d/br;->b:F

    return p0
.end method

.method public h()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    iget p0, p0, Lcom/amap/api/mapcore2d/br;->c:I

    return p0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/br;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/br;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/br;->m()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 112
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/br;->j:Ljava/util/List;

    return-object p0
.end method

.method public j()Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/br;->f:Z

    return p0
.end method

.method public k()Z
    .locals 0

    .line 170
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/br;->g:Z

    return p0
.end method

.method public l()V
    .locals 0

    return-void
.end method
