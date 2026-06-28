.class Lcom/amap/api/mapcore2d/av$2;
.super Ljava/lang/Object;
.source "LocationView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/av;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/bb;Lcom/amap/api/mapcore2d/ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/av;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/av;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amap/api/mapcore2d/av$2;->a:Lcom/amap/api/mapcore2d/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 67
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av$2;->a:Lcom/amap/api/mapcore2d/av;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/av;->a(Lcom/amap/api/mapcore2d/av;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av$2;->a:Lcom/amap/api/mapcore2d/av;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/av;->c(Lcom/amap/api/mapcore2d/av;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/mapcore2d/av$2;->a:Lcom/amap/api/mapcore2d/av;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/av;->b(Lcom/amap/api/mapcore2d/av;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 74
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av$2;->a:Lcom/amap/api/mapcore2d/av;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/av;->c(Lcom/amap/api/mapcore2d/av;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/av$2;->a:Lcom/amap/api/mapcore2d/av;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/av;->d(Lcom/amap/api/mapcore2d/av;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av$2;->a:Lcom/amap/api/mapcore2d/av;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/av;->e(Lcom/amap/api/mapcore2d/av;)Lcom/amap/api/mapcore2d/ad;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amap/api/mapcore2d/ad;->c(Z)V

    .line 76
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av$2;->a:Lcom/amap/api/mapcore2d/av;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/av;->e(Lcom/amap/api/mapcore2d/av;)Lcom/amap/api/mapcore2d/ad;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ad;->o()Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 80
    :cond_2
    new-instance p2, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 81
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {p2, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 82
    iget-object v1, p0, Lcom/amap/api/mapcore2d/av$2;->a:Lcom/amap/api/mapcore2d/av;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/av;->e(Lcom/amap/api/mapcore2d/av;)Lcom/amap/api/mapcore2d/ad;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amap/api/mapcore2d/ad;->a(Landroid/location/Location;)V

    .line 83
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av$2;->a:Lcom/amap/api/mapcore2d/av;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/av;->e(Lcom/amap/api/mapcore2d/av;)Lcom/amap/api/mapcore2d/ad;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/mapcore2d/av$2;->a:Lcom/amap/api/mapcore2d/av;

    .line 84
    invoke-static {p0}, Lcom/amap/api/mapcore2d/av;->e(Lcom/amap/api/mapcore2d/av;)Lcom/amap/api/mapcore2d/ad;

    move-result-object p0

    invoke-interface {p0}, Lcom/amap/api/mapcore2d/ad;->e()F

    move-result p0

    .line 83
    invoke-static {p2, p0}, Lcom/amap/api/mapcore2d/r;->a(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/mapcore2d/r;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/amap/api/mapcore2d/ad;->a(Lcom/amap/api/mapcore2d/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "onTouch"

    const-string p2, "LocationView"

    .line 86
    invoke-static {p0, p2, p1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v0
.end method
