.class public Lb/d/a/b/a;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/d/a/b/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 7

    .line 6
    invoke-static {p0}, Lb/d/a/b/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    if-lez p4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, Lb/d/a/c/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 8
    new-instance p2, Lb/d/a/a/a/a/b;

    invoke-direct {p2, p0, v0, p1}, Lb/d/a/a/a/a/b;-><init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    return-object p2

    .line 9
    :cond_1
    :goto_0
    invoke-static {p0}, Lb/d/a/c/d;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 10
    new-instance p0, Lb/d/a/a/a/a/c/b;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lb/d/a/a/a/a/c/b;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)V

    .line 11
    invoke-virtual {p0, v0}, Lb/d/a/a/a/a/c/b;->a(Ljava/io/File;)V

    return-object p0
.end method

.method public static a(I)Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    .locals 4

    if-nez p0, :cond_0

    .line 12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p0, v0

    .line 13
    :cond_0
    new-instance v0, Lb/d/a/a/b/a/b;

    invoke-direct {v0, p0}, Lb/d/a/a/b/a/b;-><init>(I)V

    return-object v0
.end method

.method public static a(Z)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
    .locals 1

    .line 15
    new-instance v0, Lb/d/a/b/k/a;

    invoke-direct {v0, p0}, Lb/d/a/b/k/a;-><init>(Z)V

    return-object v0
.end method

.method public static a()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1

    .line 16
    new-instance v0, Lb/d/a/b/l/a;

    invoke-direct {v0}, Lb/d/a/b/l/a;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1

    .line 14
    new-instance v0, Lb/d/a/b/m/a;

    invoke-direct {v0, p0}, Lb/d/a/b/m/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(IILb/d/a/b/j/g;)Ljava/util/concurrent/Executor;
    .locals 9

    .line 1
    sget-object v0, Lb/d/a/b/j/g;->b:Lb/d/a/b/j/g;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    new-instance p2, Lb/d/a/b/j/i/a;

    invoke-direct {p2}, Lb/d/a/b/j/i/a;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_1
    move-object v6, p2

    .line 3
    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v0, "uil-pool-"

    .line 4
    invoke-static {p1, v0}, Lb/d/a/b/a;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move-object v0, p2

    move v1, p0

    move v2, p0

    .line 5
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object p2
.end method

.method public static a(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 17
    new-instance v0, Lb/d/a/b/a$a;

    invoke-direct {v0, p0, p1}, Lb/d/a/b/a$a;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static b()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
    .locals 1

    .line 1
    new-instance v0, Lb/d/a/a/a/b/a;

    invoke-direct {v0}, Lb/d/a/a/a/b/a;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lb/d/a/c/d;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/io/File;

    const-string v1, "uil-images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static c()Ljava/util/concurrent/Executor;
    .locals 2

    const/4 v0, 0x5

    const-string v1, "uil-pool-d-"

    .line 1
    invoke-static {v0, v1}, Lb/d/a/b/a;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
