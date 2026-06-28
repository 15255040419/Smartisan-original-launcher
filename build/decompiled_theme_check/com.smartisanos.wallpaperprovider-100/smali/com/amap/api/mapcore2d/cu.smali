.class public Lcom/amap/api/mapcore2d/cu;
.super Ljava/lang/Object;
.source "MapbarCoordConver.java"


# static fields
.field static a:D = 3.141592653589793


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DD)D
    .locals 6

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    div-double v2, p2, v0

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x40d1940000000000L    # 18000.0

    div-double v4, p0, v4

    mul-double/2addr v2, v4

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide v0, 0x40c1940000000000L    # 9000.0

    div-double/2addr p2, v0

    mul-double/2addr p0, p2

    add-double/2addr v2, p0

    return-wide v2
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 4

    .line 10
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/cu;->c(DD)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cv;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p0

    return-object p0
.end method

.method public static b(DD)D
    .locals 6

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    div-double v2, p2, v0

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x40d1940000000000L    # 18000.0

    div-double v4, p0, v4

    mul-double/2addr v2, v4

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v0, 0x40c1940000000000L    # 9000.0

    div-double/2addr p2, v0

    mul-double/2addr p0, p2

    add-double/2addr v2, p0

    return-wide v2
.end method

.method private static c(DD)Lcom/amap/api/maps2d/model/LatLng;
    .locals 11

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr p0, v0

    double-to-long p0, p0

    const-wide/32 v2, 0x2255100

    .line 48
    rem-long/2addr p0, v2

    long-to-double p0, p0

    mul-double/2addr p2, v0

    double-to-long p2, p2

    .line 49
    rem-long/2addr p2, v2

    long-to-double p2, p2

    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/mapcore2d/cu;->a(DD)D

    move-result-wide v2

    neg-double v2, v2

    add-double/2addr v2, p0

    double-to-int v2, v2

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/mapcore2d/cu;->b(DD)D

    move-result-wide v3

    neg-double v3, v3

    add-double/2addr v3, p2

    double-to-int v3, v3

    int-to-double v4, v2

    int-to-double v2, v3

    .line 52
    invoke-static {v4, v5, v2, v3}, Lcom/amap/api/mapcore2d/cu;->a(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, p0

    const-wide/16 v6, 0x0

    cmpl-double p0, p0, v6

    const/4 p1, 0x1

    const/4 v8, -0x1

    if-lez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    move p0, v8

    :goto_0
    int-to-double v9, p0

    add-double/2addr v4, v9

    double-to-int p0, v4

    int-to-double v4, p0

    .line 53
    invoke-static {v4, v5, v2, v3}, Lcom/amap/api/mapcore2d/cu;->b(DD)D

    move-result-wide v2

    neg-double v2, v2

    add-double/2addr v2, p2

    cmpl-double p0, p2, v6

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move p1, v8

    :goto_1
    int-to-double p0, p1

    add-double/2addr v2, p0

    double-to-int p0, v2

    div-double/2addr v4, v0

    int-to-double p0, p0

    div-double/2addr p0, v0

    .line 56
    new-instance p2, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {p2, p0, p1, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object p2
.end method
