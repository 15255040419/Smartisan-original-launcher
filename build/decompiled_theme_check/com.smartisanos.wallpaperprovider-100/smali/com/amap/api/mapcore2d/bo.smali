.class Lcom/amap/api/mapcore2d/bo;
.super Ljava/lang/Object;
.source "MyLocationOverlay.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/ad;

.field private b:Lcom/amap/api/mapcore2d/ah;

.field private c:Lcom/amap/api/mapcore2d/ae;

.field private d:Lcom/amap/api/maps2d/model/MyLocationStyle;

.field private e:Lcom/amap/api/maps2d/model/LatLng;

.field private f:D


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ad;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bo;->a:Lcom/amap/api/mapcore2d/ad;

    return-void
.end method

.method private b()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->d:Lcom/amap/api/maps2d/model/MyLocationStyle;

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bo;->c()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bo;->d()V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 6

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->a:Lcom/amap/api/mapcore2d/ad;

    new-instance v1, Lcom/amap/api/maps2d/model/CircleOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/CircleOptions;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->strokeWidth(F)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v1

    const/16 v2, 0x14

    const/16 v3, 0xb4

    const/4 v4, 0x0

    .line 111
    invoke-static {v2, v4, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->fillColor(I)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v1

    const/16 v2, 0xff

    const/16 v3, 0xdc

    .line 112
    invoke-static {v2, v4, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->strokeColor(I)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 113
    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->center(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v1

    .line 110
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ad;->a(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bo;->c:Lcom/amap/api/mapcore2d/ae;

    .line 114
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->c:Lcom/amap/api/mapcore2d/ae;

    const-wide/high16 v1, 0x4069000000000000L    # 200.0

    invoke-interface {v0, v1, v2}, Lcom/amap/api/mapcore2d/ae;->a(D)V

    .line 115
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->a:Lcom/amap/api/mapcore2d/ad;

    new-instance v1, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    const/high16 v2, 0x3f000000    # 0.5f

    .line 117
    invoke-virtual {v1, v2, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amap/api/mapcore2d/ao$a;->c:Lcom/amap/api/mapcore2d/ao$a;

    .line 120
    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/ao$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v2}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 121
    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    .line 116
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ad;->b(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/mapcore2d/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bo;->b:Lcom/amap/api/mapcore2d/ah;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "defaultLocStyle"

    const-string v1, "MyLocationOverlay"

    .line 123
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->d:Lcom/amap/api/maps2d/model/MyLocationStyle;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->a:Lcom/amap/api/mapcore2d/ad;

    new-instance v1, Lcom/amap/api/maps2d/model/CircleOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/CircleOptions;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bo;->d:Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 133
    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->strokeWidth(F)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bo;->d:Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 134
    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getRadiusFillColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->fillColor(I)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bo;->d:Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 135
    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getStrokeColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->strokeColor(I)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 136
    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->center(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v1

    .line 132
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ad;->a(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bo;->c:Lcom/amap/api/mapcore2d/ae;

    .line 137
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->c:Lcom/amap/api/mapcore2d/ae;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bo;->e:Lcom/amap/api/maps2d/model/LatLng;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ae;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->c:Lcom/amap/api/mapcore2d/ae;

    iget-wide v1, p0, Lcom/amap/api/mapcore2d/bo;->f:D

    invoke-interface {v0, v1, v2}, Lcom/amap/api/mapcore2d/ae;->a(D)V

    .line 141
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->a:Lcom/amap/api/mapcore2d/ad;

    new-instance v1, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bo;->d:Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 142
    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getAnchorU()F

    move-result v2

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bo;->d:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v5}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getAnchorV()F

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bo;->d:Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 143
    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 144
    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    .line 141
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ad;->b(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/mapcore2d/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bo;->b:Lcom/amap/api/mapcore2d/ah;

    .line 145
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->b:Lcom/amap/api/mapcore2d/ah;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bo;->e:Lcom/amap/api/maps2d/model/LatLng;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore2d/ah;->b(Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 149
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->c:Lcom/amap/api/mapcore2d/ae;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bo;->a:Lcom/amap/api/mapcore2d/ad;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amap/api/mapcore2d/ad;->a(Ljava/lang/String;)Z

    .line 79
    iput-object v1, p0, Lcom/amap/api/mapcore2d/bo;->c:Lcom/amap/api/mapcore2d/ae;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->b:Lcom/amap/api/mapcore2d/ah;

    if-eqz v0, :cond_1

    .line 82
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bo;->a:Lcom/amap/api/mapcore2d/ad;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ah;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amap/api/mapcore2d/ad;->b(Ljava/lang/String;)Z

    .line 83
    iput-object v1, p0, Lcom/amap/api/mapcore2d/bo;->b:Lcom/amap/api/mapcore2d/ah;

    :cond_1
    return-void
.end method

.method public a(F)V
    .locals 1

    .line 155
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bo;->b:Lcom/amap/api/mapcore2d/ah;

    if-eqz p0, :cond_0

    .line 157
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amap/api/mapcore2d/ah;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "setRotateAngle"

    const-string v0, "MyLocationOverlay"

    .line 159
    invoke-static {p0, v0, p1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/model/LatLng;D)V
    .locals 2

    .line 49
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bo;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 50
    iput-wide p2, p0, Lcom/amap/api/mapcore2d/bo;->f:D

    .line 51
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->b:Lcom/amap/api/mapcore2d/ah;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->c:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bo;->b()V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->b:Lcom/amap/api/mapcore2d/ah;

    if-nez v0, :cond_1

    return-void

    .line 57
    :cond_1
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ah;->b(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bo;->c:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_2

    .line 61
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bo;->c:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {p0, p2, p3}, Lcom/amap/api/mapcore2d/ae;->a(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "setCentAndRadius"

    const-string p2, "MyLocationOverlay"

    .line 64
    invoke-static {p0, p2, p1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/model/MyLocationStyle;)V
    .locals 2

    .line 34
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bo;->d:Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 35
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bo;->b:Lcom/amap/api/mapcore2d/ah;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/mapcore2d/bo;->c:Lcom/amap/api/mapcore2d/ae;

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bo;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "setMyLocationStyle"

    const-string v1, "MyLocationOverlay"

    .line 41
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bo;->d()V

    return-void
.end method
