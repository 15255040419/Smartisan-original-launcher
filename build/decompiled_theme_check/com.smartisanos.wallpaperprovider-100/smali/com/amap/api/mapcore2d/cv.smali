.class public Lcom/amap/api/mapcore2d/cv;
.super Ljava/lang/Object;
.source "NaviveCoordConver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 5

    .line 13
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/fj;->a(DD)[D

    move-result-object p0

    .line 15
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    const/4 v1, 0x1

    aget-wide v1, p0, v1

    const/4 v3, 0x0

    aget-wide v3, p0, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v0
.end method
