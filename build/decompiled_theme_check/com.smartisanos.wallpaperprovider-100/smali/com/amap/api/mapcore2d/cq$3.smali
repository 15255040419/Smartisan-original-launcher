.class Lcom/amap/api/mapcore2d/cq$3;
.super Ljava/lang/Object;
.source "ZoomControllerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/cq;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/cq;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/cq;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amap/api/mapcore2d/cq$3;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq$3;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cq;->c(Lcom/amap/api/mapcore2d/cq;)Lcom/amap/api/mapcore2d/ad;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ad;->e()F

    move-result p1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq$3;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cq;->c(Lcom/amap/api/mapcore2d/cq;)Lcom/amap/api/mapcore2d/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ad;->g()F

    move-result v0

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    return v0

    .line 129
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq$3;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cq;->e(Lcom/amap/api/mapcore2d/cq;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq$3;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cq;->i(Lcom/amap/api/mapcore2d/cq;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 132
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq$3;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cq;->e(Lcom/amap/api/mapcore2d/cq;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/mapcore2d/cq$3;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/cq;->f(Lcom/amap/api/mapcore2d/cq;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq$3;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cq;->c(Lcom/amap/api/mapcore2d/cq;)Lcom/amap/api/mapcore2d/ad;

    move-result-object p0

    invoke-static {}, Lcom/amap/api/mapcore2d/r;->b()Lcom/amap/api/mapcore2d/r;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/amap/api/mapcore2d/ad;->b(Lcom/amap/api/mapcore2d/r;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ontouch"

    const-string p2, "ZoomControllerView"

    .line 138
    invoke-static {p0, p2, p1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method
