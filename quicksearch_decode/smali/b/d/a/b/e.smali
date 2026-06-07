.class public final Lb/d/a/b/e;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/d/a/b/e$a;,
        Lb/d/a/b/e$b;,
        Lb/d/a/b/e$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Z

.field public final j:Z

.field public final k:I

.field public final l:I

.field public final m:Lb/d/a/b/j/g;

.field public final n:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

.field public final o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

.field public final p:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field public final q:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

.field public final r:Lb/d/a/b/c;

.field public final s:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field public final t:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;


# direct methods
.method public constructor <init>(Lb/d/a/b/e$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lb/d/a/b/e$a;->a(Lb/d/a/b/e$a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e;->a:Landroid/content/res/Resources;

    .line 3
    invoke-static {p1}, Lb/d/a/b/e$a;->b(Lb/d/a/b/e$a;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/e;->b:I

    .line 4
    invoke-static {p1}, Lb/d/a/b/e$a;->l(Lb/d/a/b/e$a;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/e;->c:I

    .line 5
    invoke-static {p1}, Lb/d/a/b/e$a;->m(Lb/d/a/b/e$a;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/e;->d:I

    .line 6
    invoke-static {p1}, Lb/d/a/b/e$a;->n(Lb/d/a/b/e$a;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/e;->e:I

    .line 7
    invoke-static {p1}, Lb/d/a/b/e$a;->o(Lb/d/a/b/e$a;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e;->f:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 8
    invoke-static {p1}, Lb/d/a/b/e$a;->p(Lb/d/a/b/e$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e;->g:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {p1}, Lb/d/a/b/e$a;->q(Lb/d/a/b/e$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e;->h:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {p1}, Lb/d/a/b/e$a;->r(Lb/d/a/b/e$a;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/e;->k:I

    .line 11
    invoke-static {p1}, Lb/d/a/b/e$a;->s(Lb/d/a/b/e$a;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/e;->l:I

    .line 12
    invoke-static {p1}, Lb/d/a/b/e$a;->c(Lb/d/a/b/e$a;)Lb/d/a/b/j/g;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e;->m:Lb/d/a/b/j/g;

    .line 13
    invoke-static {p1}, Lb/d/a/b/e$a;->d(Lb/d/a/b/e$a;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 14
    invoke-static {p1}, Lb/d/a/b/e$a;->e(Lb/d/a/b/e$a;)Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e;->n:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 15
    invoke-static {p1}, Lb/d/a/b/e$a;->f(Lb/d/a/b/e$a;)Lb/d/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e;->r:Lb/d/a/b/c;

    .line 16
    invoke-static {p1}, Lb/d/a/b/e$a;->g(Lb/d/a/b/e$a;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e;->p:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 17
    invoke-static {p1}, Lb/d/a/b/e$a;->h(Lb/d/a/b/e$a;)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e;->q:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    .line 18
    invoke-static {p1}, Lb/d/a/b/e$a;->i(Lb/d/a/b/e$a;)Z

    move-result v0

    iput-boolean v0, p0, Lb/d/a/b/e;->i:Z

    .line 19
    invoke-static {p1}, Lb/d/a/b/e$a;->j(Lb/d/a/b/e$a;)Z

    move-result v0

    iput-boolean v0, p0, Lb/d/a/b/e;->j:Z

    .line 20
    new-instance v0, Lb/d/a/b/e$b;

    iget-object v1, p0, Lb/d/a/b/e;->p:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lb/d/a/b/e$b;-><init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lb/d/a/b/e;->s:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 21
    new-instance v0, Lb/d/a/b/e$c;

    iget-object v1, p0, Lb/d/a/b/e;->p:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lb/d/a/b/e$c;-><init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lb/d/a/b/e;->t:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 22
    invoke-static {p1}, Lb/d/a/b/e$a;->k(Lb/d/a/b/e$a;)Z

    move-result p1

    invoke-static {p1}, Lb/d/a/c/b;->a(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lb/d/a/b/e$a;Lb/d/a/b/e;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lb/d/a/b/e;-><init>(Lb/d/a/b/e$a;)V

    return-void
.end method


# virtual methods
.method public a()Lb/d/a/b/j/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/d/a/b/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, p0, Lb/d/a/b/e;->b:I

    if-gtz v1, :cond_0

    .line 3
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    :cond_0
    iget v2, p0, Lb/d/a/b/e;->c:I

    if-gtz v2, :cond_1

    .line 5
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6
    :cond_1
    new-instance v0, Lb/d/a/b/j/e;

    invoke-direct {v0, v1, v2}, Lb/d/a/b/j/e;-><init>(II)V

    return-object v0
.end method
