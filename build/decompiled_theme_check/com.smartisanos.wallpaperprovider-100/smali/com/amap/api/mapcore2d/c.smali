.class Lcom/amap/api/mapcore2d/c;
.super Ljava/util/TimerTask;
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
.field final synthetic a:Lcom/amap/api/mapcore2d/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amap/api/mapcore2d/c;->a:Lcom/amap/api/mapcore2d/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 176
    iget-object p0, p0, Lcom/amap/api/mapcore2d/c;->a:Lcom/amap/api/mapcore2d/b;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
