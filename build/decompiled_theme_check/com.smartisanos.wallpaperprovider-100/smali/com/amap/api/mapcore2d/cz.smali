.class public Lcom/amap/api/mapcore2d/cz;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static a:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [D

    .line 33
    fill-array-data v0, :array_0

    sput-object v0, Lcom/amap/api/mapcore2d/cz;->a:[D

    return-void

    :array_0
    .array-data 8
        0x40bd1da45a1cac08L    # 7453.642
        0x40ad3dfb22d0e560L    # 3742.9905
        0x409d4554fdf3b646L    # 1873.333
        0x408d471f40a2877fL    # 936.89026
        0x407d478d4fdf3b64L    # 468.472
        0x406d47a5e353f7cfL    # 234.239
        0x405d47ae147ae148L    # 117.12
        0x404d47ae147ae148L    # 58.56
        0x403d47ae147ae148L    # 29.28
        0x402d47ae147ae148L    # 14.64
        0x401d47ae147ae148L    # 7.32
        0x400d47ae147ae148L    # 3.66
        0x3ffd4395810624ddL    # 1.829
        0x3fed47ae147ae148L    # 0.915
        0x3fdd47ae147ae148L    # 0.4575
        0x3fcd2f1a9fbe76c9L    # 0.228
        0x3fbd495182a9930cL    # 0.1144
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)D
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 167
    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 168
    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 169
    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 170
    iget-wide v0, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v8, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v2, v8

    mul-double/2addr v4, v8

    mul-double/2addr v6, v8

    mul-double/2addr v0, v8

    .line 175
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 176
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 177
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 178
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 179
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 180
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 181
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 182
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    move-wide/from16 p0, v14

    const/4 v14, 0x3

    new-array v15, v14, [D

    new-array v14, v14, [D

    mul-double/2addr v2, v4

    const/16 v16, 0x0

    aput-wide v2, v15, v16

    mul-double/2addr v4, v8

    const/4 v2, 0x1

    aput-wide v4, v15, v2

    const/4 v3, 0x2

    aput-wide v10, v15, v3

    mul-double/2addr v6, v0

    aput-wide v6, v14, v16

    mul-double/2addr v0, v12

    aput-wide v0, v14, v2

    aput-wide p0, v14, v3

    .line 191
    aget-wide v0, v15, v16

    aget-wide v4, v14, v16

    sub-double/2addr v0, v4

    aget-wide v4, v15, v16

    aget-wide v6, v14, v16

    sub-double/2addr v4, v6

    mul-double/2addr v0, v4

    aget-wide v4, v15, v2

    aget-wide v6, v14, v2

    sub-double/2addr v4, v6

    aget-wide v6, v15, v2

    aget-wide v8, v14, v2

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    aget-wide v4, v15, v3

    aget-wide v6, v14, v3

    sub-double/2addr v4, v6

    aget-wide v6, v15, v3

    aget-wide v2, v14, v3

    sub-double/2addr v6, v2

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v2, 0x41684dae328e2ad1L    # 1.27420015798544E7

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(F)F
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const/high16 v2, 0x42340000    # 45.0f

    if-gez v1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v2

    if-lez v0, :cond_1

    move p0, v2

    :cond_1
    :goto_0
    return p0
.end method

.method public static a([Ljava/lang/Object;)I
    .locals 0

    .line 118
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    const/4 v1, 0x1

    .line 152
    invoke-static {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 41
    :try_start_0
    const-class v0, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 43
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "Util"

    const-string v1, "fromAsset"

    .line 47
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/ab;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 231
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/ab;

    iget-wide v1, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-wide v5, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v5, v3

    double-to-int p0, v5

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "m"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 203
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "km"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p0, v2

    .line 108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    const-string v4, ","

    .line 110
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 337
    invoke-static {}, Lcom/amap/api/mapcore2d/dn;->b()Lcom/amap/api/mapcore2d/dn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0, p0, p1, p2}, Lcom/amap/api/mapcore2d/dn;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a(DDDDDD)Z
    .locals 4

    .line 284
    invoke-static/range {p0 .. p11}, Lcom/amap/api/mapcore2d/cz;->b(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    sub-double p4, p0, p4

    sub-double/2addr p0, p8

    mul-double/2addr p4, p0

    const-wide/16 p0, 0x0

    cmpg-double p4, p4, p0

    if-gtz p4, :cond_0

    sub-double p4, p2, p6

    sub-double/2addr p2, p10

    mul-double/2addr p4, p2

    cmpg-double p0, p4, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(DDDDDDDD)Z
    .locals 16

    sub-double v0, p4, p0

    sub-double v2, p14, p10

    mul-double v4, v0, v2

    sub-double v6, p6, p2

    sub-double v8, p12, p8

    mul-double v10, v6, v8

    sub-double/2addr v4, v10

    const-wide/16 v10, 0x0

    cmpl-double v12, v4, v10

    if-eqz v12, :cond_0

    sub-double v12, p2, p10

    mul-double/2addr v8, v12

    sub-double v14, p0, p8

    mul-double/2addr v2, v14

    sub-double/2addr v8, v2

    div-double/2addr v8, v4

    mul-double/2addr v12, v0

    mul-double/2addr v14, v6

    sub-double/2addr v12, v14

    div-double/2addr v12, v4

    cmpl-double v0, v8, v10

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v8, v0

    if-gtz v2, :cond_0

    cmpl-double v2, v12, v10

    if-ltz v2, :cond_0

    cmpg-double v0, v12, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/amap/api/mapcore2d/cz;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 316
    monitor-exit v0

    return v1

    :cond_0
    :try_start_0
    const-string v2, "connectivity"

    .line 319
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 321
    monitor-exit v0

    return v1

    .line 323
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_2

    .line 325
    monitor-exit v0

    return v1

    .line 327
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 328
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p0, v2, :cond_4

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    .line 332
    monitor-exit v0

    return p0

    .line 330
    :cond_4
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;Ljava/util/List;)Z
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps2d/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 244
    iget-wide v14, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 245
    iget-wide v12, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 246
    iget-wide v10, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const/4 v2, 0x0

    const/16 v18, 0x0

    .line 248
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_6

    .line 249
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 250
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    add-int/lit8 v4, v2, 0x1

    .line 251
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 252
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v5, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    move-wide/from16 v19, v2

    move-wide v2, v14

    move/from16 v21, v4

    move-wide v4, v12

    move-wide/from16 v22, v6

    move-wide v6, v8

    move-wide/from16 v24, v8

    move-wide/from16 v8, v22

    move-wide/from16 v26, v10

    move-wide/from16 v10, v19

    move-wide/from16 v28, v12

    move-wide v12, v0

    .line 253
    invoke-static/range {v2 .. v13}, Lcom/amap/api/mapcore2d/cz;->a(DDDDDD)Z

    move-result v2

    if-eqz v2, :cond_0

    return v16

    :cond_0
    sub-double v2, v0, v22

    .line 256
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    goto :goto_2

    :cond_1
    const-wide v10, 0x4066800000000000L    # 180.0

    move-wide/from16 v2, v24

    move-wide/from16 v4, v22

    move-wide v6, v14

    move-wide/from16 v8, v28

    move-wide/from16 v12, v26

    .line 260
    invoke-static/range {v2 .. v13}, Lcom/amap/api/mapcore2d/cz;->a(DDDDDD)Z

    move-result v2

    if-eqz v2, :cond_3

    cmpl-double v0, v22, v0

    if-lez v0, :cond_2

    :goto_1
    add-int/lit8 v18, v18, 0x1

    :cond_2
    :goto_2
    move-wide v0, v14

    goto :goto_3

    :cond_3
    const-wide v10, 0x4066800000000000L    # 180.0

    move-wide/from16 v2, v19

    move-wide v4, v0

    move-wide v6, v14

    move-wide/from16 v8, v28

    move-wide/from16 v12, v26

    .line 264
    invoke-static/range {v2 .. v13}, Lcom/amap/api/mapcore2d/cz;->a(DDDDDD)Z

    move-result v2

    if-eqz v2, :cond_4

    cmpl-double v0, v0, v22

    if-lez v0, :cond_2

    goto :goto_1

    :cond_4
    const-wide v16, 0x4066800000000000L    # 180.0

    move-wide/from16 v2, v24

    move-wide/from16 v4, v22

    move-wide/from16 v6, v19

    move-wide v8, v0

    move-wide v10, v14

    move-wide/from16 v12, v28

    move-wide v0, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v26

    .line 268
    invoke-static/range {v2 .. v17}, Lcom/amap/api/mapcore2d/cz;->a(DDDDDDDD)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v18, v18, 0x1

    :cond_5
    :goto_3
    move-wide v14, v0

    move/from16 v2, v21

    move-wide/from16 v10, v26

    move-wide/from16 v12, v28

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 273
    :cond_6
    rem-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_7

    goto :goto_4

    :cond_7
    const/16 v16, 0x0

    :goto_4
    return v16
.end method

.method public static a(Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 385
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 387
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    move v1, v0

    .line 389
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 390
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 395
    :cond_1
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 398
    :cond_2
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v0
.end method

.method public static b(DDDDDD)D
    .locals 0

    sub-double/2addr p4, p0

    sub-double/2addr p10, p2

    mul-double/2addr p4, p10

    sub-double/2addr p8, p0

    sub-double/2addr p6, p2

    mul-double/2addr p8, p6

    sub-double/2addr p4, p8

    return-wide p4
.end method

.method public static b(F)F
    .locals 1

    .line 81
    sget v0, Lcom/amap/api/mapcore2d/v;->c:I

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 82
    sget p0, Lcom/amap/api/mapcore2d/v;->c:I

    :goto_0
    int-to-float p0, p0

    goto :goto_1

    .line 83
    :cond_0
    sget v0, Lcom/amap/api/mapcore2d/v;->d:I

    int-to-float v0, v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 84
    sget p0, Lcom/amap/api/mapcore2d/v;->d:I

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 351
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 356
    :cond_0
    sget-object p0, Lcom/amap/api/maps2d/MapsInitializer;->sdcardDir:Ljava/lang/String;

    const-string v0, "/"

    if-eqz p0, :cond_4

    sget-object p0, Lcom/amap/api/maps2d/MapsInitializer;->sdcardDir:Ljava/lang/String;

    const-string v1, ""

    .line 357
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    new-instance p0, Ljava/io/File;

    sget-object v1, Lcom/amap/api/maps2d/MapsInitializer;->sdcardDir:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 371
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 373
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "Amap"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    .line 376
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 379
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 359
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    .line 360
    new-instance v1, Ljava/io/File;

    const-string v2, "AMap"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_5

    .line 363
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 366
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
