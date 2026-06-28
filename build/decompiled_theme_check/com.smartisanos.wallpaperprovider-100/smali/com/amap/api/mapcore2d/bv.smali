.class Lcom/amap/api/mapcore2d/bv;
.super Landroid/view/View;
.source "ScaleView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/amap/api/mapcore2d/b;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V
    .locals 3

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 17
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bv;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/amap/api/mapcore2d/bv;->b:I

    .line 33
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/b;

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bv;->d:Landroid/graphics/Paint;

    .line 35
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bv;->f:Landroid/graphics/Rect;

    .line 36
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bv;->d:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bv;->d:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bv;->d:Landroid/graphics/Paint;

    sget v1, Lcom/amap/api/mapcore2d/v;->a:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bv;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bv;->e:Landroid/graphics/Paint;

    .line 41
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bv;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bv;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bv;->e:Landroid/graphics/Paint;

    sget p1, Lcom/amap/api/mapcore2d/v;->a:F

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bv;->d:Landroid/graphics/Paint;

    .line 26
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bv;->e:Landroid/graphics/Paint;

    .line 27
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bv;->f:Landroid/graphics/Rect;

    .line 28
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bv;->a:Ljava/lang/String;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/amap/api/mapcore2d/bv;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bv;->a:Ljava/lang/String;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v1, p0

    .line 50
    :try_start_0
    iget-object v0, v1, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->p()Lcom/amap/api/mapcore2d/ar;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ar;->a()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 57
    :cond_0
    iget-object v0, v1, Lcom/amap/api/mapcore2d/bv;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v2, v1, Lcom/amap/api/mapcore2d/bv;->b:I

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 63
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    if-le v2, v0, :cond_2

    .line 64
    iget-object v0, v1, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "onDraw"

    const-string v4, "ScaleView"

    .line 67
    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->z()Landroid/graphics/Point;

    move-result-object v0

    .line 70
    iget-object v3, v1, Lcom/amap/api/mapcore2d/bv;->e:Landroid/graphics/Paint;

    iget-object v4, v1, Lcom/amap/api/mapcore2d/bv;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v1, Lcom/amap/api/mapcore2d/bv;->f:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 72
    iget v3, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v2

    iget-object v4, v1, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0xa

    if-le v3, v4, :cond_3

    .line 73
    iget-object v3, v1, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    iget-object v4, v1, Lcom/amap/api/mapcore2d/bv;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    goto :goto_1

    .line 75
    :cond_3
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v4, v1, Lcom/amap/api/mapcore2d/bv;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 77
    :goto_1
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v4, v1, Lcom/amap/api/mapcore2d/bv;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x5

    .line 78
    iget-object v4, v1, Lcom/amap/api/mapcore2d/bv;->a:Ljava/lang/String;

    int-to-float v5, v3

    int-to-float v6, v0

    iget-object v7, v1, Lcom/amap/api/mapcore2d/bv;->e:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    invoke-virtual {v14, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 79
    iget-object v4, v1, Lcom/amap/api/mapcore2d/bv;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 80
    iget-object v4, v1, Lcom/amap/api/mapcore2d/bv;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    add-int/2addr v0, v4

    int-to-float v4, v3

    add-int/lit8 v5, v0, -0x2

    int-to-float v5, v5

    add-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    .line 81
    iget-object v13, v1, Lcom/amap/api/mapcore2d/bv;->d:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v4

    move v10, v5

    move v11, v4

    move v12, v6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v12, v0

    add-int/2addr v3, v2

    int-to-float v0, v3

    .line 82
    iget-object v13, v1, Lcom/amap/api/mapcore2d/bv;->d:Landroid/graphics/Paint;

    move v10, v12

    move v11, v0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 83
    iget-object v13, v1, Lcom/amap/api/mapcore2d/bv;->d:Landroid/graphics/Paint;

    move v9, v0

    move v10, v5

    move v12, v6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_2
    return-void
.end method
