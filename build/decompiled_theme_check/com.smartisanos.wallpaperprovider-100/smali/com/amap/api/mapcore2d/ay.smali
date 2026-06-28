.class final Lcom/amap/api/mapcore2d/ay;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/ay$b;,
        Lcom/amap/api/mapcore2d/ay$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Lcom/amap/api/mapcore2d/bk;

.field private d:Z

.field private e:Lcom/amap/api/mapcore2d/ay$b;

.field private f:Lcom/amap/api/mapcore2d/ay$a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/bk;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/amap/api/mapcore2d/ay;->a:F

    .line 33
    iput v0, p0, Lcom/amap/api/mapcore2d/ay;->b:F

    .line 36
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ay;->d:Z

    .line 38
    new-instance p1, Lcom/amap/api/mapcore2d/ay$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amap/api/mapcore2d/ay$b;-><init>(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/az;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$b;

    .line 39
    new-instance p1, Lcom/amap/api/mapcore2d/ay$a;

    invoke-direct {p1, p0, v0}, Lcom/amap/api/mapcore2d/ay$a;-><init>(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/az;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay;->f:Lcom/amap/api/mapcore2d/ay$a;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    return-object p0
.end method

.method private a(IIZZ)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 403
    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/ay;->a(IIZZI)Z

    move-result p0

    return p0
.end method

.method private a(IIZZI)Z
    .locals 7

    .line 380
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->L()V

    .line 382
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->e()F

    move-result v0

    int-to-float p5, p5

    add-float/2addr v0, p5

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->e()F

    move-result v0

    int-to-float p5, p5

    sub-float/2addr v0, p5

    .line 386
    :goto_0
    iget-object p5, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p5, p5, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p5}, Lcom/amap/api/mapcore2d/bk$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object p5

    invoke-virtual {p5, v0}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result v4

    .line 387
    iget-object p5, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p5, p5, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p5}, Lcom/amap/api/mapcore2d/bk$d;->e()F

    move-result p5

    cmpl-float p5, v4, p5

    if-eqz p5, :cond_1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    .line 388
    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/ay;->a(IIFZZ)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 392
    :goto_1
    :try_start_0
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/b;->p()Lcom/amap/api/mapcore2d/ar;

    move-result-object p2

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/ar;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 393
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->M()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p2, "zoomWithAnimation"

    const-string p3, "MapController"

    .line 396
    invoke-static {p0, p3, p2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return p1
.end method

.method private b(Lcom/amap/api/mapcore2d/ab;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    if-nez v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->f()Lcom/amap/api/mapcore2d/ab;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->b()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->a()I

    move-result p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->a()I

    move-result p0

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private c(Lcom/amap/api/mapcore2d/ab;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->L()V

    .line 123
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bk$d;->a(Lcom/amap/api/mapcore2d/ab;)V

    return-void
.end method

.method private e(F)F
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    .line 139
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->L()V

    .line 141
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result p1

    .line 142
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bk$d;->a(F)V

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->p()Lcom/amap/api/mapcore2d/ar;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->M()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "setZoom"

    const-string v1, "MapController"

    .line 148
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return p1
.end method

.method private f(F)Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->e()F

    move-result p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public a()F
    .locals 0

    .line 47
    iget p0, p0, Lcom/amap/api/mapcore2d/ay;->a:F

    return p0
.end method

.method public a(F)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/amap/api/mapcore2d/ay;->a:F

    return-void
.end method

.method public a(FF)V
    .locals 10

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_7

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    goto/16 :goto_5

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->b:Lcom/amap/api/mapcore2d/bk$e;

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 174
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk$d;->e()F

    move-result v1

    .line 175
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->b:Lcom/amap/api/mapcore2d/bk$e;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bk$e;->b()I

    move-result v2

    .line 176
    iget-object v3, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bk;->b:Lcom/amap/api/mapcore2d/bk$e;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/bk$e;->a()I

    move-result v3

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 180
    iput p1, p0, Lcom/amap/api/mapcore2d/ay;->a:F

    .line 181
    iput p2, p0, Lcom/amap/api/mapcore2d/ay;->b:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_2
    int-to-float v0, v3

    div-float/2addr v0, p1

    float-to-double v3, v0

    int-to-float p1, v2

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 190
    :try_start_1
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    .line 194
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-wide v2, v0, Lcom/amap/api/mapcore2d/bf;->k:D

    div-double/2addr v2, p1

    const/4 p1, 0x0

    .line 199
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-wide v4, p2, Lcom/amap/api/mapcore2d/bf;->d:D

    :goto_0
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    cmpl-double p2, v4, v2

    if-lez p2, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 206
    :cond_3
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-wide v4, p2, Lcom/amap/api/mapcore2d/bf;->d:D

    const/4 p2, 0x1

    shl-int/2addr p2, p1

    int-to-double v8, p2

    div-double/2addr v4, v8

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    div-double/2addr v2, v0

    int-to-double p1, p1

    add-double/2addr p1, v2

    double-to-float v0, p1

    .line 208
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ay;->d(F)F

    move-result v0

    float-to-int p1, v0

    int-to-float p1, p1

    sub-float p2, v0, p1

    float-to-double v1, p2

    .line 213
    sget-wide v3, Lcom/amap/api/mapcore2d/bk;->a:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v3, v5, v3

    const-wide v7, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v3, v7

    sub-double/2addr v5, v3

    cmpl-double v3, v1, v5

    if-lez v3, :cond_4

    .line 215
    sget-wide v0, Lcom/amap/api/mapcore2d/bk;->a:D

    :goto_1
    double-to-float p2, v0

    add-float v0, p1, p2

    goto :goto_4

    .line 217
    :cond_4
    sget-wide v3, Lcom/amap/api/mapcore2d/bk;->a:D

    cmpl-double v1, v1, v3

    const-wide v2, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    if-lez v1, :cond_5

    .line 218
    sget-wide v0, Lcom/amap/api/mapcore2d/bk;->a:D

    :goto_2
    sub-double/2addr v0, v2

    goto :goto_1

    .line 220
    :cond_5
    sget-wide v4, Lcom/amap/api/mapcore2d/bk;->a:D

    sub-double/2addr v4, v2

    double-to-float v1, v4

    cmpl-float p2, p2, v1

    if-nez p2, :cond_6

    .line 221
    sget-wide v0, Lcom/amap/api/mapcore2d/bk;->a:D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception p1

    move v0, v1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    const-string p2, "zoomToSpan"

    const-string v1, "MapController"

    .line 238
    invoke-static {p1, v1, p2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_6
    :goto_4
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ay;->c(F)F

    :cond_7
    :goto_5
    return-void
.end method

.method public a(IIFZZ)V
    .locals 6

    .line 374
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/ay$b;->a(IIFZZ)V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ab;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay;->b(Lcom/amap/api/mapcore2d/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay;->c(Lcom/amap/api/mapcore2d/ab;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ab;F)V
    .locals 1

    .line 112
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay;->b(Lcom/amap/api/mapcore2d/ab;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/ay;->f(F)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay;->c(Lcom/amap/api/mapcore2d/ab;)V

    .line 116
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/ay;->e(F)F

    .line 117
    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Lcom/amap/api/mapcore2d/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/q;->b()V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ab;I)V
    .locals 1

    .line 331
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay;->f:Lcom/amap/api/mapcore2d/ay$a;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/amap/api/mapcore2d/ay$a;->a(Lcom/amap/api/mapcore2d/ab;Landroid/os/Message;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 343
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ay$b;->a()V

    .line 344
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay;->f:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ay$a;->a()V

    return-void
.end method

.method a(I)Z
    .locals 7

    .line 306
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->c()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    .line 307
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->d()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    .line 306
    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/ay;->a(IIZZI)Z

    move-result p0

    return p0
.end method

.method public a(II)Z
    .locals 1

    const/4 v0, 0x1

    .line 320
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/amap/api/mapcore2d/ay;->a(IIZZ)Z

    move-result p0

    return p0
.end method

.method public b()F
    .locals 0

    .line 51
    iget p0, p0, Lcom/amap/api/mapcore2d/ay;->b:F

    return p0
.end method

.method public b(F)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/amap/api/mapcore2d/ay;->b:F

    return-void
.end method

.method public b(II)V
    .locals 3

    .line 348
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ay;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ay;->d:Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 356
    :cond_1
    sget-boolean v0, Lcom/amap/api/mapcore2d/v;->p:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 357
    new-instance v0, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 358
    new-instance v2, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v2, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 359
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    .line 360
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/bk$d;->e()F

    move-result p2

    .line 359
    invoke-virtual {p1, v0, v2, p2}, Lcom/amap/api/mapcore2d/bf;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    .line 364
    :cond_2
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0, v1, v1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    return-void
.end method

.method b(I)Z
    .locals 7

    .line 311
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->c()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    .line 312
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->d()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    .line 311
    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/ay;->a(IIZZI)Z

    move-result p0

    return p0
.end method

.method public c(F)F
    .locals 1

    .line 128
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay;->f(F)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay;->e(F)F

    .line 132
    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Lcom/amap/api/mapcore2d/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/q;->b()V

    return p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    .line 302
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ay;->a(I)Z

    move-result p0

    return p0
.end method

.method public d(F)F
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->b()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 246
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bk$d;->b()I

    move-result p1

    int-to-float p1, p1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->a()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 249
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->a()I

    move-result p0

    int-to-float p1, p0

    :cond_1
    return p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    .line 316
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ay;->b(I)Z

    move-result p0

    return p0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 369
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ay;->d:Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 63
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x1

    const/16 v0, 0xa

    const/16 v1, -0xa

    packed-switch p2, :pswitch_data_0

    move p1, p3

    goto :goto_0

    .line 73
    :pswitch_0
    invoke-virtual {p0, v0, p3}, Lcom/amap/api/mapcore2d/ay;->b(II)V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p0, v1, p3}, Lcom/amap/api/mapcore2d/ay;->b(II)V

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-virtual {p0, p3, v0}, Lcom/amap/api/mapcore2d/ay;->b(II)V

    goto :goto_0

    .line 76
    :pswitch_3
    invoke-virtual {p0, p3, v1}, Lcom/amap/api/mapcore2d/ay;->b(II)V

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
