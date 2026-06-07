.class public Lb/d/a/b/d;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field public static final d:Ljava/lang/String; = "d"

.field public static volatile e:Lb/d/a/b/d;


# instance fields
.field public a:Lb/d/a/b/e;

.field public b:Lb/d/a/b/f;

.field public final c:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/d/a/b/o/a;

    invoke-direct {v0}, Lb/d/a/b/o/a;-><init>()V

    iput-object v0, p0, Lb/d/a/b/d;->c:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    return-void
.end method

.method public static a(Lb/d/a/b/c;)Landroid/os/Handler;
    .locals 2

    .line 55
    invoke-virtual {p0}, Lb/d/a/b/c;->f()Landroid/os/Handler;

    move-result-object p0

    if-nez p0, :cond_0

    .line 56
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 57
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static c()Lb/d/a/b/d;
    .locals 2

    .line 1
    sget-object v0, Lb/d/a/b/d;->e:Lb/d/a/b/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lb/d/a/b/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lb/d/a/b/d;->e:Lb/d/a/b/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lb/d/a/b/d;

    invoke-direct {v1}, Lb/d/a/b/d;-><init>()V

    sput-object v1, Lb/d/a/b/d;->e:Lb/d/a/b/d;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lb/d/a/b/d;->e:Lb/d/a/b/d;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 53
    iget-object v0, p0, Lb/d/a/b/d;->a:Lb/d/a/b/e;

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized a(Lb/d/a/b/e;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/d/a/b/d;->a:Lb/d/a/b/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Initialize ImageLoader with configuration"

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {v0, v1}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lb/d/a/b/f;

    invoke-direct {v0, p1}, Lb/d/a/b/f;-><init>(Lb/d/a/b/e;)V

    iput-object v0, p0, Lb/d/a/b/d;->b:Lb/d/a/b/f;

    .line 4
    iput-object p1, p0, Lb/d/a/b/d;->a:Lb/d/a/b/e;

    goto :goto_0

    :cond_0
    const-string p1, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    new-array v0, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {p1, v0}, Lb/d/a/c/b;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageLoader configuration can not be initialized with null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6

    .line 52
    new-instance v2, Lb/d/a/b/n/a;

    invoke-direct {v2, p2}, Lb/d/a/b/n/a;-><init>(Landroid/widget/ImageView;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lb/d/a/b/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lb/d/a/b/c;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lb/d/a/b/c;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 10

    .line 8
    invoke-virtual {p0}, Lb/d/a/b/d;->a()V

    if-eqz p2, :cond_9

    if-nez p4, :cond_0

    .line 9
    iget-object p4, p0, Lb/d/a/b/d;->c:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    :cond_0
    move-object v6, p4

    if-nez p3, :cond_1

    .line 10
    iget-object p3, p0, Lb/d/a/b/d;->a:Lb/d/a/b/e;

    iget-object p3, p3, Lb/d/a/b/e;->r:Lb/d/a/b/c;

    .line 11
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    .line 12
    iget-object p4, p0, Lb/d/a/b/d;->b:Lb/d/a/b/f;

    invoke-virtual {p4, p2}, Lb/d/a/b/f;->a(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 13
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p4

    invoke-interface {v6, p1, p4}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 14
    invoke-virtual {p3}, Lb/d/a/b/c;->r()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 15
    iget-object p4, p0, Lb/d/a/b/d;->a:Lb/d/a/b/e;

    iget-object p4, p4, Lb/d/a/b/e;->a:Landroid/content/res/Resources;

    invoke-virtual {p3, p4}, Lb/d/a/b/c;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 17
    :goto_0
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p2

    invoke-interface {v6, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void

    .line 18
    :cond_3
    iget-object p4, p0, Lb/d/a/b/d;->a:Lb/d/a/b/e;

    invoke-virtual {p4}, Lb/d/a/b/e;->a()Lb/d/a/b/j/e;

    move-result-object p4

    invoke-static {p2, p4}, Lb/d/a/c/a;->a(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lb/d/a/b/j/e;)Lb/d/a/b/j/e;

    move-result-object v3

    .line 19
    invoke-static {p1, v3}, Lb/d/a/c/c;->a(Ljava/lang/String;Lb/d/a/b/j/e;)Ljava/lang/String;

    move-result-object v4

    .line 20
    iget-object p4, p0, Lb/d/a/b/d;->b:Lb/d/a/b/f;

    invoke-virtual {p4, p2, v4}, Lb/d/a/b/f;->a(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Ljava/lang/String;)V

    .line 21
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p4

    invoke-interface {v6, p1, p4}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 22
    iget-object p4, p0, Lb/d/a/b/d;->a:Lb/d/a/b/e;

    iget-object p4, p4, Lb/d/a/b/e;->n:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {p4, v4}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 23
    iget-object v5, p0, Lb/d/a/b/d;->a:Lb/d/a/b/e;

    const/4 v7, 0x0

    aput-object v5, v2, v7

    const-string v5, "Load image from memory cache [%s]"

    invoke-static {v5, v2}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_6

    .line 24
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_6

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v7

    .line 25
    invoke-static {v5, v0}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Lb/d/a/b/d;->b()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v5, v0}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lb/d/a/b/d;->b()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v5, v0}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p3}, Lb/d/a/b/c;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    new-instance v9, Lb/d/a/b/g;

    .line 30
    iget-object v0, p0, Lb/d/a/b/d;->b:Lb/d/a/b/f;

    invoke-virtual {v0, p1}, Lb/d/a/b/f;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p5

    .line 31
    invoke-direct/range {v0 .. v8}, Lb/d/a/b/g;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lb/d/a/b/j/e;Ljava/lang/String;Lb/d/a/b/c;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 32
    new-instance p1, Lb/d/a/b/i;

    iget-object p2, p0, Lb/d/a/b/d;->b:Lb/d/a/b/f;

    .line 33
    invoke-static {p3}, Lb/d/a/b/d;->a(Lb/d/a/b/c;)Landroid/os/Handler;

    move-result-object p5

    .line 34
    invoke-direct {p1, p2, p4, v9, p5}, Lb/d/a/b/i;-><init>(Lb/d/a/b/f;Landroid/graphics/Bitmap;Lb/d/a/b/g;Landroid/os/Handler;)V

    .line 35
    invoke-virtual {p3}, Lb/d/a/b/c;->n()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 36
    invoke-virtual {p1}, Lb/d/a/b/i;->run()V

    goto :goto_2

    .line 37
    :cond_4
    iget-object p2, p0, Lb/d/a/b/d;->b:Lb/d/a/b/f;

    invoke-virtual {p2, p1}, Lb/d/a/b/f;->a(Lb/d/a/b/i;)V

    goto :goto_2

    .line 38
    :cond_5
    invoke-virtual {p3}, Lb/d/a/b/c;->d()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object p3

    sget-object p5, Lb/d/a/b/j/f;->c:Lb/d/a/b/j/f;

    invoke-interface {p3, p4, p2, p5}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lb/d/a/b/j/f;)V

    .line 39
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p2

    invoke-interface {v6, p1, p2, p4}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 40
    :cond_6
    invoke-virtual {p3}, Lb/d/a/b/c;->t()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 41
    iget-object p4, p0, Lb/d/a/b/d;->a:Lb/d/a/b/e;

    iget-object p4, p4, Lb/d/a/b/e;->a:Landroid/content/res/Resources;

    invoke-virtual {p3, p4}, Lb/d/a/b/c;->c(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-interface {p2, p4}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    .line 42
    :cond_7
    invoke-virtual {p3}, Lb/d/a/b/c;->m()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 43
    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 44
    :cond_8
    :goto_1
    new-instance p4, Lb/d/a/b/g;

    .line 45
    iget-object v0, p0, Lb/d/a/b/d;->b:Lb/d/a/b/f;

    invoke-virtual {v0, p1}, Lb/d/a/b/f;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p5

    .line 46
    invoke-direct/range {v0 .. v8}, Lb/d/a/b/g;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lb/d/a/b/j/e;Ljava/lang/String;Lb/d/a/b/c;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 47
    new-instance p1, Lb/d/a/b/h;

    iget-object p2, p0, Lb/d/a/b/d;->b:Lb/d/a/b/f;

    .line 48
    invoke-static {p3}, Lb/d/a/b/d;->a(Lb/d/a/b/c;)Landroid/os/Handler;

    move-result-object p3

    .line 49
    invoke-direct {p1, p2, p4, p3}, Lb/d/a/b/h;-><init>(Lb/d/a/b/f;Lb/d/a/b/g;Landroid/os/Handler;)V

    .line 50
    iget-object p2, p0, Lb/d/a/b/d;->b:Lb/d/a/b/f;

    invoke-virtual {p2, p1}, Lb/d/a/b/f;->a(Lb/d/a/b/h;)V

    :goto_2
    return-void

    .line 51
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/d/a/b/d;->a()V

    .line 2
    iget-object v0, p0, Lb/d/a/b/d;->a:Lb/d/a/b/e;

    iget-object v0, v0, Lb/d/a/b/e;->n:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    return-object v0
.end method
