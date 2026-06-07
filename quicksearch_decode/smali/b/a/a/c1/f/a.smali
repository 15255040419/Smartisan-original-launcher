.class public Lb/a/a/c1/f/a;
.super Ljava/lang/Object;
.source "Bitmapcaching.java"


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field public static volatile b:Landroid/graphics/Bitmap;

.field public static volatile c:Landroid/graphics/Bitmap;

.field public static volatile d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(II)V
    .locals 2

    const-class v0, Lb/a/a/c1/f/a;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lb/a/a/c1/f/a;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 10
    sget-object v1, Lb/a/a/c1/f/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p0, :cond_0

    sget-object v1, Lb/a/a/c1/f/a;->c:Landroid/graphics/Bitmap;

    .line 11
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_0
    :try_start_1
    sget-boolean v1, Lb/a/a/c1/c;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "scaleToThumbnail update cache for size changed"

    invoke-static {v1}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    .line 14
    :cond_1
    sget-object v1, Lb/a/a/c1/f/a;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    sget-object v1, Lb/a/a/c1/f/a;->c:Landroid/graphics/Bitmap;

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 16
    sget-object v1, Lb/a/a/c1/f/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/4 v1, 0x0

    .line 17
    sput-object v1, Lb/a/a/c1/f/a;->c:Landroid/graphics/Bitmap;

    :cond_3
    int-to-float p0, p0

    const/high16 v1, 0x3e000000    # 0.125f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 18
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lb/a/a/c1/f/a;->c:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 19
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/c1/f/a;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .line 2
    invoke-static {p0}, Lb/a/a/c1/g/c;->d(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lb/a/a/c1/f/a;->b:Landroid/graphics/Bitmap;

    .line 3
    sget-object p0, Lb/a/a/c1/f/a;->b:Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    .line 4
    sget-object p0, Lb/a/a/c1/f/a;->a:Ljava/lang/String;

    const-string v0, "screenshotWithWithoutThumbModeArea return null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    sget-object p0, Lb/a/a/c1/f/a;->b:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lb/a/a/c1/g/c;->a(Landroid/graphics/Bitmap;)V

    .line 7
    sget-boolean p0, Lb/a/a/c1/c;->e:Z

    if-eqz p0, :cond_1

    .line 8
    sget-object p0, Lb/a/a/c1/f/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scale bitmap ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
