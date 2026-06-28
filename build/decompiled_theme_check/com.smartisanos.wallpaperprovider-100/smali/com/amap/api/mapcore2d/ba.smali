.class public Lcom/amap/api/mapcore2d/ba;
.super Ljava/lang/Object;
.source "MapFragmentDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ag;


# static fields
.field public static volatile a:Landroid/content/Context;


# instance fields
.field private b:Lcom/amap/api/mapcore2d/ad;

.field private c:Lcom/amap/api/maps2d/AMapOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    if-nez p2, :cond_2

    .line 70
    sget-object p2, Lcom/amap/api/mapcore2d/ba;->a:Landroid/content/Context;

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/amap/api/mapcore2d/ba;->a:Landroid/content/Context;

    .line 74
    :cond_0
    sget-object p1, Lcom/amap/api/mapcore2d/ba;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ba;->g()V

    .line 79
    new-instance p1, Lcom/amap/api/mapcore2d/b;

    sget-object p2, Lcom/amap/api/mapcore2d/ba;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amap/api/mapcore2d/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    goto :goto_0

    .line 75
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->c:Lcom/amap/api/maps2d/AMapOptions;

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    const-string p1, "MapOptions"

    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps2d/AMapOptions;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ba;->c:Lcom/amap/api/maps2d/AMapOptions;

    .line 89
    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->c:Lcom/amap/api/maps2d/AMapOptions;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ba;->b(Lcom/amap/api/maps2d/AMapOptions;)V

    const/16 p1, 0x71

    const-string p2, "MapFragmentDelegateImp"

    const-string p3, "onCreateView"

    .line 90
    invoke-static {p2, p3, p1}, Lcom/amap/api/mapcore2d/cx;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    invoke-interface {p0}, Lcom/amap/api/mapcore2d/ad;->d()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public a()Lcom/amap/api/mapcore2d/ad;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    if-nez v0, :cond_1

    .line 40
    sget-object v0, Lcom/amap/api/mapcore2d/ba;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ba;->g()V

    .line 45
    new-instance v0, Lcom/amap/api/mapcore2d/b;

    sget-object v1, Lcom/amap/api/mapcore2d/ba;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    return-object p0
.end method

.method public a(Landroid/app/Activity;Lcom/amap/api/maps2d/AMapOptions;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/amap/api/mapcore2d/ba;->a:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/amap/api/mapcore2d/ba;->c:Lcom/amap/api/maps2d/AMapOptions;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/ba;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "MapFragmentDelegateImp"

    const-string p1, "onCreate"

    const/16 v0, 0x71

    .line 61
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore2d/cx;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMapOptions;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ba;->c:Lcom/amap/api/maps2d/AMapOptions;

    return-void
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    if-eqz p0, :cond_0

    .line 158
    invoke-interface {p0}, Lcom/amap/api/mapcore2d/ad;->x()V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba;->c:Lcom/amap/api/maps2d/AMapOptions;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ba;->c:Lcom/amap/api/maps2d/AMapOptions;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba;->c:Lcom/amap/api/maps2d/AMapOptions;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ba;->a()Lcom/amap/api/mapcore2d/ad;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ad;->f()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMapOptions;->camera(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/AMapOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ba;->c:Lcom/amap/api/maps2d/AMapOptions;

    .line 211
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ba;->c:Lcom/amap/api/maps2d/AMapOptions;

    const-string v0, "MapOptions"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method b(Lcom/amap/api/maps2d/AMapOptions;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getCamera()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    iget-object v2, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget v3, v0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    iget v4, v0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    iget v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    invoke-static {v2, v3, v4, v0}, Lcom/amap/api/mapcore2d/r;->a(Lcom/amap/api/maps2d/model/LatLng;FFF)Lcom/amap/api/mapcore2d/r;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/ad;->a(Lcom/amap/api/mapcore2d/r;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ad;->p()Lcom/amap/api/mapcore2d/ar;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getScrollGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ar;->e(Z)V

    .line 145
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZoomControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ar;->b(Z)V

    .line 146
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZoomGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ar;->f(Z)V

    .line 147
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getCompassEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ar;->c(Z)V

    .line 148
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getScaleControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ar;->a(Z)V

    .line 149
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getLogoPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ar;->a(I)V

    .line 150
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getMapType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ad;->a(I)V

    .line 151
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZOrderOnTop()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/amap/api/mapcore2d/ad;->a(Z)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ba;->b:Lcom/amap/api/mapcore2d/ad;

    if-eqz p0, :cond_0

    .line 165
    invoke-interface {p0}, Lcom/amap/api/mapcore2d/ad;->y()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ba;->a()Lcom/amap/api/mapcore2d/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ba;->a()Lcom/amap/api/mapcore2d/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ad;->j()V

    .line 194
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ba;->a()Lcom/amap/api/mapcore2d/ad;

    move-result-object p0

    invoke-interface {p0}, Lcom/amap/api/mapcore2d/ad;->u()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "onLowMemory"

    const-string v0, "onLowMemory run"

    .line 200
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method g()V
    .locals 3

    .line 96
    sget-object p0, Lcom/amap/api/mapcore2d/ba;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 98
    sput p0, Lcom/amap/api/mapcore2d/v;->k:I

    const/16 v0, 0x1e0

    const/16 v1, 0x140

    if-le p0, v1, :cond_1

    if-gt p0, v0, :cond_0

    const/16 v2, 0x180

    .line 102
    sput v2, Lcom/amap/api/mapcore2d/v;->i:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x200

    .line 104
    sput v2, Lcom/amap/api/mapcore2d/v;->i:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x100

    .line 109
    sput v2, Lcom/amap/api/mapcore2d/v;->i:I

    :goto_0
    const/16 v2, 0x78

    if-gt p0, v2, :cond_2

    const/high16 p0, 0x3f000000    # 0.5f

    .line 113
    sput p0, Lcom/amap/api/mapcore2d/v;->a:F

    goto :goto_1

    :cond_2
    const/16 v2, 0xa0

    if-gt p0, v2, :cond_3

    const p0, 0x3f19999a    # 0.6f

    .line 115
    sput p0, Lcom/amap/api/mapcore2d/v;->a:F

    goto :goto_1

    :cond_3
    const/16 v2, 0xf0

    if-gt p0, v2, :cond_4

    const p0, 0x3f5eb852    # 0.87f

    .line 117
    sput p0, Lcom/amap/api/mapcore2d/v;->a:F

    goto :goto_1

    :cond_4
    if-gt p0, v1, :cond_5

    const/high16 p0, 0x3f800000    # 1.0f

    .line 119
    sput p0, Lcom/amap/api/mapcore2d/v;->a:F

    goto :goto_1

    :cond_5
    if-gt p0, v0, :cond_6

    const/high16 p0, 0x3fc00000    # 1.5f

    .line 122
    sput p0, Lcom/amap/api/mapcore2d/v;->a:F

    goto :goto_1

    :cond_6
    const p0, 0x3fe66666    # 1.8f

    .line 131
    sput p0, Lcom/amap/api/mapcore2d/v;->a:F

    :goto_1
    return-void
.end method
