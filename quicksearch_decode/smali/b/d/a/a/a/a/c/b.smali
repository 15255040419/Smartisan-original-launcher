.class public Lb/d/a/a/a/a/c/b;
.super Ljava/lang/Object;
.source "LruDiscCache.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/disc/DiskCache;


# static fields
.field public static final g:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field public a:Lb/d/a/a/a/a/c/a;

.field public b:Ljava/io/File;

.field public final c:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

.field public d:I

.field public e:Landroid/graphics/Bitmap$CompressFormat;

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lb/d/a/a/a/a/c/b;->g:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    .line 2
    iput v0, p0, Lb/d/a/a/a/a/c/b;->d:I

    .line 3
    sget-object v0, Lb/d/a/a/a/a/c/b;->g:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lb/d/a/a/a/a/c/b;->e:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Lb/d/a/a/a/a/c/b;->f:I

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_4

    if-ltz p5, :cond_3

    if-eqz p2, :cond_2

    if-nez v0, :cond_0

    const-wide p3, 0x7fffffffffffffffL

    :cond_0
    move-wide v3, p3

    if-nez p5, :cond_1

    const p5, 0x7fffffff

    :cond_1
    move v5, p5

    .line 5
    iput-object p2, p0, Lb/d/a/a/a/a/c/b;->c:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 6
    iget-object v2, p0, Lb/d/a/a/a/a/c/b;->b:Ljava/io/File;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lb/d/a/a/a/a/c/b;->a(Ljava/io/File;Ljava/io/File;JI)V

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fileNameGenerator argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxFileCount argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxSize argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheDir argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lb/d/a/a/a/a/c/b;->c:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lb/d/a/a/a/a/c/b;->b:Ljava/io/File;

    return-void
.end method

.method public final a(Ljava/io/File;Ljava/io/File;JI)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p1

    move-wide v3, p3

    move v5, p5

    .line 1
    :try_start_0
    invoke-static/range {v0 .. v5}, Lb/d/a/a/a/a/c/a;->a(Ljava/io/File;IIJI)Lb/d/a/a/a/a/c/a;

    move-result-object p1

    iput-object p1, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lb/d/a/c/b;->a(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v3, p3

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lb/d/a/a/a/a/c/b;->a(Ljava/io/File;Ljava/io/File;JI)V

    :cond_0
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    invoke-virtual {v0}, Lb/d/a/a/a/a/c/a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2
    :try_start_1
    invoke-static {v0}, Lb/d/a/c/b;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :goto_0
    iget-object v0, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    invoke-virtual {v0}, Lb/d/a/a/a/a/c/a;->c()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lb/d/a/a/a/a/c/b;->b:Ljava/io/File;

    iget-object v0, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    invoke-virtual {v0}, Lb/d/a/a/a/a/c/a;->e()J

    move-result-wide v4

    iget-object v0, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    invoke-virtual {v0}, Lb/d/a/a/a/a/c/a;->d()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lb/d/a/a/a/a/c/b;->a(Ljava/io/File;Ljava/io/File;JI)V

    return-void

    :goto_1
    iget-object v1, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    invoke-virtual {v1}, Lb/d/a/a/a/a/c/a;->c()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lb/d/a/a/a/a/c/b;->b:Ljava/io/File;

    iget-object v1, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    invoke-virtual {v1}, Lb/d/a/a/a/a/c/a;->e()J

    move-result-wide v5

    iget-object v1, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    invoke-virtual {v1}, Lb/d/a/a/a/a/c/a;->d()I

    move-result v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lb/d/a/a/a/a/c/b;->a(Ljava/io/File;Ljava/io/File;JI)V

    .line 4
    throw v0
.end method

.method public close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    invoke-virtual {v0}, Lb/d/a/a/a/a/c/a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lb/d/a/c/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    invoke-virtual {p0, p1}, Lb/d/a/a/a/a/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lb/d/a/a/a/a/c/a;->b(Ljava/lang/String;)Lb/d/a/a/a/a/c/a$e;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p1, v1}, Lb/d/a/a/a/a/c/a$e;->a(I)Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lb/d/a/a/a/a/c/a$e;->close()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p1, v0

    .line 4
    :goto_1
    :try_start_2
    invoke-static {v1}, Lb/d/a/c/b;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lb/d/a/a/a/a/c/a$e;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lb/d/a/a/a/a/c/a$e;->close()V

    .line 6
    :cond_3
    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    invoke-virtual {v0}, Lb/d/a/a/a/a/c/a;->c()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    invoke-virtual {p0, p1}, Lb/d/a/a/a/a/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/d/a/a/a/a/c/a;->d(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lb/d/a/c/b;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 10
    iget-object v0, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    invoke-virtual {p0, p1}, Lb/d/a/a/a/a/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/d/a/a/a/a/c/a;->a(Ljava/lang/String;)Lb/d/a/a/a/a/c/a$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 11
    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1, v0}, Lb/d/a/a/a/a/c/a$c;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    iget v2, p0, Lb/d/a/a/a/a/c/b;->d:I

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 12
    :try_start_0
    iget-object v0, p0, Lb/d/a/a/a/a/c/b;->e:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lb/d/a/a/a/a/c/b;->f:I

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_1

    .line 14
    invoke-virtual {p1}, Lb/d/a/a/a/a/c/a$c;->b()V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Lb/d/a/a/a/a/c/a$c;->a()V

    :goto_0
    return p2

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 17
    throw p1
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lb/d/a/a/a/a/c/b;->a:Lb/d/a/a/a/a/c/a;

    invoke-virtual {p0, p1}, Lb/d/a/a/a/a/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/d/a/a/a/a/c/a;->a(Ljava/lang/String;)Lb/d/a/a/a/a/c/a$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1, v0}, Lb/d/a/a/a/a/c/a$c;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    iget v2, p0, Lb/d/a/a/a/a/c/b;->d:I

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 3
    :try_start_0
    iget v0, p0, Lb/d/a/a/a/a/c/b;->d:I

    invoke-static {p2, v1, p3, v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;I)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lb/d/a/a/a/a/c/a$c;->b()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lb/d/a/a/a/a/c/a$c;->a()V

    :goto_0
    return p2

    :catchall_0
    move-exception p2

    .line 7
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 8
    invoke-virtual {p1}, Lb/d/a/a/a/a/c/a$c;->a()V

    .line 9
    throw p2
.end method
