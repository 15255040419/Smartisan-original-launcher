.class public Lcom/amap/api/mapcore2d/cs;
.super Ljava/lang/Object;
.source "B2GCoordConver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(D)D
    .locals 2

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr p0, v0

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr p0, v0

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide v0, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private static a(DI)D
    .locals 1

    .line 80
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x4

    invoke-virtual {v0, p2, p0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static a(DD)Lcom/amap/api/mapcore2d/ct;
    .locals 9

    .line 62
    new-instance v0, Lcom/amap/api/mapcore2d/ct;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ct;-><init>()V

    .line 63
    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/cs;->b(D)D

    move-result-wide v1

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 64
    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cs;->a(D)D

    move-result-wide v3

    mul-double v5, p0, p0

    mul-double v7, p2, p2

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v3, v7

    mul-double/2addr v1, v3

    const-wide v3, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr v1, v3

    .line 65
    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/cs;->b(D)D

    move-result-wide v3

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    add-double/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    .line 66
    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cs;->a(D)D

    move-result-wide p2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr p2, v3

    mul-double/2addr p0, p2

    const-wide p2, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr p0, p2

    const/16 p2, 0x8

    .line 67
    invoke-static {v1, v2, p2}, Lcom/amap/api/mapcore2d/cs;->a(DI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/api/mapcore2d/ct;->a:D

    .line 68
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore2d/cs;->a(DI)D

    move-result-wide p0

    iput-wide p0, v0, Lcom/amap/api/mapcore2d/ct;->b:D

    return-object v0
.end method

.method private static a(DDDD)Lcom/amap/api/maps2d/model/LatLng;
    .locals 2

    .line 124
    new-instance v0, Lcom/amap/api/mapcore2d/ct;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ct;-><init>()V

    sub-double p4, p0, p4

    sub-double p6, p2, p6

    .line 127
    invoke-static {p4, p5, p6, p7}, Lcom/amap/api/mapcore2d/cs;->a(DD)Lcom/amap/api/mapcore2d/ct;

    move-result-object v1

    add-double/2addr p0, p4

    .line 128
    iget-wide p4, v1, Lcom/amap/api/mapcore2d/ct;->a:D

    sub-double/2addr p0, p4

    const/16 p4, 0x8

    invoke-static {p0, p1, p4}, Lcom/amap/api/mapcore2d/cs;->a(DI)D

    move-result-wide p0

    iput-wide p0, v0, Lcom/amap/api/mapcore2d/ct;->a:D

    add-double/2addr p2, p6

    .line 129
    iget-wide p0, v1, Lcom/amap/api/mapcore2d/ct;->b:D

    sub-double/2addr p2, p0

    invoke-static {p2, p3, p4}, Lcom/amap/api/mapcore2d/cs;->a(DI)D

    move-result-wide p0

    iput-wide p0, v0, Lcom/amap/api/mapcore2d/ct;->b:D

    .line 130
    new-instance p0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide p1, v0, Lcom/amap/api/mapcore2d/ct;->b:D

    iget-wide p3, v0, Lcom/amap/api/mapcore2d/ct;->a:D

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object p0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 0

    if-eqz p0, :cond_0

    .line 29
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cs;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/amap/api/maps2d/model/LatLng;I)Lcom/amap/api/maps2d/model/LatLng;
    .locals 14

    const-wide v0, 0x3f7a37ffff31d771L    # 0.006401062

    const-wide v2, 0x3f78c0000225c17dL    # 0.0060424805

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v10, v0

    move-wide v12, v2

    :goto_0
    if-ge v5, p1, :cond_0

    .line 107
    iget-wide v6, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v8, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static/range {v6 .. v13}, Lcom/amap/api/mapcore2d/cs;->a(DDDD)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    .line 108
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v2, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double v10, v0, v2

    .line 109
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v2, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double v12, v0, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private static b(D)D
    .locals 2

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr p0, v0

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr p0, v0

    .line 51
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v0, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private static b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    const/4 v0, 0x2

    .line 92
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cs;->a(Lcom/amap/api/maps2d/model/LatLng;I)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p0

    return-object p0
.end method
