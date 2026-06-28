.class Lcom/amap/api/mapcore2d/ac;
.super Ljava/lang/Object;
.source "GroundOverlayDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/af;


# instance fields
.field private final a:D

.field private final b:D

.field private c:Lcom/amap/api/mapcore2d/b;

.field private d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

.field private e:Lcom/amap/api/maps2d/model/LatLng;

.field private f:F

.field private g:F

.field private h:Lcom/amap/api/maps2d/model/LatLngBounds;

.field private i:F

.field private j:F

.field private k:Z

.field private l:F

.field private m:F

.field private n:F

.field private o:Ljava/lang/String;

.field private p:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 24
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ac;->a:D

    const-wide v0, 0x41584dae328f5c29L    # 6371000.79

    .line 25
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ac;->b:D

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ac;->k:Z

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/amap/api/mapcore2d/ac;->l:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 36
    iput v0, p0, Lcom/amap/api/mapcore2d/ac;->m:F

    .line 37
    iput v0, p0, Lcom/amap/api/mapcore2d/ac;->n:F

    .line 43
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ac;->c:Lcom/amap/api/mapcore2d/b;

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ac;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ac;->o:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GroundOverlayDelegateImp"

    .line 47
    invoke-static {p0, p1, p1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/ab;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 327
    :cond_0
    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int p0, v0

    .line 328
    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 329
    new-instance v0, Lcom/amap/api/mapcore2d/ab;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    return-object v0
.end method

.method private o()V
    .locals 14

    .line 110
    iget v0, p0, Lcom/amap/api/mapcore2d/ac;->f:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v2, v4

    .line 111
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v6, 0x41584dae328f5c29L    # 6371000.79

    mul-double/2addr v2, v6

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 112
    iget v2, p0, Lcom/amap/api/mapcore2d/ac;->g:F

    float-to-double v2, v2

    const-wide v4, 0x40fb25af0c031ddeL    # 111194.94043265979

    div-double/2addr v2, v4

    .line 114
    new-instance v4, Lcom/amap/api/maps2d/model/LatLngBounds;

    new-instance v5, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget v8, p0, Lcom/amap/api/mapcore2d/ac;->n:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    float-to-double v10, v8

    mul-double/2addr v10, v2

    sub-double/2addr v6, v10

    iget-object v8, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v8, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget v8, p0, Lcom/amap/api/mapcore2d/ac;->m:F

    float-to-double v12, v8

    mul-double/2addr v12, v0

    sub-double/2addr v10, v12

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v6, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v7, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v7, v7, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget v10, p0, Lcom/amap/api/mapcore2d/ac;->n:F

    float-to-double v10, v10

    mul-double/2addr v10, v2

    add-double/2addr v7, v10

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget v10, p0, Lcom/amap/api/mapcore2d/ac;->m:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    mul-double/2addr v9, v0

    add-double/2addr v2, v9

    invoke-direct {v6, v7, v8, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-direct {v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    iput-object v4, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    return-void
.end method

.method private p()V
    .locals 13

    .line 122
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 123
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 125
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget v5, p0, Lcom/amap/api/mapcore2d/ac;->n:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v5

    float-to-double v5, v6

    iget-wide v7, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v9, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget v7, p0, Lcom/amap/api/mapcore2d/ac;->m:F

    float-to-double v7, v7

    iget-wide v9, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v11, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 130
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v6, 0x41584dae328f5c29L    # 6371000.79

    mul-double/2addr v2, v6

    iget-wide v8, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v10, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v8, v10

    mul-double/2addr v2, v8

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/mapcore2d/ac;->f:F

    .line 132
    iget-wide v1, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v1, v8

    mul-double/2addr v1, v6

    mul-double/2addr v1, v4

    double-to-float v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/ac;->g:F

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    iput p1, p0, Lcom/amap/api/mapcore2d/ac;->j:F

    .line 67
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ac;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    return-void
.end method

.method public a(FF)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "Width must be non-negative"

    .line 201
    invoke-static {v1, v4}, Lcom/amap/api/mapcore2d/cw;->b(ZLjava/lang/Object;)V

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v0, "Height must be non-negative"

    .line 203
    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cw;->b(ZLjava/lang/Object;)V

    .line 205
    iget v0, p0, Lcom/amap/api/mapcore2d/ac;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore2d/ac;->g:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    .line 206
    iput p1, p0, Lcom/amap/api/mapcore2d/ac;->f:F

    .line 207
    iput p2, p0, Lcom/amap/api/mapcore2d/ac;->g:F

    goto :goto_2

    .line 210
    :cond_2
    iput p1, p0, Lcom/amap/api/mapcore2d/ac;->f:F

    .line 211
    iput p2, p0, Lcom/amap/api/mapcore2d/ac;->g:F

    :goto_2
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ac;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ac;->g()V

    .line 291
    iget v0, p0, Lcom/amap/api/mapcore2d/ac;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore2d/ac;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    return-void

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ac;->p:Landroid/graphics/Bitmap;

    .line 295
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 298
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 299
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 300
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/ac;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/ab;

    move-result-object v0

    .line 301
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore2d/ac;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/ab;

    move-result-object v1

    .line 302
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore2d/ac;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/ab;

    move-result-object v2

    .line 303
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 304
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 305
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 306
    iget-object v6, p0, Lcom/amap/api/mapcore2d/ac;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/b;->r()Lcom/amap/api/mapcore2d/bs;

    move-result-object v6

    invoke-interface {v6, v0, v3}, Lcom/amap/api/mapcore2d/bs;->a(Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 307
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->r()Lcom/amap/api/mapcore2d/bs;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Lcom/amap/api/mapcore2d/bs;->a(Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 308
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->r()Lcom/amap/api/mapcore2d/bs;

    move-result-object v0

    invoke-interface {v0, v2, v5}, Lcom/amap/api/mapcore2d/bs;->a(Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 309
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 310
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v6, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 311
    iget v2, p0, Lcom/amap/api/mapcore2d/ac;->l:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    sub-float/2addr v3, v2

    float-to-int v2, v3

    .line 312
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x1

    .line 313
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 315
    iget v2, p0, Lcom/amap/api/mapcore2d/ac;->i:F

    iget v3, v5, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v5, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 316
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ac;->p:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ac;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 173
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ac;->o()V

    goto :goto_0

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    :goto_0
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/model/LatLngBounds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 231
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ac;->p()V

    goto :goto_0

    .line 233
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ac;->k:Z

    .line 78
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ac;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public a()Z
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->w()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 166
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

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aj;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ac;->c()Ljava/lang/String;

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

    .line 53
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ac;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/b;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public b(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Width must be non-negative"

    .line 187
    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/cw;->b(ZLjava/lang/Object;)V

    .line 189
    iget v0, p0, Lcom/amap/api/mapcore2d/ac;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 190
    iput p1, p0, Lcom/amap/api/mapcore2d/ac;->f:F

    .line 191
    iput p1, p0, Lcom/amap/api/mapcore2d/ac;->g:F

    goto :goto_1

    .line 194
    :cond_1
    iput p1, p0, Lcom/amap/api/mapcore2d/ac;->f:F

    .line 195
    iput p1, p0, Lcom/amap/api/mapcore2d/ac;->g:F

    :goto_1
    return-void
.end method

.method public b(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    iput p1, p0, Lcom/amap/api/mapcore2d/ac;->m:F

    .line 280
    iput p2, p0, Lcom/amap/api/mapcore2d/ac;->n:F

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "GroundOverlay"

    .line 59
    invoke-static {v0}, Lcom/amap/api/mapcore2d/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ac;->o:Ljava/lang/String;

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ac;->o:Ljava/lang/String;

    return-object p0
.end method

.method public c(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    neg-float p1, p1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    .line 245
    iget v0, p0, Lcom/amap/api/mapcore2d/ac;->i:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    float-to-double v2, p1

    .line 246
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 247
    iput p1, p0, Lcom/amap/api/mapcore2d/ac;->i:F

    goto :goto_0

    .line 249
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore2d/ac;->i:F

    :goto_0
    return-void
.end method

.method public d()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget p0, p0, Lcom/amap/api/mapcore2d/ac;->j:F

    return p0
.end method

.method public d(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Transparency must be in the range [0..1]"

    .line 260
    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/cw;->b(ZLjava/lang/Object;)V

    .line 263
    iput p1, p0, Lcom/amap/api/mapcore2d/ac;->l:F

    return-void
.end method

.method public e()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/ac;->k:Z

    return p0
.end method

.method public f()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ac;->p()V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-nez v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ac;->o()V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()Lcom/amap/api/maps2d/model/LatLng;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    return-object p0
.end method

.method public i()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    iget p0, p0, Lcom/amap/api/mapcore2d/ac;->f:F

    return p0
.end method

.method public j()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    iget p0, p0, Lcom/amap/api/mapcore2d/ac;->g:F

    return p0
.end method

.method public k()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    return-object p0
.end method

.method public l()V
    .locals 2

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ac;->b()V

    .line 140
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ac;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ac;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 148
    :cond_0
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ac;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 149
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ac;->h:Lcom/amap/api/maps2d/model/LatLngBounds;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "destroy"

    const-string v1, "GroundOverlayDelegateImp"

    .line 151
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "destroy erro"

    const-string v0, "GroundOverlayDelegateImp destroy"

    .line 152
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public m()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget p0, p0, Lcom/amap/api/mapcore2d/ac;->i:F

    return p0
.end method

.method public n()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    iget p0, p0, Lcom/amap/api/mapcore2d/ac;->l:F

    return p0
.end method
