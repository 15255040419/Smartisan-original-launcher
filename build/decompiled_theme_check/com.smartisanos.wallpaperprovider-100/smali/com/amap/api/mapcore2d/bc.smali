.class Lcom/amap/api/mapcore2d/bc;
.super Landroid/view/View;
.source "MapOverlayImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/bc$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore2d/b;

.field b:Lcom/amap/api/mapcore2d/bc$a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/ap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/ah;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:I

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/amap/api/mapcore2d/ak;

.field private i:Lcom/amap/api/mapcore2d/ah;

.field private j:Lcom/amap/api/mapcore2d/ah;

.field private k:F

.field private l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc;->c:Ljava/util/ArrayList;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/amap/api/mapcore2d/bc;->e:I

    .line 51
    new-instance p1, Lcom/amap/api/mapcore2d/bc$a;

    invoke-direct {p1}, Lcom/amap/api/mapcore2d/bc$a;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/bc$a;

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc;->f:Landroid/os/Handler;

    .line 77
    new-instance p1, Lcom/amap/api/mapcore2d/bd;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore2d/bd;-><init>(Lcom/amap/api/mapcore2d/bc;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc;->g:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 198
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc;->j:Lcom/amap/api/mapcore2d/ah;

    const/4 p1, 0x0

    .line 199
    iput p1, p0, Lcom/amap/api/mapcore2d/bc;->k:F

    .line 275
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 102
    iput-object p3, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    return-void
.end method

.method private a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ak;)Lcom/amap/api/mapcore2d/ap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/amap/api/mapcore2d/ap;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/amap/api/mapcore2d/ak;",
            ")",
            "Lcom/amap/api/mapcore2d/ap;"
        }
    .end annotation

    .line 367
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ap;

    .line 369
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ap;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 373
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v3, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/ak;)V

    .line 374
    iget v1, p3, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v2, p3, Lcom/amap/api/mapcore2d/ak;->b:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/amap/api/mapcore2d/bc;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bc;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ak;)Lcom/amap/api/mapcore2d/ah;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/amap/api/mapcore2d/ah;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/amap/api/mapcore2d/ak;",
            ")",
            "Lcom/amap/api/mapcore2d/ah;"
        }
    .end annotation

    .line 390
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ah;

    .line 392
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ah;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 396
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v3, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/ak;)V

    .line 397
    iget v1, p3, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v2, p3, Lcom/amap/api/mapcore2d/ak;->b:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/amap/api/mapcore2d/bc;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/bc;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bc;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method private h()I
    .locals 2

    .line 47
    iget v0, p0, Lcom/amap/api/mapcore2d/bc;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/bc;->e:I

    return v0
.end method

.method private i()V
    .locals 5

    .line 414
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ah;

    .line 415
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->i:Lcom/amap/api/mapcore2d/ah;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ah;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ah;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->i:Lcom/amap/api/mapcore2d/ah;

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ah;->q()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return-void

    :catch_0
    move-exception v2

    const-string v3, "redrawInfoWindow"

    const-string v4, "MapOverlayImageView"

    .line 422
    invoke-static {v2, v4, v3}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_1
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ah;->b()Landroid/graphics/Rect;

    move-result-object v2

    .line 425
    new-instance v3, Lcom/amap/api/mapcore2d/ak;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ah;->n()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v4, v1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v4, v1}, Lcom/amap/api/mapcore2d/ak;-><init>(II)V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/mapcore2d/ak;

    .line 427
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->t()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore2d/ah;
    .locals 5

    monitor-enter p0

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 445
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ah;

    .line 446
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ah;->b()Landroid/graphics/Rect;

    move-result-object v2

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/amap/api/mapcore2d/bc;->a(Landroid/graphics/Rect;II)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 449
    monitor-exit p0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 454
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/ah;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ah;

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ah;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 109
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 112
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Lcom/amap/api/mapcore2d/b;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    return-object p0
.end method

