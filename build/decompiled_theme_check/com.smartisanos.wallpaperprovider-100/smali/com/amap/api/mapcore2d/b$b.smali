.class Lcom/amap/api/mapcore2d/b$b;
.super Ljava/lang/Object;
.source "AMapDelegateImpGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/b;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;Landroid/content/Context;Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V
    .locals 0

    .line 2924
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b$b;->a:Lcom/amap/api/mapcore2d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2925
    iput-object p2, p0, Lcom/amap/api/mapcore2d/b$b;->b:Landroid/content/Context;

    .line 2926
    iput-object p3, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    .line 2933
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/cz;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2940
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    if-eqz v1, :cond_0

    .line 2941
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    invoke-interface {p0, v0}, Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "AMapDelegateImpGLSurfaceView"

    const-string v3, "RemoveCacheRunnable"

    .line 2935
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x0

    .line 2940
    :try_start_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    if-eqz v1, :cond_0

    .line 2941
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    invoke-interface {p0, v0}, Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 2944
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :catchall_2
    move-exception v1

    .line 2940
    :try_start_4
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    if-eqz v2, :cond_1

    .line 2941
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    invoke-interface {p0, v0}, Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    .line 2944
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2945
    :cond_1
    :goto_1
    throw v1
.end method
