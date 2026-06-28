.class public Lcom/amap/api/mapcore2d/bk$d;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Lcom/amap/api/mapcore2d/bk;

.field private c:Lcom/amap/api/mapcore2d/b;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/co;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/bk;Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .line 1349
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1347
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bk$d;->a:Z

    .line 1350
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bk$d;->c:Lcom/amap/api/mapcore2d/b;

    .line 1351
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk$d;->d:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/bk;Lcom/amap/api/mapcore2d/b;Lcom/amap/api/mapcore2d/bl;)V
    .locals 0

    .line 1344
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/bk$d;-><init>(Lcom/amap/api/mapcore2d/bk;Lcom/amap/api/mapcore2d/b;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bk$d;)Lcom/amap/api/mapcore2d/b;
    .locals 0

    .line 1344
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$d;->c:Lcom/amap/api/mapcore2d/b;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1584
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget p0, p0, Lcom/amap/api/mapcore2d/bf;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "getMaxZoomLevel"

    const-string v1, "Mediator"

    .line 1586
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public a(F)V
    .locals 12

    .line 1378
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v0, v0, Lcom/amap/api/mapcore2d/bf;->j:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 1380
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iput p1, v0, Lcom/amap/api/mapcore2d/bf;->j:F

    float-to-int v0, p1

    .line 1382
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-wide v1, v1, Lcom/amap/api/mapcore2d/bf;->d:D

    const/4 v3, 0x1

    shl-int v4, v3, v0

    int-to-double v4, v4

    div-double/2addr v1, v4

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v4, v0

    .line 1384
    sget-wide v6, Lcom/amap/api/mapcore2d/bk;->a:D

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v6, v6, Lcom/amap/api/mapcore2d/bf;->b:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    mul-double/2addr v6, v4

    double-to-int v4, v6

    iput v4, v0, Lcom/amap/api/mapcore2d/bf;->a:I

    .line 1387
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v0, v0, Lcom/amap/api/mapcore2d/bf;->a:I

    int-to-double v4, v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v0, v0, Lcom/amap/api/mapcore2d/bf;->b:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    const v0, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v0

    const/high16 v0, 0x40000000    # 2.0f

    sub-float v4, v0, v4

    .line 1394
    iget-object v5, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v6, v6, Lcom/amap/api/mapcore2d/bf;->b:I

    int-to-float v6, v6

    div-float/2addr v0, v4

    div-float/2addr v6, v0

    float-to-int v0, v6

    iput v0, v5, Lcom/amap/api/mapcore2d/bf;->a:I

    .line 1395
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v0, v0, Lcom/amap/api/mapcore2d/bf;->a:I

    int-to-double v4, v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v0, v0, Lcom/amap/api/mapcore2d/bf;->b:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v6

    :goto_0
    div-double/2addr v1, v4

    .line 1401
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iput-wide v1, v0, Lcom/amap/api/mapcore2d/bf;->k:D

    .line 1402
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->c:[F

    aput p1, v0, v3

    .line 1403
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cq;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/cq;->a(F)V

    :cond_1
    const/4 p1, 0x0

    .line 1407
    invoke-virtual {p0, p1, p1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    return-void
.end method

.method public a(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    .line 1597
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    sput p1, Lcom/amap/api/mapcore2d/v;->c:I

    iput p1, p0, Lcom/amap/api/mapcore2d/bf;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "setMaxZoomLevel"

    const-string v0, "Mediator"

    .line 1599
    invoke-static {p0, v0, p1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 1538
    sget v0, Lcom/amap/api/mapcore2d/v;->m:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/amap/api/mapcore2d/v;->n:I

    if-eq p2, v0, :cond_1

    .line 1540
    :cond_0
    sput p1, Lcom/amap/api/mapcore2d/v;->m:I

    .line 1541
    sput p2, Lcom/amap/api/mapcore2d/v;->n:I

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 1542
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ab;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1558
    :cond_0
    sget-boolean v0, Lcom/amap/api/mapcore2d/v;->p:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1560
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    .line 1561
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p1

    .line 1562
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iput-object p1, v0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    :cond_1
    const/4 p1, 0x0

    .line 1564
    invoke-virtual {p0, p1, p1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/co;)V
    .locals 0

    .line 1658
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$d;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 1677
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/co;

    .line 1678
    invoke-interface {v1, p1, p2}, Lcom/amap/api/mapcore2d/co;->a(ZZ)V

    goto :goto_0

    .line 1680
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    if-eqz p1, :cond_1

    .line 1681
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore2d/ce;->a(Z)V

    .line 1682
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 2

    .line 1606
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget p0, p0, Lcom/amap/api/mapcore2d/bf;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "getMinZoomLevel"

    const-string v1, "Mediator"

    .line 1608
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public b(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    .line 1619
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    sput p1, Lcom/amap/api/mapcore2d/v;->d:I

    iput p1, p0, Lcom/amap/api/mapcore2d/bf;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "setMinZoomLevel"

    const-string v0, "Mediator"

    .line 1621
    invoke-static {p0, v0, p1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/amap/api/mapcore2d/ab;)V
    .locals 2

    .line 1569
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->f()Lcom/amap/api/mapcore2d/ab;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 1570
    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/ab;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1572
    sget-boolean v0, Lcom/amap/api/mapcore2d/v;->p:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    .line 1574
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p1

    .line 1575
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iput-object p1, v0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    :cond_0
    const/4 p1, 0x0

    .line 1577
    invoke-virtual {p0, p1, v1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public b(Lcom/amap/api/mapcore2d/co;)V
    .locals 0

    .line 1667
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$d;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 0

    .line 1626
    sget p0, Lcom/amap/api/mapcore2d/v;->m:I

    return p0
.end method

.method public d()I
    .locals 0

    .line 1630
    sget p0, Lcom/amap/api/mapcore2d/v;->n:I

    return p0
.end method

.method public e()F
    .locals 2

    .line 1636
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget p0, p0, Lcom/amap/api/mapcore2d/bf;->j:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "getZoomLevel"

    const-string v1, "Mediator"

    .line 1638
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public f()Lcom/amap/api/mapcore2d/ab;
    .locals 2

    .line 1644
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    .line 1645
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bf;->b(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;

    move-result-object v0

    .line 1646
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->d:Lcom/amap/api/mapcore2d/bk$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->d:Lcom/amap/api/mapcore2d/bk$b;

    iget-boolean v1, v1, Lcom/amap/api/mapcore2d/bk$b;->a:Z

    if-eqz v1, :cond_0

    .line 1647
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$d;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->m:Lcom/amap/api/mapcore2d/ab;

    :cond_0
    return-object v0
.end method

.method public g()Lcom/amap/api/mapcore2d/b;
    .locals 0

    .line 1687
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$d;->c:Lcom/amap/api/mapcore2d/b;

    return-object p0
.end method
