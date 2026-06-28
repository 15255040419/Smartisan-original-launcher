.class Lcom/amap/api/mapcore2d/bh;
.super Ljava/lang/Object;
.source "MapServerUrl.java"


# static fields
.field private static b:Lcom/amap/api/mapcore2d/bh;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://tm.amap.com"

    .line 18
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bh;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/mapcore2d/bh;
    .locals 2

    const-class v0, Lcom/amap/api/mapcore2d/bh;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore2d/bh;->b:Lcom/amap/api/mapcore2d/bh;

    if-nez v1, :cond_0

    .line 13
    new-instance v1, Lcom/amap/api/mapcore2d/bh;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/bh;-><init>()V

    sput-object v1, Lcom/amap/api/mapcore2d/bh;->b:Lcom/amap/api/mapcore2d/bh;

    .line 15
    :cond_0
    sget-object v1, Lcom/amap/api/mapcore2d/bh;->b:Lcom/amap/api/mapcore2d/bh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, "http://grid.amap.com/grid/%d/%d/%d?dpiType=%s&lang=%s"

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bh;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 32
    new-instance p0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    const v0, 0x186a0

    .line 33
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    .line 34
    rem-int/lit8 p0, p0, 0x4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    add-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v2, v1

    const-string p0, "http://mt%d.google.cn/vt/lyrs=m"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@285000000&hl=zh-CN&gl=CN&src=app&expIds=201527&rlbl=1&x=%d&y=%d&z=%d&s=Gali"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance p0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    const v0, 0x186a0

    .line 41
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    .line 42
    rem-int/lit8 p0, p0, 0x4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    add-int/2addr p0, v0

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, v1, v0

    const-string p0, "http://mst0%d.is.autonavi.com"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
