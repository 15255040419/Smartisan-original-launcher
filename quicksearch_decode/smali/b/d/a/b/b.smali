.class public final Lb/d/a/b/b;
.super Ljava/lang/Object;
.source "DisplayBitmapTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field public final f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field public final g:Lb/d/a/b/f;

.field public final h:Lb/d/a/b/j/f;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lb/d/a/b/g;Lb/d/a/b/f;Lb/d/a/b/j/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/d/a/b/b;->a:Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p2, Lb/d/a/b/g;->a:Ljava/lang/String;

    iput-object p1, p0, Lb/d/a/b/b;->b:Ljava/lang/String;

    .line 4
    iget-object p1, p2, Lb/d/a/b/g;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iput-object p1, p0, Lb/d/a/b/b;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 5
    iget-object p1, p2, Lb/d/a/b/g;->b:Ljava/lang/String;

    iput-object p1, p0, Lb/d/a/b/b;->d:Ljava/lang/String;

    .line 6
    iget-object p1, p2, Lb/d/a/b/g;->e:Lb/d/a/b/c;

    invoke-virtual {p1}, Lb/d/a/b/c;->d()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object p1

    iput-object p1, p0, Lb/d/a/b/b;->e:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 7
    iget-object p1, p2, Lb/d/a/b/g;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iput-object p1, p0, Lb/d/a/b/b;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 8
    iput-object p3, p0, Lb/d/a/b/b;->g:Lb/d/a/b/f;

    .line 9
    iput-object p4, p0, Lb/d/a/b/b;->h:Lb/d/a/b/j/f;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/d/a/b/b;->g:Lb/d/a/b/f;

    iget-object v1, p0, Lb/d/a/b/b;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-virtual {v0, v1}, Lb/d/a/b/f;->b(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/d/a/b/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/d/a/b/b;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lb/d/a/b/b;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lb/d/a/b/b;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lb/d/a/b/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lb/d/a/b/b;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lb/d/a/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lb/d/a/b/b;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lb/d/a/b/b;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lb/d/a/b/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lb/d/a/b/b;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Lb/d/a/b/b;->h:Lb/d/a/b/j/f;

    aput-object v3, v0, v1

    iget-object v1, p0, Lb/d/a/b/b;->d:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    invoke-static {v1, v0}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lb/d/a/b/b;->e:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    iget-object v1, p0, Lb/d/a/b/b;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lb/d/a/b/b;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v3, p0, Lb/d/a/b/b;->h:Lb/d/a/b/j/f;

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lb/d/a/b/j/f;)V

    .line 9
    iget-object v0, p0, Lb/d/a/b/b;->g:Lb/d/a/b/f;

    iget-object v1, p0, Lb/d/a/b/b;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-virtual {v0, v1}, Lb/d/a/b/f;->a(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 10
    iget-object v0, p0, Lb/d/a/b/b;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lb/d/a/b/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lb/d/a/b/b;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lb/d/a/b/b;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
