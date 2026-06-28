.class Lcom/amap/api/mapcore2d/bi;
.super Ljava/lang/Object;
.source "MarkerDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ah;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/bi$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:F

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/amap/api/maps2d/model/LatLng;

.field private h:Lcom/amap/api/maps2d/model/LatLng;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:F

.field private l:F

.field private m:Z

.field private n:Z

.field private o:Lcom/amap/api/mapcore2d/bc;

.field private p:Ljava/lang/Object;

.field private q:Z

.field private r:Lcom/amap/api/mapcore2d/bi$a;

.field private s:Z

.field private t:I

.field private u:I

.field private v:F

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/amap/api/mapcore2d/bc;)V
    .locals 6

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/amap/api/mapcore2d/bi;->b:I

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/amap/api/mapcore2d/bi;->c:F

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v1, 0x14

    .line 29
    iput v1, p0, Lcom/amap/api/mapcore2d/bi;->e:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 36
    iput v1, p0, Lcom/amap/api/mapcore2d/bi;->k:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    iput v1, p0, Lcom/amap/api/mapcore2d/bi;->l:F

    .line 38
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bi;->m:Z

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bi;->n:Z

    .line 42
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bi;->q:Z

    .line 44
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bi;->s:Z

    .line 140
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    .line 141
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->isGps()Z

    move-result p2

    iput-boolean p2, p0, Lcom/amap/api/mapcore2d/bi;->q:Z

    .line 142
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getZIndex()F

    move-result p2

    iput p2, p0, Lcom/amap/api/mapcore2d/bi;->v:F

    .line 143
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 144
    iget-boolean p2, p0, Lcom/amap/api/mapcore2d/bi;->q:Z

    if-eqz p2, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p2

    iget-wide v2, p2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 148
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p2

    iget-wide v4, p2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 146
    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore2d/fj;->a(DD)[D

    move-result-object p2

    .line 149
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    aget-wide v3, p2, v1

    aget-wide v0, p2, v0

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/bi;->h:Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "MarkerDelegateImp"

    .line 151
    invoke-static {p2, v0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bi;->h:Lcom/amap/api/maps2d/model/LatLng;

    .line 155
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bi;->g:Lcom/amap/api/maps2d/model/LatLng;

    .line 157
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getAnchorU()F

    move-result p2

    iput p2, p0, Lcom/amap/api/mapcore2d/bi;->k:F

    .line 158
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getAnchorV()F

    move-result p2

    iput p2, p0, Lcom/amap/api/mapcore2d/bi;->l:F

    .line 160
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->isVisible()Z

    move-result p2

    iput-boolean p2, p0, Lcom/amap/api/mapcore2d/bi;->n:Z

    .line 161
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bi;->j:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bi;->i:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->isDraggable()Z

    move-result p2

    iput-boolean p2, p0, Lcom/amap/api/mapcore2d/bi;->m:Z

    .line 164
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPeriod()I

    move-result p2

    iput p2, p0, Lcom/amap/api/mapcore2d/bi;->e:I

    .line 165
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->d()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bi;->f:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getIcons()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore2d/bi;->b(Ljava/util/ArrayList;)V

    .line 168
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p2, :cond_2

    .line 169
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 170
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getIcon()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bi;->b(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bi;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/amap/api/mapcore2d/bi;->b:I

    return p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bi;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/bi;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/amap/api/mapcore2d/bi;->b:I

    return p0
.end method

.method private b(FF)Lcom/amap/api/mapcore2d/ak;
    .locals 9

    .line 275
    iget p0, p0, Lcom/amap/api/mapcore2d/bi;->c:F

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float p0, v0

    .line 276
    new-instance v0, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    float-to-double v1, p1

    float-to-double p0, p0

    .line 277
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    float-to-double v5, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    double-to-int p2, v3

    iput p2, v0, Lcom/amap/api/mapcore2d/ak;->a:I

    .line 278
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v1, p0

    sub-double/2addr v5, v1

    double-to-int p0, v5

    iput p0, v0, Lcom/amap/api/mapcore2d/ak;->b:I

    return-object v0
.end method

.method private b(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->w()V

    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->clone()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/bi;)I
    .locals 2

    .line 20
    iget v0, p0, Lcom/amap/api/mapcore2d/bi;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/bi;->b:I

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 53
    sget v0, Lcom/amap/api/mapcore2d/bi;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore2d/bi;->a:I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/amap/api/mapcore2d/bi;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/bi;)Lcom/amap/api/mapcore2d/bc;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/bi;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/amap/api/mapcore2d/bi;->e:I

    return p0
.end method


# virtual methods
.method public A()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 379
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->A()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 375
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->w()V

    .line 376
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_2
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    return-object p0
.end method

.method public B()F
    .locals 0

    .line 438
    iget p0, p0, Lcom/amap/api/mapcore2d/bi;->k:F

    return p0
.end method

.method public C()F
    .locals 0

    .line 443
    iget p0, p0, Lcom/amap/api/mapcore2d/bi;->l:F

    return p0
.end method

.method public a(F)V
    .locals 1

    neg-float p1, p1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    .line 453
    iput p1, p0, Lcom/amap/api/mapcore2d/bi;->c:F

    .line 454
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 455
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/bc;->e(Lcom/amap/api/mapcore2d/ah;)V

    .line 456
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/bc;->d(Lcom/amap/api/mapcore2d/ah;)V

    .line 458
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public a(FF)V
    .locals 1

    .line 425
    iget v0, p0, Lcom/amap/api/mapcore2d/bi;->k:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore2d/bi;->l:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    .line 427
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore2d/bi;->k:F

    .line 428
    iput p2, p0, Lcom/amap/api/mapcore2d/bi;->l:F

    .line 429
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 430
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/bc;->e(Lcom/amap/api/mapcore2d/ah;)V

    .line 431
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/bc;->d(Lcom/amap/api/mapcore2d/ah;)V

    .line 433
    :cond_1
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 531
    iput v0, p0, Lcom/amap/api/mapcore2d/bi;->e:I

    goto :goto_0

    .line 533
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore2d/bi;->e:I

    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 581
    iput p1, p0, Lcom/amap/api/mapcore2d/bi;->t:I

    .line 582
    iput p2, p0, Lcom/amap/api/mapcore2d/bi;->u:I

    const/4 p1, 0x1

    .line 583
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bi;->s:Z

    .line 591
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->i()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lcom/amap/api/mapcore2d/ad;)V
    .locals 5

    .line 477
    iget-boolean p2, p0, Lcom/amap/api/mapcore2d/bi;->n:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 478
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->A()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->q()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 483
    new-instance p2, Lcom/amap/api/mapcore2d/ak;

    iget v0, p0, Lcom/amap/api/mapcore2d/bi;->t:I

    iget v1, p0, Lcom/amap/api/mapcore2d/bi;->u:I

    invoke-direct {p2, v0, v1}, Lcom/amap/api/mapcore2d/ak;-><init>(II)V

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->z()Lcom/amap/api/mapcore2d/ak;

    move-result-object p2

    .line 488
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->p()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 492
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_3

    .line 493
    iget v1, p0, Lcom/amap/api/mapcore2d/bi;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 494
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    .line 495
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_5

    .line 497
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 498
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 499
    iget v1, p0, Lcom/amap/api/mapcore2d/bi;->c:F

    iget v2, p2, Lcom/amap/api/mapcore2d/ak;->a:I

    int-to-float v2, v2

    iget v4, p2, Lcom/amap/api/mapcore2d/ak;->b:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 501
    iget v1, p2, Lcom/amap/api/mapcore2d/ak;->a:I

    int-to-float v1, v1

    .line 502
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->B()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget p2, p2, Lcom/amap/api/mapcore2d/ak;->b:I

    int-to-float p2, p2

    .line 503
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->C()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p0, v2

    sub-float/2addr p2, p0

    .line 501
    invoke-virtual {p1, v0, v1, p2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 504
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 359
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 363
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 366
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/bc;->e(Lcom/amap/api/mapcore2d/ah;)V

    .line 367
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/bc;->d(Lcom/amap/api/mapcore2d/ah;)V

    .line 369
    :cond_1
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bi;->q:Z

    if-eqz v0, :cond_0

    .line 326
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bi;->h:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0

    .line 328
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bi;->g:Lcom/amap/api/maps2d/model/LatLng;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bi;->p:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bi;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 548
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bi;->b(Ljava/util/ArrayList;)V

    .line 549
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bi;->r:Lcom/amap/api/mapcore2d/bi$a;

    if-nez p1, :cond_1

    .line 550
    new-instance p1, Lcom/amap/api/mapcore2d/bi$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amap/api/mapcore2d/bi$a;-><init>(Lcom/amap/api/mapcore2d/bi;Lcom/amap/api/mapcore2d/bj;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bi;->r:Lcom/amap/api/mapcore2d/bi$a;

    .line 551
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bi;->r:Lcom/amap/api/mapcore2d/bi$a;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bi$a;->start()V

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 554
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/bc;->e(Lcom/amap/api/mapcore2d/ah;)V

    .line 555
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/bc;->d(Lcom/amap/api/mapcore2d/ah;)V

    .line 557
    :cond_2
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bi;->m:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bc;->b(Lcom/amap/api/mapcore2d/ah;)Z

    move-result p0

    return p0
.end method

.method public a(Lcom/amap/api/mapcore2d/ah;)Z
    .locals 1

    .line 463
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->d()Ljava/lang/String;

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

.method public b()Landroid/graphics/Rect;
    .locals 10

    .line 239
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->z()Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->n()I

    move-result v1

    .line 244
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->y()I

    move-result v2

    .line 245
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 246
    iget v4, p0, Lcom/amap/api/mapcore2d/bi;->c:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_1

    .line 247
    iget v4, v0, Lcom/amap/api/mapcore2d/ak;->b:I

    int-to-float v4, v4

    int-to-float v2, v2

    iget v6, p0, Lcom/amap/api/mapcore2d/bi;->l:F

    mul-float/2addr v6, v2

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 248
    iget v4, v0, Lcom/amap/api/mapcore2d/ak;->a:I

    int-to-float v4, v4

    iget v6, p0, Lcom/amap/api/mapcore2d/bi;->k:F

    int-to-float v1, v1

    mul-float/2addr v6, v1

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 249
    iget v4, v0, Lcom/amap/api/mapcore2d/ak;->b:I

    int-to-float v4, v4

    iget v6, p0, Lcom/amap/api/mapcore2d/bi;->l:F

    sub-float v6, v5, v6

    mul-float/2addr v2, v6

    add-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 250
    iget v0, v0, Lcom/amap/api/mapcore2d/ak;->a:I

    int-to-float v0, v0

    iget p0, p0, Lcom/amap/api/mapcore2d/bi;->k:F

    sub-float/2addr v5, p0

    mul-float/2addr v5, v1

    add-float/2addr v0, v5

    float-to-int p0, v0

    iput p0, v3, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 252
    :cond_1
    iget v4, p0, Lcom/amap/api/mapcore2d/bi;->k:F

    neg-float v4, v4

    int-to-float v1, v1

    mul-float/2addr v4, v1

    iget v6, p0, Lcom/amap/api/mapcore2d/bi;->l:F

    sub-float/2addr v6, v5

    int-to-float v2, v2

    mul-float/2addr v6, v2

    invoke-direct {p0, v4, v6}, Lcom/amap/api/mapcore2d/bi;->b(FF)Lcom/amap/api/mapcore2d/ak;

    move-result-object v4

    .line 254
    iget v6, p0, Lcom/amap/api/mapcore2d/bi;->k:F

    neg-float v6, v6

    mul-float/2addr v6, v1

    iget v7, p0, Lcom/amap/api/mapcore2d/bi;->l:F

    mul-float/2addr v7, v2

    invoke-direct {p0, v6, v7}, Lcom/amap/api/mapcore2d/bi;->b(FF)Lcom/amap/api/mapcore2d/ak;

    move-result-object v6

    .line 256
    iget v7, p0, Lcom/amap/api/mapcore2d/bi;->k:F

    sub-float v7, v5, v7

    mul-float/2addr v7, v1

    iget v8, p0, Lcom/amap/api/mapcore2d/bi;->l:F

    mul-float/2addr v8, v2

    invoke-direct {p0, v7, v8}, Lcom/amap/api/mapcore2d/bi;->b(FF)Lcom/amap/api/mapcore2d/ak;

    move-result-object v7

    .line 258
    iget v8, p0, Lcom/amap/api/mapcore2d/bi;->k:F

    sub-float v8, v5, v8

    mul-float/2addr v8, v1

    iget v1, p0, Lcom/amap/api/mapcore2d/bi;->l:F

    sub-float/2addr v1, v5

    mul-float/2addr v1, v2

    invoke-direct {p0, v8, v1}, Lcom/amap/api/mapcore2d/bi;->b(FF)Lcom/amap/api/mapcore2d/ak;

    move-result-object p0

    .line 260
    iget v1, v0, Lcom/amap/api/mapcore2d/ak;->b:I

    iget v2, v4, Lcom/amap/api/mapcore2d/ak;->b:I

    iget v5, v6, Lcom/amap/api/mapcore2d/ak;->b:I

    iget v8, v7, Lcom/amap/api/mapcore2d/ak;->b:I

    iget v9, p0, Lcom/amap/api/mapcore2d/ak;->b:I

    .line 261
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 262
    iget v1, v0, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v2, v4, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v5, v6, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v8, v7, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v9, p0, Lcom/amap/api/mapcore2d/ak;->a:I

    .line 263
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 264
    iget v1, v0, Lcom/amap/api/mapcore2d/ak;->b:I

    iget v2, v4, Lcom/amap/api/mapcore2d/ak;->b:I

    iget v5, v6, Lcom/amap/api/mapcore2d/ak;->b:I

    iget v8, v7, Lcom/amap/api/mapcore2d/ak;->b:I

    iget v9, p0, Lcom/amap/api/mapcore2d/ak;->b:I

    .line 265
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 266
    iget v0, v0, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v1, v4, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v2, v6, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v4, v7, Lcom/amap/api/mapcore2d/ak;->a:I

    iget p0, p0, Lcom/amap/api/mapcore2d/ak;->a:I

    .line 267
    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr v0, p0

    iput v0, v3, Landroid/graphics/Rect;->right:I

    :goto_0
    return-object v3
.end method

.method public b(F)V
    .locals 0

    .line 631
    iput p1, p0, Lcom/amap/api/mapcore2d/bi;->v:F

    .line 632
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->d()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 643
    iput p1, p0, Lcom/amap/api/mapcore2d/bi;->w:I

    return-void
.end method

.method public b(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 7

    .line 308
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bi;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 310
    :try_start_0
    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore2d/fj;->a(DD)[D

    move-result-object v0

    .line 312
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    aget-wide v5, v0, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/bi;->h:Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "setPosition"

    const-string v3, "MarkerDelegateImp"

    .line 314
    invoke-static {v0, v3, v2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bi;->h:Lcom/amap/api/maps2d/model/LatLng;

    .line 318
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bi;->s:Z

    .line 319
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bi;->g:Lcom/amap/api/maps2d/model/LatLng;

    .line 320
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bi;->j:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->w()V

    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    if-eqz v1, :cond_0

    .line 117
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->clone()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    .line 121
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bi;->r:Lcom/amap/api/mapcore2d/bi$a;

    if-nez p1, :cond_2

    .line 122
    new-instance p1, Lcom/amap/api/mapcore2d/bi$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amap/api/mapcore2d/bi$a;-><init>(Lcom/amap/api/mapcore2d/bi;Lcom/amap/api/mapcore2d/bj;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bi;->r:Lcom/amap/api/mapcore2d/bi$a;

    .line 123
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bi;->r:Lcom/amap/api/mapcore2d/bi$a;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bi$a;->start()V

    .line 127
    :cond_2
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 411
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bi;->n:Z

    if-nez p1, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/bc;->e(Lcom/amap/api/mapcore2d/ah;)V

    .line 415
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public c()Lcom/amap/api/maps2d/model/LatLng;
    .locals 5

    .line 520
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bi;->s:Z

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/x;-><init>()V

    .line 522
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    iget v2, p0, Lcom/amap/api/mapcore2d/bi;->t:I

    iget p0, p0, Lcom/amap/api/mapcore2d/bi;->u:I

    invoke-virtual {v1, v2, p0, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/x;)V

    .line 523
    new-instance p0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, v0, Lcom/amap/api/mapcore2d/x;->b:D

    iget-wide v3, v0, Lcom/amap/api/mapcore2d/x;->a:D

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object p0

    .line 525
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bi;->q:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->h:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->g:Lcom/amap/api/maps2d/model/LatLng;

    :goto_0
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Marker"

    .line 300
    invoke-static {v0}, Lcom/amap/api/mapcore2d/bi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->f:Ljava/lang/String;

    .line 302
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e()Lcom/amap/api/mapcore2d/x;
    .locals 3

    .line 210
    new-instance v0, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/x;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->n()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore2d/bi;->k:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/amap/api/mapcore2d/x;->a:D

    .line 213
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->y()I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Lcom/amap/api/mapcore2d/bi;->l:F

    mul-float/2addr v1, p0

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/amap/api/mapcore2d/x;->b:D

    :cond_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->i:Ljava/lang/String;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->j:Ljava/lang/String;

    return-object p0
.end method

.method public h()Z
    .locals 0

    .line 386
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/bi;->m:Z

    return p0
.end method

.method public i()V
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bc;->d(Lcom/amap/api/mapcore2d/ah;)V

    return-void
.end method

.method public j()V
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bc;->e(Lcom/amap/api/mapcore2d/ah;)V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bc;->f(Lcom/amap/api/mapcore2d/ah;)Z

    move-result p0

    return p0
.end method

.method public l()V
    .locals 4

    const/4 v0, 0x0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v1, :cond_0

    .line 72
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->g:Lcom/amap/api/maps2d/model/LatLng;

    .line 73
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->p:Ljava/lang/Object;

    .line 74
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->r:Lcom/amap/api/mapcore2d/bi$a;

    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 78
    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 84
    :cond_2
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->g:Lcom/amap/api/maps2d/model/LatLng;

    .line 86
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->p:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "destroy"

    const-string v3, "MarkerDelegateImp"

    .line 94
    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "destroy erro"

    const-string v2, "MarkerDelegateImp destroy"

    .line 95
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_1
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->r:Lcom/amap/api/mapcore2d/bi$a;

    return-void
.end method

.method public m()I
    .locals 0

    .line 472
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public n()I
    .locals 0

    .line 200
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->A()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getWidth()I

    move-result p0

    return p0
.end method

.method public o()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    iget p0, p0, Lcom/amap/api/mapcore2d/bi;->e:I

    return p0
.end method

.method public p()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 565
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public q()Z
    .locals 0

    .line 598
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/bi;->s:Z

    return p0
.end method

.method public r()F
    .locals 0

    .line 637
    iget p0, p0, Lcom/amap/api/mapcore2d/bi;->v:F

    return p0
.end method

.method public s()Z
    .locals 0

    .line 420
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/bi;->n:Z

    return p0
.end method

.method public t()Lcom/amap/api/maps2d/model/LatLng;
    .locals 5

    .line 289
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bi;->s:Z

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/x;-><init>()V

    .line 291
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/b;

    iget v2, p0, Lcom/amap/api/mapcore2d/bi;->t:I

    iget p0, p0, Lcom/amap/api/mapcore2d/bi;->u:I

    invoke-virtual {v1, v2, p0, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/x;)V

    .line 292
    new-instance p0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, v0, Lcom/amap/api/mapcore2d/x;->b:D

    iget-wide v3, v0, Lcom/amap/api/mapcore2d/x;->a:D

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object p0

    .line 294
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->g:Lcom/amap/api/maps2d/model/LatLng;

    return-object p0
.end method

.method public u()Ljava/lang/Object;
    .locals 0

    .line 515
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->p:Ljava/lang/Object;

    return-object p0
.end method

.method public v()I
    .locals 0

    .line 650
    iget p0, p0, Lcom/amap/api/mapcore2d/bi;->w:I

    return p0
.end method

.method w()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :goto_0
    return-void
.end method

.method public x()Lcom/amap/api/mapcore2d/ak;
    .locals 7

    .line 178
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 183
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/bi;->q:Z

    const-wide v2, 0x412e848000000000L    # 1000000.0

    if-eqz v1, :cond_1

    .line 184
    new-instance v1, Lcom/amap/api/mapcore2d/ab;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v4, v2

    double-to-int v4, v4

    .line 185
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v5

    iget-wide v5, v5, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v5, v2

    double-to-int v2, v5

    invoke-direct {v1, v4, v2}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    goto :goto_0

    .line 187
    :cond_1
    new-instance v1, Lcom/amap/api/mapcore2d/ab;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v4, v2

    double-to-int v4, v4

    .line 188
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v5

    iget-wide v5, v5, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v5, v2

    double-to-int v2, v5

    invoke-direct {v1, v4, v2}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    .line 190
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 191
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bi;->o:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->r()Lcom/amap/api/mapcore2d/bs;

    move-result-object p0

    invoke-interface {p0, v1, v2}, Lcom/amap/api/mapcore2d/bs;->a(Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 192
    iget p0, v2, Landroid/graphics/Point;->x:I

    iput p0, v0, Lcom/amap/api/mapcore2d/ak;->a:I

    .line 193
    iget p0, v2, Landroid/graphics/Point;->y:I

    iput p0, v0, Lcom/amap/api/mapcore2d/ak;->b:I

    return-object v0
.end method

.method public y()I
    .locals 0

    .line 205
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->A()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getHeight()I

    move-result p0

    return p0
.end method

.method public z()Lcom/amap/api/mapcore2d/ak;
    .locals 0

    .line 228
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bi;->x()Lcom/amap/api/mapcore2d/ak;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method
