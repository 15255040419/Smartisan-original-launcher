.class public Lb/d/a/b/e$a;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final y:Lb/d/a/b/j/g;


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field public g:Ljava/util/concurrent/Executor;

.field public h:Ljava/util/concurrent/Executor;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:Z

.field public n:Lb/d/a/b/j/g;

.field public o:I

.field public p:J

.field public q:I

.field public r:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

.field public s:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

.field public t:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

.field public u:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field public v:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

.field public w:Lb/d/a/b/c;

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lb/d/a/b/j/g;->a:Lb/d/a/b/j/g;

    sput-object v0, Lb/d/a/b/e$a;->y:Lb/d/a/b/j/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/d/a/b/e$a;->b:I

    .line 3
    iput v0, p0, Lb/d/a/b/e$a;->c:I

    .line 4
    iput v0, p0, Lb/d/a/b/e$a;->d:I

    .line 5
    iput v0, p0, Lb/d/a/b/e$a;->e:I

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lb/d/a/b/e$a;->f:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 7
    iput-object v1, p0, Lb/d/a/b/e$a;->g:Ljava/util/concurrent/Executor;

    .line 8
    iput-object v1, p0, Lb/d/a/b/e$a;->h:Ljava/util/concurrent/Executor;

    .line 9
    iput-boolean v0, p0, Lb/d/a/b/e$a;->i:Z

    .line 10
    iput-boolean v0, p0, Lb/d/a/b/e$a;->j:Z

    const/4 v2, 0x3

    .line 11
    iput v2, p0, Lb/d/a/b/e$a;->k:I

    const/4 v2, 0x4

    .line 12
    iput v2, p0, Lb/d/a/b/e$a;->l:I

    .line 13
    iput-boolean v0, p0, Lb/d/a/b/e$a;->m:Z

    .line 14
    sget-object v2, Lb/d/a/b/e$a;->y:Lb/d/a/b/j/g;

    iput-object v2, p0, Lb/d/a/b/e$a;->n:Lb/d/a/b/j/g;

    .line 15
    iput v0, p0, Lb/d/a/b/e$a;->o:I

    const-wide/16 v2, 0x0

    .line 16
    iput-wide v2, p0, Lb/d/a/b/e$a;->p:J

    .line 17
    iput v0, p0, Lb/d/a/b/e$a;->q:I

    .line 18
    iput-object v1, p0, Lb/d/a/b/e$a;->r:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 19
    iput-object v1, p0, Lb/d/a/b/e$a;->s:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 20
    iput-object v1, p0, Lb/d/a/b/e$a;->t:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 21
    iput-object v1, p0, Lb/d/a/b/e$a;->u:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 22
    iput-object v1, p0, Lb/d/a/b/e$a;->w:Lb/d/a/b/c;

    .line 23
    iput-boolean v0, p0, Lb/d/a/b/e$a;->x:Z

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/d/a/b/e$a;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lb/d/a/b/e$a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/e$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lb/d/a/b/e$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/e$a;->b:I

    return p0
.end method

.method public static synthetic c(Lb/d/a/b/e$a;)Lb/d/a/b/j/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/e$a;->n:Lb/d/a/b/j/g;

    return-object p0
.end method

