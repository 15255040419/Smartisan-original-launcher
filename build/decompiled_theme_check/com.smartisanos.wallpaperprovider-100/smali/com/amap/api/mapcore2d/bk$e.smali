.class public Lcom/amap/api/mapcore2d/bk$e;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/bs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/bk;

.field private b:F

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/bk;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 479
    iput p1, p0, Lcom/amap/api/mapcore2d/bk$e;->b:F

    .line 480
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk$e;->c:Ljava/util/HashMap;

    return-void
.end method

.method private a(Z)I
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->c()I

    move-result v0

    .line 537
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk$d;->d()I

    move-result v1

    const/4 v2, 0x0

    .line 538
    invoke-virtual {p0, v2, v1}, Lcom/amap/api/mapcore2d/bk$e;->a(II)Lcom/amap/api/mapcore2d/ab;

    move-result-object v1

    .line 539
    invoke-virtual {p0, v0, v2}, Lcom/amap/api/mapcore2d/bk$e;->a(II)Lcom/amap/api/mapcore2d/ab;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 541
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ab;->a()I

    move-result p1

    .line 542
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->a()I

    move-result p0

    sub-int/2addr p1, p0

    .line 541
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ab;->b()I

    move-result p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->b()I

    move-result p0

    sub-int/2addr p1, p0

    .line 542
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(F)F
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->e()F

    move-result v0

    .line 485
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk$e;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/amap/api/mapcore2d/bk$e;->b:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 486
    :cond_0
    iput v0, p0, Lcom/amap/api/mapcore2d/bk$e;->b:F

    .line 487
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$e;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$e;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0, v0, v0}, Lcom/amap/api/mapcore2d/bk$e;->a(II)Lcom/amap/api/mapcore2d/ab;

    move-result-object v1

    const/16 v2, 0x64

    .line 491
    invoke-virtual {p0, v0, v2}, Lcom/amap/api/mapcore2d/bk$e;->a(II)Lcom/amap/api/mapcore2d/ab;

    move-result-object v0

    .line 492
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    invoke-virtual {v2, v1, v0}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_2

    return v1

    :cond_2
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v0, p1, v0

    mul-float/2addr v0, v1

    .line 498
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk$e;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_3
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$e;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public a()I
    .locals 1

    const/4 v0, 0x0

    .line 514
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/bk$e;->a(Z)I

    move-result p0

    return p0
.end method

.method public a(Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 9

    .line 397
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v3, v0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v4, v0, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-wide v5, v0, Lcom/amap/api/mapcore2d/bf;->k:D

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/bf;->b(Lcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object p1

    .line 403
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk$d;->a(Lcom/amap/api/mapcore2d/bk$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->F()Lcom/amap/api/mapcore2d/bn;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/bk$d;->a(Lcom/amap/api/mapcore2d/bk$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    .line 409
    iget-boolean v2, v0, Lcom/amap/api/mapcore2d/bn;->m:Z

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-eqz v2, :cond_3

    .line 412
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ar;

    .line 413
    invoke-interface {p0}, Lcom/amap/api/mapcore2d/ar;->f()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 416
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x1

    .line 419
    :goto_0
    iget-boolean v1, v0, Lcom/amap/api/mapcore2d/bn;->l:Z

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 421
    sget p0, Lcom/amap/api/mapcore2d/bn;->j:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/amap/api/mapcore2d/bn;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr p0, v1

    iget-object v1, v0, Lcom/amap/api/mapcore2d/bn;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr p0, v1

    iget-object v1, v0, Lcom/amap/api/mapcore2d/bn;->g:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/amap/api/mapcore2d/bn;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    add-float/2addr p0, v1

    .line 424
    sget v1, Lcom/amap/api/mapcore2d/bn;->j:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    int-to-float p1, p1

    iget-object v2, v0, Lcom/amap/api/mapcore2d/bn;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    mul-float/2addr v1, p1

    iget-object p1, v0, Lcom/amap/api/mapcore2d/bn;->f:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p1

    iget-object p1, v0, Lcom/amap/api/mapcore2d/bn;->g:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bn;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    add-float/2addr v1, p1

    float-to-int p1, p0

    float-to-int v0, v1

    float-to-double v5, p0

    int-to-double v7, p1

    add-double/2addr v7, v3

    cmpl-double p0, v5, v7

    if-ltz p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    float-to-double v1, v1

    int-to-double v5, v0

    add-double/2addr v5, v3

    cmpl-double p0, v1, v5

    if-ltz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move p0, p1

    goto :goto_1

    .line 436
    :cond_2
    iget p0, p1, Landroid/graphics/PointF;->x:F

    float-to-int p0, p0

    .line 437
    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int v0, p1

    :goto_1
    move p1, p0

    goto :goto_2

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v0, v0, Lcom/amap/api/mapcore2d/bf;->c:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v5, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 442
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget p0, p0, Lcom/amap/api/mapcore2d/bf;->c:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    iget v2, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr p0, p1

    iget p1, v1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    add-float/2addr p0, p1

    float-to-int p1, v0

    float-to-int v1, p0

    float-to-double v5, v0

    int-to-double v7, p1

    add-double/2addr v7, v3

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_4

    add-int/lit8 p1, p1, 0x1

    :cond_4
    float-to-double v5, p0

    int-to-double v7, v1

    add-double/2addr v7, v3

    cmpl-double p0, v5, v7

    if-ltz p0, :cond_5

    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 453
    :goto_2
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    if-eqz p2, :cond_6

    .line 455
    iget p1, p0, Landroid/graphics/Point;->x:I

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 456
    iget p1, p0, Landroid/graphics/Point;->y:I

    iput p1, p2, Landroid/graphics/Point;->y:I

    :cond_6
    return-object p0
.end method

.method public a(II)Lcom/amap/api/mapcore2d/ab;
    .locals 7

    .line 471
    new-instance v1, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 472
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, p1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v2, p1, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v3, p1, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/bf;->k:D

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$e;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/bf;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/bf$a;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p0

    return-object p0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    .line 525
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/bk$e;->a(Z)I

    move-result p0

    return p0
.end method
