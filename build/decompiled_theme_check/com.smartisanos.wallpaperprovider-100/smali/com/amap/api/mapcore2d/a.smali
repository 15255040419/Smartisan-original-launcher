.class Lcom/amap/api/mapcore2d/a;
.super Ljava/lang/Object;
.source "AMapCallback.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/b;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    return-void
.end method


# virtual methods
.method protected a(Lcom/amap/api/mapcore2d/r;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->e()F

    move-result v0

    .line 65
    iget-object v1, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v2, Lcom/amap/api/mapcore2d/r$a;->h:Lcom/amap/api/mapcore2d/r$a;

    if-ne v1, v2, :cond_1

    .line 66
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    iget v2, p1, Lcom/amap/api/mapcore2d/r;->b:F

    float-to-int v2, v2

    iget p1, p1, Lcom/amap/api/mapcore2d/r;->c:F

    float-to-int p1, p1

    invoke-virtual {v1, v2, p1}, Lcom/amap/api/mapcore2d/ay;->b(II)V

    .line 69
    iget-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    goto/16 :goto_1

    .line 70
    :cond_1
    iget-object v1, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v2, Lcom/amap/api/mapcore2d/r$a;->b:Lcom/amap/api/mapcore2d/r$a;

    if-ne v1, v2, :cond_2

    .line 71
    iget-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/ay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ay;->c()Z

    goto/16 :goto_1

    .line 72
    :cond_2
    iget-object v1, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v2, Lcom/amap/api/mapcore2d/r$a;->e:Lcom/amap/api/mapcore2d/r$a;

    if-ne v1, v2, :cond_3

    .line 73
    iget-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/ay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ay;->d()Z

    goto/16 :goto_1

    .line 74
    :cond_3
    iget-object v1, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v2, Lcom/amap/api/mapcore2d/r$a;->f:Lcom/amap/api/mapcore2d/r$a;

    if-ne v1, v2, :cond_4

    .line 75
    iget p1, p1, Lcom/amap/api/mapcore2d/r;->d:F

    .line 76
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/ay;->c(F)F

    goto/16 :goto_1

    .line 77
    :cond_4
    iget-object v1, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v2, Lcom/amap/api/mapcore2d/r$a;->g:Lcom/amap/api/mapcore2d/r$a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_6

    .line 78
    iget v1, p1, Lcom/amap/api/mapcore2d/r;->e:F

    .line 79
    iget-object v2, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    add-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result v1

    .line 80
    iget-object p1, p1, Lcom/amap/api/mapcore2d/r;->h:Landroid/graphics/Point;

    sub-float v2, v1, v0

    if-eqz p1, :cond_5

    .line 83
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1, v2, p1, v3}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/Point;Z)V

    goto/16 :goto_1

    .line 85
    :cond_5
    iget-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/ay;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore2d/ay;->c(F)F

    goto :goto_1

    .line 87
    :cond_6
    iget-object v1, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v2, Lcom/amap/api/mapcore2d/r$a;->i:Lcom/amap/api/mapcore2d/r$a;

    const-wide v4, 0x412e848000000000L    # 1000000.0

    if-ne v1, v2, :cond_7

    .line 88
    iget-object p1, p1, Lcom/amap/api/mapcore2d/r;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 89
    iget-object v1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v1, v4

    double-to-int v1, v1

    .line 90
    iget-object v2, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 91
    iget-object v3, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/ay;

    move-result-object v3

    new-instance v4, Lcom/amap/api/mapcore2d/ab;

    invoke-direct {v4, v1, v2}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    iget p1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-virtual {v3, v4, p1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ab;F)V

    goto :goto_1

    .line 93
    :cond_7
    iget-object v1, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v2, Lcom/amap/api/mapcore2d/r$a;->c:Lcom/amap/api/mapcore2d/r$a;

    if-ne v1, v2, :cond_8

    .line 94
    iget-object p1, p1, Lcom/amap/api/mapcore2d/r;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 95
    iget-object v1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v1, v4

    double-to-int v1, v1

    .line 96
    iget-object p1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int p1, v2

    .line 97
    iget-object v2, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/ay;

    move-result-object v2

    new-instance v3, Lcom/amap/api/mapcore2d/ab;

    invoke-direct {v3, v1, p1}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ab;)V

    .line 98
    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Lcom/amap/api/mapcore2d/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/q;->b()V

    goto :goto_1

    .line 99
    :cond_8
    iget-object v1, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v2, Lcom/amap/api/mapcore2d/r$a;->j:Lcom/amap/api/mapcore2d/r$a;

    if-eq v1, v2, :cond_a

    iget-object v1, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v2, Lcom/amap/api/mapcore2d/r$a;->k:Lcom/amap/api/mapcore2d/r$a;

    if-ne v1, v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    .line 104
    iput-boolean v1, p1, Lcom/amap/api/mapcore2d/r;->i:Z

    goto :goto_1

    .line 101
    :cond_a
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    const-wide/16 v4, -0x1

    invoke-virtual {v1, p1, v3, v4, v5}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/r;ZJ)V

    .line 106
    :goto_1
    iget p1, p0, Lcom/amap/api/mapcore2d/a;->b:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    .line 107
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->p()Lcom/amap/api/mapcore2d/ar;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ar;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 108
    iget-object p0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->M()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_b
    :goto_2
    return-void

    :catch_0
    move-exception p0

    const-string p1, "AMapCallback"

    const-string v0, "runCameraUpdate"

    .line 111
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_3
    return-void
.end method
