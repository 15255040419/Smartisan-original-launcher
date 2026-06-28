.class Lcom/amap/api/mapcore2d/aa;
.super Ljava/lang/Object;
.source "GLOverlayLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/z;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/z;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/amap/api/mapcore2d/aa;->a:Lcom/amap/api/mapcore2d/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 5

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aa;->a:Lcom/amap/api/mapcore2d/z;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/z;->a(Lcom/amap/api/mapcore2d/z;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aa;->a:Lcom/amap/api/mapcore2d/z;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/z;->b(Lcom/amap/api/mapcore2d/z;)Lcom/amap/api/mapcore2d/z$a;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 119
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aa;->a:Lcom/amap/api/mapcore2d/z;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/z;->a(Lcom/amap/api/mapcore2d/z;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 120
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 121
    iget-object v4, p0, Lcom/amap/api/mapcore2d/aa;->a:Lcom/amap/api/mapcore2d/z;

    invoke-static {v4}, Lcom/amap/api/mapcore2d/z;->a(Lcom/amap/api/mapcore2d/z;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    check-cast v3, Lcom/amap/api/mapcore2d/aj;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "MapOverlayImageView"

    const-string v2, "changeOverlayIndex"

    .line 125
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