.method public static synthetic d(Lb/d/a/b/e$a;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/e$a;->s:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    return-object p0
.end method

.method public static synthetic e(Lb/d/a/b/e$a;)Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/e$a;->r:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    return-object p0
.end method

.method public static synthetic f(Lb/d/a/b/e$a;)Lb/d/a/b/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/e$a;->w:Lb/d/a/b/c;

    return-object p0
.end method

.method public static synthetic g(Lb/d/a/b/e$a;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/e$a;->u:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    return-object p0
.end method

.method public static synthetic h(Lb/d/a/b/e$a;)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/e$a;->v:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    return-object p0
.end method

.method public static synthetic i(Lb/d/a/b/e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/b/e$a;->i:Z

    return p0
.end method

.method public static synthetic j(Lb/d/a/b/e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/b/e$a;->j:Z

    return p0
.end method

.method public static synthetic k(Lb/d/a/b/e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/b/e$a;->x:Z

    return p0
.end method

.method public static synthetic l(Lb/d/a/b/e$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/e$a;->c:I

    return p0
.end method

.method public static synthetic m(Lb/d/a/b/e$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/e$a;->d:I

    return p0
.end method

.method public static synthetic n(Lb/d/a/b/e$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/e$a;->e:I

    return p0
.end method

.method public static synthetic o(Lb/d/a/b/e$a;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/e$a;->f:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method public static synthetic p(Lb/d/a/b/e$a;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/e$a;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic q(Lb/d/a/b/e$a;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/e$a;->h:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic r(Lb/d/a/b/e$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/e$a;->k:I

    return p0
.end method

.method public static synthetic s(Lb/d/a/b/e$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/e$a;->l:I

    return p0
.end method


# virtual methods
.method public a(I)Lb/d/a/b/e$a;
    .locals 2

    .line 2
    iget-object v0, p0, Lb/d/a/b/e$a;->g:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/d/a/b/e$a;->h:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    .line 3
    invoke-static {v1, v0}, Lb/d/a/c/b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    .line 4
    iput v0, p0, Lb/d/a/b/e$a;->l:I

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    .line 5
    iput v0, p0, Lb/d/a/b/e$a;->l:I

    goto :goto_0

    .line 6
    :cond_3
    iput p1, p0, Lb/d/a/b/e$a;->l:I

    :goto_0
    return-object p0
.end method

.method public a(Lb/d/a/b/c;)Lb/d/a/b/e$a;
    .locals 0

    .line 13
    iput-object p1, p0, Lb/d/a/b/e$a;->w:Lb/d/a/b/c;

    return-object p0
.end method

.method public a(Lb/d/a/b/j/g;)Lb/d/a/b/e$a;
    .locals 2

    .line 7
    iget-object v0, p0, Lb/d/a/b/e$a;->g:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/d/a/b/e$a;->h:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    .line 8
    invoke-static {v1, v0}, Lb/d/a/c/b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_1
    iput-object p1, p0, Lb/d/a/b/e$a;->n:Lb/d/a/b/j/g;

    return-object p0
.end method

.method public a(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lb/d/a/b/e$a;
    .locals 2

    .line 10
    iget-object v0, p0, Lb/d/a/b/e$a;->s:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    .line 11
    invoke-static {v1, v0}, Lb/d/a/c/b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_0
    iput-object p1, p0, Lb/d/a/b/e$a;->t:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    return-object p0
.end method

.method public a()Lb/d/a/b/e;
    .locals 2

    .line 14
    invoke-virtual {p0}, Lb/d/a/b/e$a;->c()V

    .line 15
    new-instance v0, Lb/d/a/b/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/d/a/b/e;-><init>(Lb/d/a/b/e$a;Lb/d/a/b/e;)V

    return-object v0
.end method

.method public b()Lb/d/a/b/e$a;
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/d/a/b/e$a;->m:Z

    return-object p0
.end method

.method public final c()V
    .locals 5

    .line 2
    iget-object v0, p0, Lb/d/a/b/e$a;->g:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lb/d/a/b/e$a;->k:I

    iget v2, p0, Lb/d/a/b/e$a;->l:I

    iget-object v3, p0, Lb/d/a/b/e$a;->n:Lb/d/a/b/j/g;

    invoke-static {v0, v2, v3}, Lb/d/a/b/a;->a(IILb/d/a/b/j/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lb/d/a/b/e$a;->g:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v1, p0, Lb/d/a/b/e$a;->i:Z

    .line 6
    :goto_0
    iget-object v0, p0, Lb/d/a/b/e$a;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 7
    iget v0, p0, Lb/d/a/b/e$a;->k:I

    iget v1, p0, Lb/d/a/b/e$a;->l:I

    iget-object v2, p0, Lb/d/a/b/e$a;->n:Lb/d/a/b/j/g;

    invoke-static {v0, v1, v2}, Lb/d/a/b/a;->a(IILb/d/a/b/j/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lb/d/a/b/e$a;->h:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 9
    :cond_1
    iput-boolean v1, p0, Lb/d/a/b/e$a;->j:Z

    .line 10
    :goto_1
    iget-object v0, p0, Lb/d/a/b/e$a;->s:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lb/d/a/b/e$a;->t:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    if-nez v0, :cond_2

    .line 12
    invoke-static {}, Lb/d/a/b/a;->b()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e$a;->t:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 13
    :cond_2
    iget-object v0, p0, Lb/d/a/b/e$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lb/d/a/b/e$a;->t:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    iget-wide v2, p0, Lb/d/a/b/e$a;->p:J

    iget v4, p0, Lb/d/a/b/e$a;->q:I

    invoke-static {v0, v1, v2, v3, v4}, Lb/d/a/b/a;->a(Landroid/content/Context;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    .line 14
    iput-object v0, p0, Lb/d/a/b/e$a;->s:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 15
    :cond_3
    iget-object v0, p0, Lb/d/a/b/e$a;->r:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    if-nez v0, :cond_4

    .line 16
    iget v0, p0, Lb/d/a/b/e$a;->o:I

    invoke-static {v0}, Lb/d/a/b/a;->a(I)Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e$a;->r:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 17
    :cond_4
    iget-boolean v0, p0, Lb/d/a/b/e$a;->m:Z

    if-eqz v0, :cond_5

    .line 18
    new-instance v0, Lb/d/a/a/b/a/a;

    iget-object v1, p0, Lb/d/a/b/e$a;->r:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-static {}, Lb/d/a/c/c;->a()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb/d/a/a/b/a/a;-><init>(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;Ljava/util/Comparator;)V

    iput-object v0, p0, Lb/d/a/b/e$a;->r:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 19
    :cond_5
    iget-object v0, p0, Lb/d/a/b/e$a;->u:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    if-nez v0, :cond_6

    .line 20
    iget-object v0, p0, Lb/d/a/b/e$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lb/d/a/b/a;->a(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e$a;->u:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 21
    :cond_6
    iget-object v0, p0, Lb/d/a/b/e$a;->v:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    if-nez v0, :cond_7

    .line 22
    iget-boolean v0, p0, Lb/d/a/b/e$a;->x:Z

    invoke-static {v0}, Lb/d/a/b/a;->a(Z)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e$a;->v:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    .line 23
    :cond_7
    iget-object v0, p0, Lb/d/a/b/e$a;->w:Lb/d/a/b/c;

    if-nez v0, :cond_8

    .line 24
    invoke-static {}, Lb/d/a/b/c;->u()Lb/d/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/e$a;->w:Lb/d/a/b/c;

    :cond_8
    return-void
.end method
