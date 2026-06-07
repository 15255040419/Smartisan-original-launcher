.class public final Lb/d/a/b/h;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/d/a/b/h$d;
    }
.end annotation


# instance fields
.field public final a:Lb/d/a/b/f;

.field public final b:Lb/d/a/b/g;

.field public final c:Landroid/os/Handler;

.field public final d:Lb/d/a/b/e;

.field public final e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field public final f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field public final g:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field public final h:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field public final l:Lb/d/a/b/j/e;

.field public final m:Lb/d/a/b/c;

.field public final n:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field public final o:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

.field public final p:Z

.field public q:Lb/d/a/b/j/f;


# direct methods
.method public constructor <init>(Lb/d/a/b/f;Lb/d/a/b/g;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lb/d/a/b/j/f;->a:Lb/d/a/b/j/f;

    iput-object v0, p0, Lb/d/a/b/h;->q:Lb/d/a/b/j/f;

    .line 3
    iput-object p1, p0, Lb/d/a/b/h;->a:Lb/d/a/b/f;

    .line 4
    iput-object p2, p0, Lb/d/a/b/h;->b:Lb/d/a/b/g;

    .line 5
    iput-object p3, p0, Lb/d/a/b/h;->c:Landroid/os/Handler;

    .line 6
    iget-object p1, p1, Lb/d/a/b/f;->a:Lb/d/a/b/e;

    iput-object p1, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    .line 7
    iget-object p1, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    iget-object p3, p1, Lb/d/a/b/e;->p:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object p3, p0, Lb/d/a/b/h;->e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 8
    iget-object p3, p1, Lb/d/a/b/e;->s:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object p3, p0, Lb/d/a/b/h;->f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 9
    iget-object p3, p1, Lb/d/a/b/e;->t:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object p3, p0, Lb/d/a/b/h;->g:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 10
    iget-object p1, p1, Lb/d/a/b/e;->q:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    iput-object p1, p0, Lb/d/a/b/h;->h:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    .line 11
    iget-object p1, p2, Lb/d/a/b/g;->a:Ljava/lang/String;

    iput-object p1, p0, Lb/d/a/b/h;->i:Ljava/lang/String;

    .line 12
    iget-object p1, p2, Lb/d/a/b/g;->b:Ljava/lang/String;

    iput-object p1, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    .line 13
    iget-object p1, p2, Lb/d/a/b/g;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iput-object p1, p0, Lb/d/a/b/h;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 14
    iget-object p1, p2, Lb/d/a/b/g;->d:Lb/d/a/b/j/e;

    iput-object p1, p0, Lb/d/a/b/h;->l:Lb/d/a/b/j/e;

    .line 15
    iget-object p1, p2, Lb/d/a/b/g;->e:Lb/d/a/b/c;

    iput-object p1, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    .line 16
    iget-object p1, p2, Lb/d/a/b/g;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iput-object p1, p0, Lb/d/a/b/h;->n:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 17
    iget-object p1, p2, Lb/d/a/b/g;->g:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    iput-object p1, p0, Lb/d/a/b/h;->o:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .line 18
    iget-object p1, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {p1}, Lb/d/a/b/c;->n()Z

    move-result p1

    iput-boolean p1, p0, Lb/d/a/b/h;->p:Z

    return-void
.end method

.method public static synthetic a(Lb/d/a/b/h;)Lb/d/a/b/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    return-object p0
.end method

.method public static a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lb/d/a/b/f;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 18
    invoke-virtual {p3, p0}, Lb/d/a/b/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    .line 2
    iget-object v0, p0, Lb/d/a/b/h;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getScaleType()Lb/d/a/b/j/h;

    move-result-object v6

    .line 3
    new-instance v0, Lb/d/a/b/k/b;

    iget-object v2, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    .line 4
    iget-object v4, p0, Lb/d/a/b/h;->i:Ljava/lang/String;

    iget-object v5, p0, Lb/d/a/b/h;->l:Lb/d/a/b/j/e;

    invoke-virtual {p0}, Lb/d/a/b/h;->h()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v7

    .line 5
    iget-object v8, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    move-object v1, v0

    move-object v3, p1

    .line 6
    invoke-direct/range {v1 .. v8}, Lb/d/a/b/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/d/a/b/j/e;Lb/d/a/b/j/h;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lb/d/a/b/c;)V

    .line 7
    iget-object p1, p0, Lb/d/a/b/h;->h:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    invoke-interface {p1, v0}, Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;->decode(Lb/d/a/b/k/b;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 15
    invoke-virtual {p0}, Lb/d/a/b/h;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    new-instance v0, Lb/d/a/b/h$d;

    invoke-direct {v0, p0}, Lb/d/a/b/h$d;-><init>(Lb/d/a/b/h;)V

    throw v0
.end method

.method public final a(Lb/d/a/b/j/b$a;Ljava/lang/Throwable;)V
    .locals 2

    .line 12
    iget-boolean v0, p0, Lb/d/a/b/h;->p:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lb/d/a/b/h;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lb/d/a/b/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lb/d/a/b/h$b;

    invoke-direct {v0, p0, p1, p2}, Lb/d/a/b/h$b;-><init>(Lb/d/a/b/h;Lb/d/a/b/j/b$a;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 14
    iget-object p2, p0, Lb/d/a/b/h;->c:Landroid/os/Handler;

    iget-object v1, p0, Lb/d/a/b/h;->a:Lb/d/a/b/f;

    invoke-static {v0, p1, p2, v1}, Lb/d/a/b/h;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lb/d/a/b/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(II)Z
    .locals 2

    .line 8
    iget-boolean v0, p0, Lb/d/a/b/h;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lb/d/a/b/h;->j()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lb/d/a/b/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lb/d/a/b/h;->o:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Lb/d/a/b/h$a;

    invoke-direct {v0, p0, p1, p2}, Lb/d/a/b/h$a;-><init>(Lb/d/a/b/h;II)V

    .line 11
    iget-object p1, p0, Lb/d/a/b/h;->c:Landroid/os/Handler;

    iget-object p2, p0, Lb/d/a/b/h;->a:Lb/d/a/b/f;

    invoke-static {v0, v1, p1, p2}, Lb/d/a/b/h;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lb/d/a/b/f;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final b()V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lb/d/a/b/h;->c()V

    .line 22
    invoke-virtual {p0}, Lb/d/a/b/h;->d()V

    return-void
.end method

.method public final b(II)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    iget-object v0, v0, Lb/d/a/b/e;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v1, p0, Lb/d/a/b/h;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    new-instance v7, Lb/d/a/b/j/e;

    invoke-direct {v7, p1, p2}, Lb/d/a/b/j/e;-><init>(II)V

    .line 4
    new-instance p1, Lb/d/a/b/c$a;

    invoke-direct {p1}, Lb/d/a/b/c$a;-><init>()V

    .line 5
    iget-object p2, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {p1, p2}, Lb/d/a/b/c$a;->a(Lb/d/a/b/c;)Lb/d/a/b/c$a;

    .line 6
    sget-object p2, Lb/d/a/b/j/d;->c:Lb/d/a/b/j/d;

    invoke-virtual {p1, p2}, Lb/d/a/b/c$a;->a(Lb/d/a/b/j/d;)Lb/d/a/b/c$a;

    invoke-virtual {p1}, Lb/d/a/b/c$a;->a()Lb/d/a/b/c;

    move-result-object v10

    .line 7
    new-instance p1, Lb/d/a/b/k/b;

    .line 8
    iget-object v4, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    sget-object p2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p2, v0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    iget-object v6, p0, Lb/d/a/b/h;->i:Ljava/lang/String;

    .line 12
    sget-object v8, Lb/d/a/b/j/h;->a:Lb/d/a/b/j/h;

    invoke-virtual {p0}, Lb/d/a/b/h;->h()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v9

    move-object v3, p1

    .line 13
    invoke-direct/range {v3 .. v10}, Lb/d/a/b/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/d/a/b/j/e;Lb/d/a/b/j/h;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lb/d/a/b/c;)V

    .line 14
    iget-object p2, p0, Lb/d/a/b/h;->h:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    invoke-interface {p2, p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;->decode(Lb/d/a/b/k/b;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p2, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    iget-object p2, p2, Lb/d/a/b/e;->f:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    .line 16
    iget-object v2, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v2, "Process image before cache on disk [%s]"

    invoke-static {v2, v0}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    iget-object v0, v0, Lb/d/a/b/e;->f:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p2, p2, [Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v0, p2, v1

    const-string v0, "Bitmap processor for disk cache returned null [%s]"

    invoke-static {v0, p2}, Lb/d/a/c/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 19
    iget-object p2, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    iget-object p2, p2, Lb/d/a/b/e;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v0, p0, Lb/d/a/b/h;->i:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return v1
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/d/a/b/h;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lb/d/a/b/h$d;

    invoke-direct {v0, p0}, Lb/d/a/b/h$d;-><init>(Lb/d/a/b/h;)V

    throw v0
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/d/a/b/h;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lb/d/a/b/h$d;

    invoke-direct {v0, p0}, Lb/d/a/b/h$d;-><init>(Lb/d/a/b/h;)V

    throw v0
.end method

.method public final e()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {v0}, Lb/d/a/b/c;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {v2}, Lb/d/a/b/c;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3
    iget-object v2, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "Delay %d ms before loading...  [%s]"

    .line 4
    invoke-static {v2, v0}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {v0}, Lb/d/a/b/c;->c()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {p0}, Lb/d/a/b/h;->k()Z

    move-result v0

    return v0

    :catch_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Task was interrupted [%s]"

    invoke-static {v1, v0}, Lb/d/a/c/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    return v1
.end method

.method public final f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {v0}, Lb/d/a/b/c;->a()Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    .line 2
    invoke-virtual {v0}, Lb/d/a/b/c;->a()Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;

    move-result-object v0

    iget-object v1, p0, Lb/d/a/b/h;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;->processUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/d/a/b/h;->i:Ljava/lang/String;

    .line 3
    :goto_0
    invoke-virtual {p0}, Lb/d/a/b/h;->h()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {v2}, Lb/d/a/b/c;->e()Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-interface {v1, v0, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    iget-object v1, v1, Lb/d/a/b/e;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v2, p0, Lb/d/a/b/h;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p0}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lb/d/a/b/h;->p:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lb/d/a/b/h;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lb/d/a/b/h$c;

    invoke-direct {v0, p0}, Lb/d/a/b/h$c;-><init>(Lb/d/a/b/h;)V

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lb/d/a/b/h;->c:Landroid/os/Handler;

    iget-object v3, p0, Lb/d/a/b/h;->a:Lb/d/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lb/d/a/b/h;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lb/d/a/b/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final h()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/b/h;->a:Lb/d/a/b/f;

    invoke-virtual {v0}, Lb/d/a/b/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/d/a/b/h;->f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/d/a/b/h;->a:Lb/d/a/b/f;

    invoke-virtual {v0}, Lb/d/a/b/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lb/d/a/b/h;->g:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lb/d/a/b/h;->e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    :goto_0
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/b/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 2
    iget-object v3, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "Task was interrupted [%s]"

    invoke-static {v1, v2}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1
.end method

.method public final k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/d/a/b/h;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/d/a/b/h;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final l()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lb/d/a/b/h;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 2
    iget-object v3, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v1, v2}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1
.end method

.method public final m()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lb/d/a/b/h;->a:Lb/d/a/b/f;

    iget-object v1, p0, Lb/d/a/b/h;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-virtual {v0, v1}, Lb/d/a/b/f;->b(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 3
    iget-object v3, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v2, v0}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    return v2
.end method

.method public final n()Z
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Cache image on disk [%s]"

    invoke-static {v2, v1}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lb/d/a/b/h;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    iget v2, v2, Lb/d/a/b/e;->d:I

    .line 4
    iget-object v4, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    iget v4, v4, Lb/d/a/b/e;->e:I

    if-gtz v2, :cond_0

    if-lez v4, :cond_1

    :cond_0
    const-string v5, "Resize image in disk cache [%s]"

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    iget-object v6, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v6, v0, v3

    invoke-static {v5, v0}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, v2, v4}, Lb/d/a/b/h;->b(II)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lb/d/a/c/b;->a(Ljava/lang/Throwable;)V

    move v1, v3

    :cond_1
    :goto_0
    return v1
.end method

.method public final o()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    iget-object v1, v1, Lb/d/a/b/e;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v2, p0, Lb/d/a/b/h;->i:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lb/d/a/b/h$d; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "Load image from disk cache [%s]"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    new-array v5, v4, [Ljava/lang/Object;

    .line 3
    iget-object v6, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object v5, Lb/d/a/b/j/f;->b:Lb/d/a/b/j/f;

    iput-object v5, p0, Lb/d/a/b/h;->q:Lb/d/a/b/j/f;

    .line 5
    invoke-virtual {p0}, Lb/d/a/b/h;->b()V

    .line 6
    sget-object v5, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v5, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lb/d/a/b/h;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lb/d/a/b/h$d; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 9
    :try_start_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lez v5, :cond_1

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-gtz v5, :cond_3

    .line 11
    :cond_1
    sget-object v5, Lb/d/a/b/j/f;->b:Lb/d/a/b/j/f;

    iput-object v5, p0, Lb/d/a/b/h;->q:Lb/d/a/b/j/f;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lb/d/a/b/h$d; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array v5, v4, [Ljava/lang/Object;

    .line 12
    iget-object v6, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v2, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    .line 14
    invoke-virtual {v2}, Lb/d/a/b/c;->a()Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 15
    iget-object v5, p0, Lb/d/a/b/h;->i:Ljava/lang/String;

    invoke-interface {v2, v5}, Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;->getArtCoverUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lb/d/a/b/h;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 17
    :try_start_4
    invoke-static {v2}, Lb/d/a/c/b;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_4

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_7

    :cond_4
    const-string v2, "Load image from network [%s]"

    new-array v4, v4, [Ljava/lang/Object;

    .line 20
    iget-object v5, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    sget-object v2, Lb/d/a/b/j/f;->a:Lb/d/a/b/j/f;

    iput-object v2, p0, Lb/d/a/b/h;->q:Lb/d/a/b/j/f;

    .line 22
    iget-object v2, p0, Lb/d/a/b/h;->i:Ljava/lang/String;

    .line 23
    iget-object v3, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {v3}, Lb/d/a/b/c;->k()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lb/d/a/b/h;->n()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    iget-object v3, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    iget-object v3, v3, Lb/d/a/b/e;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v4, p0, Lb/d/a/b/h;->i:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 25
    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    .line 26
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    :cond_5
    invoke-virtual {p0}, Lb/d/a/b/h;->b()V

    .line 29
    invoke-virtual {p0, v2}, Lb/d/a/b/h;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 30
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_6

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_7

    .line 32
    :cond_6
    sget-object v2, Lb/d/a/b/j/b$a;->b:Lb/d/a/b/j/b$a;

    invoke-virtual {p0, v2, v0}, Lb/d/a/b/h;->a(Lb/d/a/b/j/b$a;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lb/d/a/b/h$d; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 33
    :goto_3
    invoke-static {v0}, Lb/d/a/c/b;->a(Ljava/lang/Throwable;)V

    .line 34
    sget-object v2, Lb/d/a/b/j/b$a;->e:Lb/d/a/b/j/b$a;

    invoke-virtual {p0, v2, v0}, Lb/d/a/b/h;->a(Lb/d/a/b/j/b$a;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 35
    :goto_4
    invoke-static {v0}, Lb/d/a/c/b;->a(Ljava/lang/Throwable;)V

    .line 36
    sget-object v2, Lb/d/a/b/j/b$a;->d:Lb/d/a/b/j/b$a;

    invoke-virtual {p0, v2, v0}, Lb/d/a/b/h;->a(Lb/d/a/b/j/b$a;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_4
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 37
    :goto_5
    invoke-static {v0}, Lb/d/a/c/b;->a(Ljava/lang/Throwable;)V

    .line 38
    sget-object v2, Lb/d/a/b/j/b$a;->a:Lb/d/a/b/j/b$a;

    invoke-virtual {p0, v2, v0}, Lb/d/a/b/h;->a(Lb/d/a/b/j/b$a;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_5
    move-exception v0

    .line 39
    throw v0

    :catch_6
    move-object v1, v0

    .line 40
    :catch_7
    sget-object v2, Lb/d/a/b/j/b$a;->c:Lb/d/a/b/j/b$a;

    invoke-virtual {p0, v2, v0}, Lb/d/a/b/h;->a(Lb/d/a/b/j/b$a;Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    return-object v1
.end method

.method public onBytesCopied(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/d/a/b/h;->a(II)Z

    move-result p1

    return p1
.end method

.method public final p()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lb/d/a/b/h;->a:Lb/d/a/b/f;

    invoke-virtual {v0}, Lb/d/a/b/f;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lb/d/a/b/h;->a:Lb/d/a/b/f;

    invoke-virtual {v1}, Lb/d/a/b/f;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageLoader is paused. Waiting...  [%s]"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 5
    iget-object v4, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v0, p0, Lb/d/a/b/h;->a:Lb/d/a/b/f;

    invoke-virtual {v0}, Lb/d/a/b/f;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, ".. Resume loading [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    const-string v0, "Task was interrupted [%s]"

    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    iget-object v4, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lb/d/a/c/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    monitor-exit v1

    return v2

    .line 10
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 11
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lb/d/a/b/h;->k()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lb/d/a/b/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb/d/a/b/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lb/d/a/b/h;->b:Lb/d/a/b/g;

    iget-object v0, v0, Lb/d/a/b/g;->h:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 4
    iget-object v3, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Start display image task [%s]"

    invoke-static {v3, v2}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    iget-object v3, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "Image already is loading. Waiting... [%s]"

    invoke-static {v3, v2}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lb/d/a/b/h;->b()V

    .line 9
    iget-object v2, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    iget-object v2, v2, Lb/d/a/b/e;->n:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    iget-object v3, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lb/d/a/b/h$d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "PostProcess image before displaying [%s]"

    if-eqz v2, :cond_4

    .line 10
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    sget-object v5, Lb/d/a/b/j/f;->c:Lb/d/a/b/j/f;

    iput-object v5, p0, Lb/d/a/b/h;->q:Lb/d/a/b/j/f;

    const-string v5, "...Get cached bitmap from memory after waiting. [%s]"

    new-array v6, v1, [Ljava/lang/Object;

    .line 12
    iget-object v7, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v7, v6, v4

    .line 13
    invoke-static {v5, v6}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lb/d/a/b/h;->o()Landroid/graphics/Bitmap;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bmp =="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lb/d/a/b/h$d; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_5

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 17
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lb/d/a/b/h;->b()V

    .line 18
    invoke-virtual {p0}, Lb/d/a/b/h;->a()V

    .line 19
    iget-object v5, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {v5}, Lb/d/a/b/c;->q()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "PreProcess image before caching in memory [%s]"

    new-array v6, v1, [Ljava/lang/Object;

    .line 20
    iget-object v7, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v5, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {v5}, Lb/d/a/b/c;->i()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v5, "Pre-processor returned null [%s]"

    new-array v6, v1, [Ljava/lang/Object;

    .line 22
    iget-object v7, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lb/d/a/c/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 23
    iget-object v5, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {v5}, Lb/d/a/b/c;->j()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "Cache image in memory [%s]"

    new-array v6, v1, [Ljava/lang/Object;

    .line 24
    iget-object v7, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v5, p0, Lb/d/a/b/h;->d:Lb/d/a/b/e;

    iget-object v5, v5, Lb/d/a/b/e;->n:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    iget-object v6, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    .line 26
    iget-object v5, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {v5}, Lb/d/a/b/c;->p()Z

    move-result v5

    if-eqz v5, :cond_8

    new-array v5, v1, [Ljava/lang/Object;

    .line 27
    iget-object v6, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v3, p0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {v3}, Lb/d/a/b/c;->h()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v3, "Post-processor returned null [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    iget-object v5, p0, Lb/d/a/b/h;->j:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Lb/d/a/c/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_8
    invoke-virtual {p0}, Lb/d/a/b/h;->b()V

    .line 31
    invoke-virtual {p0}, Lb/d/a/b/h;->a()V
    :try_end_2
    .catch Lb/d/a/b/h$d; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    new-instance v0, Lb/d/a/b/b;

    .line 34
    iget-object v1, p0, Lb/d/a/b/h;->b:Lb/d/a/b/g;

    iget-object v3, p0, Lb/d/a/b/h;->a:Lb/d/a/b/f;

    iget-object v5, p0, Lb/d/a/b/h;->q:Lb/d/a/b/j/f;

    .line 35
    invoke-direct {v0, v2, v1, v3, v5}, Lb/d/a/b/b;-><init>(Landroid/graphics/Bitmap;Lb/d/a/b/g;Lb/d/a/b/f;Lb/d/a/b/j/f;)V

    .line 36
    iget-object v1, p0, Lb/d/a/b/h;->c:Landroid/os/Handler;

    iget-object v2, p0, Lb/d/a/b/h;->a:Lb/d/a/b/f;

    invoke-static {v0, v4, v1, v2}, Lb/d/a/b/h;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lb/d/a/b/f;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 37
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lb/d/a/b/h;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 39
    throw v1
.end method
