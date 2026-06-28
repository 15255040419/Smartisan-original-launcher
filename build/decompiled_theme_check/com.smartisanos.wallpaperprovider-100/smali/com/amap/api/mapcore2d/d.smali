.class Lcom/amap/api/mapcore2d/d;
.super Landroid/os/Handler;
.source "AMapDelegateImpGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/mapcore2d/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amap/api/mapcore2d/d;->b:Lcom/amap/api/mapcore2d/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string p1, "onTouchHandler"

    .line 183
    iput-object p1, p0, Lcom/amap/api/mapcore2d/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 187
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/d;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/amap/api/mapcore2d/d;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-interface {v0, p1}, Lcom/amap/api/maps2d/AMap$OnMapTouchListener;->onTouch(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 193
    iget-object p0, p0, Lcom/amap/api/mapcore2d/d;->a:Ljava/lang/String;

    const-string v0, "AMapDelegateImpGLSurfaceView"

    invoke-static {p1, v0, p0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
