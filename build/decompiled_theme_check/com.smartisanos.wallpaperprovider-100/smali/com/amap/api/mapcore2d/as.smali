.class Lcom/amap/api/mapcore2d/as;
.super Lcom/amap/api/mapcore2d/bx;
.source "InprocessingTiles.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/bx<",
        "Lcom/amap/api/mapcore2d/cc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bx;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/amap/api/mapcore2d/cc;)V
    .locals 0

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/as;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b(Lcom/amap/api/mapcore2d/cc;)Z
    .locals 2

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/as;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 10
    monitor-exit p0

    return p1

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/as;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