.method public declared-synchronized a(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    .line 291
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bc;->i()V

    .line 295
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->b()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    .line 296
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->c()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 297
    new-instance v1, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 298
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 299
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 300
    invoke-direct {p0, v2, v0, v1}, Lcom/amap/api/mapcore2d/bc;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ak;)Lcom/amap/api/mapcore2d/ah;

    move-result-object v4

    .line 301
    invoke-direct {p0, v3, v0, v1}, Lcom/amap/api/mapcore2d/bc;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ak;)Lcom/amap/api/mapcore2d/ap;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v4, :cond_1

    if-eqz v5, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 304
    :try_start_1
    invoke-interface {v5, p1}, Lcom/amap/api/mapcore2d/ap;->a(Landroid/graphics/Canvas;)V

    .line 305
    invoke-direct {p0, v3, v0, v1}, Lcom/amap/api/mapcore2d/bc;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ak;)Lcom/amap/api/mapcore2d/ap;

    move-result-object v5

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 307
    iget-object v6, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    invoke-interface {v4, p1, v6}, Lcom/amap/api/mapcore2d/ah;->a(Landroid/graphics/Canvas;Lcom/amap/api/mapcore2d/ad;)V

    .line 308
    invoke-direct {p0, v2, v0, v1}, Lcom/amap/api/mapcore2d/bc;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ak;)Lcom/amap/api/mapcore2d/ah;

    move-result-object v4

    goto :goto_0

    .line 313
    :cond_3
    invoke-interface {v4}, Lcom/amap/api/mapcore2d/ah;->r()F

    move-result v6

    invoke-interface {v5}, Lcom/amap/api/mapcore2d/ap;->r()F

    move-result v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_5

    .line 314
    invoke-interface {v4}, Lcom/amap/api/mapcore2d/ah;->r()F

    move-result v6

    .line 315
    invoke-interface {v5}, Lcom/amap/api/mapcore2d/ap;->r()F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    invoke-interface {v4}, Lcom/amap/api/mapcore2d/ah;->v()I

    move-result v6

    .line 316
    invoke-interface {v5}, Lcom/amap/api/mapcore2d/ap;->v()I

    move-result v7

    if-ge v6, v7, :cond_4

    goto :goto_2

    .line 320
    :cond_4
    invoke-interface {v5, p1}, Lcom/amap/api/mapcore2d/ap;->a(Landroid/graphics/Canvas;)V

    .line 321
    invoke-direct {p0, v3, v0, v1}, Lcom/amap/api/mapcore2d/bc;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ak;)Lcom/amap/api/mapcore2d/ap;

    move-result-object v5

    goto :goto_0

    .line 317
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    invoke-interface {v4, p1, v6}, Lcom/amap/api/mapcore2d/ah;->a(Landroid/graphics/Canvas;Lcom/amap/api/mapcore2d/ad;)V

    .line 318
    invoke-direct {p0, v2, v0, v1}, Lcom/amap/api/mapcore2d/bc;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ak;)Lcom/amap/api/mapcore2d/ah;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore2d/ah;)V
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bc;->e(Lcom/amap/api/mapcore2d/ah;)V

    .line 154
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bc;->h()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore2d/ah;->b(I)V

    .line 155
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore2d/ap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 181
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bc;->h()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore2d/ap;->b(I)V

    .line 182
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/graphics/Rect;II)Z
    .locals 0

    .line 525
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method protected b()I
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public declared-synchronized b(Lcom/amap/api/mapcore2d/ap;)V
    .locals 1

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Landroid/view/MotionEvent;)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 482
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ah;

    .line 483
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ah;->b()Landroid/graphics/Rect;

    move-result-object v3

    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/amap/api/mapcore2d/bc;->a(Landroid/graphics/Rect;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 487
    new-instance p1, Lcom/amap/api/mapcore2d/ak;

    iget v0, v3, Landroid/graphics/Rect;->left:I

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ah;->n()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {p1, v0, v1}, Lcom/amap/api/mapcore2d/ak;-><init>(II)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/mapcore2d/ak;

    .line 489
    iput-object v2, p0, Lcom/amap/api/mapcore2d/bc;->i:Lcom/amap/api/mapcore2d/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 493
    :cond_1
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/amap/api/mapcore2d/ah;)Z
    .locals 1

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bc;->e(Lcom/amap/api/mapcore2d/ah;)V

    .line 193
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 194
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "clear"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ah;

    .line 129
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ah;->l()V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "MapOverlayImageView"

    .line 139
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/amap/api/mapcore2d/ah;)V
    .locals 3

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->j:Lcom/amap/api/mapcore2d/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 206
    monitor-exit p0

    return-void

    .line 208
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->j:Lcom/amap/api/mapcore2d/ah;

    const/high16 v1, 0x4f000000

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->j:Lcom/amap/api/mapcore2d/ah;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ah;->r()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->j:Lcom/amap/api/mapcore2d/ah;

    iget v2, p0, Lcom/amap/api/mapcore2d/bc;->k:F

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/ah;->b(F)V

    .line 216
    :cond_1
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->r()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bc;->k:F

    .line 217
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc;->j:Lcom/amap/api/mapcore2d/ah;

    .line 220
    invoke-interface {p1, v1}, Lcom/amap/api/mapcore2d/ah;->b(F)V

    .line 222
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method d()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Landroid/os/Handler;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bc;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d(Lcom/amap/api/mapcore2d/ah;)V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/mapcore2d/ak;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/mapcore2d/ak;

    .line 240
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 241
    new-instance v1, Lcom/amap/api/mapcore2d/ak;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->n()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v0}, Lcom/amap/api/mapcore2d/ak;-><init>(II)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/mapcore2d/ak;

    .line 242
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc;->i:Lcom/amap/api/mapcore2d/ah;

    .line 244
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->e()Lcom/amap/api/mapcore2d/ah;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/ah;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "showInfoWindow"

    const-string v0, "MapOverlayImageView"

    .line 246
    invoke-static {p0, v0, p1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e()Lcom/amap/api/mapcore2d/ah;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bc;->i:Lcom/amap/api/mapcore2d/ah;

    return-object p0
.end method

.method public e(Lcom/amap/api/mapcore2d/ah;)V
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bc;->f(Lcom/amap/api/mapcore2d/ah;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->s()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "destory"

    const-string v1, "MapOverlayImageView"

    .line 471
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapOverlayImageView clear erro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "amapApi"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public f(Lcom/amap/api/mapcore2d/ah;)Z
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/ah;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized g()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 497
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->b()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    .line 499
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->c()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 501
    new-instance v2, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 502
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bc;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/ah;

    .line 503
    invoke-interface {v4}, Lcom/amap/api/mapcore2d/ah;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 507
    :cond_1
    iget-object v6, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v7, v5, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v9, v5, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v5, v6

    move-wide v6, v7

    move-wide v8, v9

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/ak;)V

    .line 508
    iget v5, v2, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v6, v2, Lcom/amap/api/mapcore2d/ak;->b:I

    invoke-virtual {p0, v1, v5, v6}, Lcom/amap/api/mapcore2d/bc;->a(Landroid/graphics/Rect;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 509
    new-instance v5, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v5, v4}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/ah;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 521
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
