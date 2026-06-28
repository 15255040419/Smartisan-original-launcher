.class Lcom/amap/api/mapcore2d/bt;
.super Ljava/lang/Object;
.source "ProjectionDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/an;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amap/api/mapcore2d/ad;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ad;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ProjectionDelegateImp"

    .line 13
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bt;->b:Lcom/amap/api/mapcore2d/ad;

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/maps2d/model/LatLng;)Landroid/graphics/Point;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    new-instance v6, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 30
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->b:Lcom/amap/api/mapcore2d/ad;

    iget-wide v1, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/mapcore2d/ad;->b(DDLcom/amap/api/mapcore2d/ak;)V

    .line 32
    new-instance p0, Landroid/graphics/Point;

    iget p1, v6, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v0, v6, Lcom/amap/api/mapcore2d/ak;->b:I

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/x;-><init>()V

    .line 23
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bt;->b:Lcom/amap/api/mapcore2d/ad;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v1, p1, v0}, Lcom/amap/api/mapcore2d/ad;->a(IILcom/amap/api/mapcore2d/x;)V

    .line 24
    new-instance p0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, v0, Lcom/amap/api/mapcore2d/x;->b:D

    iget-wide v3, v0, Lcom/amap/api/mapcore2d/x;->a:D

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object p0
.end method

.method public a()Lcom/amap/api/maps2d/model/VisibleRegion;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->b:Lcom/amap/api/mapcore2d/ad;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ad;->b()I

    move-result v1

    .line 47
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bt;->b:Lcom/amap/api/mapcore2d/ad;

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ad;->c()I

    move-result v2

    .line 48
    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore2d/bt;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 49
    :try_start_1
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v5}, Lcom/amap/api/mapcore2d/bt;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 50
    :try_start_2
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v6}, Lcom/amap/api/mapcore2d/bt;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 51
    :try_start_3
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v6}, Lcom/amap/api/mapcore2d/bt;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    :try_start_4
    invoke-static {}, Lcom/amap/api/maps2d/model/LatLngBounds;->builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v1, v0

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object v1, v0

    move-object v4, v1

    goto :goto_1

    :catchall_3
    move-exception v2

    move-object v1, v0

    move-object v4, v1

    goto :goto_0

    :catchall_4
    move-exception v2

    move-object v1, v0

    move-object v3, v1

    move-object v4, v3

    :goto_0
    move-object v5, v4

    .line 57
    :goto_1
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/String;

    const-string v6, "getVisibleRegion"

    invoke-static {v2, p0, v6}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v12, v0

    move-object v9, v1

    move-object v10, v3

    move-object v8, v4

    move-object v11, v5

    .line 59
    new-instance p0, Lcom/amap/api/maps2d/model/VisibleRegion;

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/amap/api/maps2d/model/VisibleRegion;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V

    return-object p0
.end method

.method public b(Lcom/amap/api/maps2d/model/LatLng;)Landroid/graphics/PointF;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    new-instance v6, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/x;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->b:Lcom/amap/api/mapcore2d/ad;

    iget-wide v1, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/mapcore2d/ad;->a(DDLcom/amap/api/mapcore2d/x;)V

    .line 67
    new-instance p0, Landroid/graphics/PointF;

    iget-wide v0, v6, Lcom/amap/api/mapcore2d/x;->a:D

    double-to-float p1, v0

    iget-wide v0, v6, Lcom/amap/api/mapcore2d/x;->b:D

    double-to-float v0, v0

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method
