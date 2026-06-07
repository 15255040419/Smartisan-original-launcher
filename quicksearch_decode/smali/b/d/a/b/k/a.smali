.class public Lb/d/a/b/k/a;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/d/a/b/k/a$a;,
        Lb/d/a/b/k/a$b;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lb/d/a/b/k/a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lb/d/a/b/k/b;IZ)Landroid/graphics/Bitmap;
    .locals 10

    .line 26
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 27
    invoke-virtual {p2}, Lb/d/a/b/k/b;->e()Lb/d/a/b/j/d;

    move-result-object v0

    .line 28
    sget-object v1, Lb/d/a/b/j/d;->d:Lb/d/a/b/j/d;

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Lb/d/a/b/j/d;->e:Lb/d/a/b/j/d;

    if-ne v0, v1, :cond_2

    .line 29
    :cond_0
    new-instance v1, Lb/d/a/b/j/e;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v1, v7, v8, p3}, Lb/d/a/b/j/e;-><init>(III)V

    .line 30
    invoke-virtual {p2}, Lb/d/a/b/k/b;->g()Lb/d/a/b/j/e;

    move-result-object v7

    .line 31
    invoke-virtual {p2}, Lb/d/a/b/k/b;->h()Lb/d/a/b/j/h;

    move-result-object v8

    sget-object v9, Lb/d/a/b/j/d;->e:Lb/d/a/b/j/d;

    if-ne v0, v9, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v6

    .line 32
    :goto_0
    invoke-static {v1, v7, v8, v0}, Lb/d/a/c/a;->b(Lb/d/a/b/j/e;Lb/d/a/b/j/e;Lb/d/a/b/j/h;Z)F

    move-result v0

    .line 33
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_2

    .line 34
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 35
    iget-boolean v7, p0, Lb/d/a/b/k/a;->a:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    .line 36
    invoke-virtual {v1, v0}, Lb/d/a/b/j/e;->a(F)Lb/d/a/b/j/e;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v7, v2

    const/4 v0, 0x3

    invoke-virtual {p2}, Lb/d/a/b/k/b;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const-string v0, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    invoke-static {v0, v7}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz p4, :cond_3

    const/high16 p4, -0x40800000    # -1.0f

    .line 37
    invoke-virtual {v5, p4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 38
    iget-boolean p4, p0, Lb/d/a/b/k/a;->a:Z

    if-eqz p4, :cond_3

    new-array p4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lb/d/a/b/k/b;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v6

    const-string v0, "Flip image horizontally [%s]"

    invoke-static {v0, p4}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-eqz p3, :cond_4

    int-to-float p4, p3

    .line 39
    invoke-virtual {v5, p4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 40
    iget-boolean p4, p0, Lb/d/a/b/k/a;->a:Z

    if-eqz p4, :cond_4

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, v6

    invoke-virtual {p2}, Lb/d/a/b/k/b;->d()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, v4

    const-string p2, "Rotate image on %1$d\u00b0 [%2$s]"

    invoke-static {p2, p4}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    .line 43
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eq p2, p1, :cond_5

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-object p2
.end method

.method public a(Lb/d/a/b/j/e;Lb/d/a/b/k/b;)Landroid/graphics/BitmapFactory$Options;
    .locals 5

    .line 16
    invoke-virtual {p2}, Lb/d/a/b/k/b;->e()Lb/d/a/b/j/d;

    move-result-object v0

    .line 17
    sget-object v1, Lb/d/a/b/j/d;->a:Lb/d/a/b/j/d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 18
    invoke-static {p1}, Lb/d/a/c/a;->a(Lb/d/a/b/j/e;)I

    move-result v0

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p2}, Lb/d/a/b/k/b;->g()Lb/d/a/b/j/e;

    move-result-object v1

    .line 20
    sget-object v4, Lb/d/a/b/j/d;->b:Lb/d/a/b/j/d;

    if-ne v0, v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 21
    :goto_0
    invoke-virtual {p2}, Lb/d/a/b/k/b;->h()Lb/d/a/b/j/h;

    move-result-object v4

    invoke-static {p1, v1, v4, v0}, Lb/d/a/c/a;->a(Lb/d/a/b/j/e;Lb/d/a/b/j/e;Lb/d/a/b/j/h;Z)I

    move-result v0

    :goto_1
    if-le v0, v3, :cond_2

    .line 22
    iget-boolean v1, p0, Lb/d/a/b/k/a;->a:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 23
    invoke-virtual {p1, v0}, Lb/d/a/b/j/e;->a(I)Lb/d/a/b/j/e;

    move-result-object p1

    aput-object p1, v1, v3

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x3

    invoke-virtual {p2}, Lb/d/a/b/k/b;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    invoke-static {p1, v1}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_2
    invoke-virtual {p2}, Lb/d/a/b/k/b;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    .line 25
    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lb/d/a/b/k/a$a;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 12
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    sget-object v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    invoke-virtual {v3, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    .line 13
    invoke-virtual {v2, v3, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v0, v1

    :pswitch_1
    const/16 p1, 0x5a

    goto :goto_0

    :pswitch_2
    move v0, v1

    :pswitch_3
    const/16 p1, 0x10e

    goto :goto_0

    :pswitch_4
    move v0, v1

    :pswitch_5
    const/16 p1, 0xb4

    :goto_0
    move v4, v0

    move v0, p1

    move p1, v4

    goto :goto_2

    :pswitch_6
    move v1, v0

    :pswitch_7
    move p1, v1

    goto :goto_2

    :catch_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Can\'t read EXIF tags from file [%s]"

    .line 14
    invoke-static {p1, v1}, Lb/d/a/c/b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move p1, v0

    .line 15
    :goto_2
    new-instance v1, Lb/d/a/b/k/a$a;

    invoke-direct {v1, v0, p1}, Lb/d/a/b/k/a$a;-><init>(IZ)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/io/InputStream;Lb/d/a/b/k/b;)Lb/d/a/b/k/a$b;
    .locals 4

    .line 2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {p2}, Lb/d/a/b/k/b;->f()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lb/d/a/b/k/b;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lb/d/a/b/k/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lb/d/a/b/k/a;->a(Ljava/lang/String;)Lb/d/a/b/k/a$a;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lb/d/a/b/k/a$a;

    invoke-direct {p1}, Lb/d/a/b/k/a$a;-><init>()V

    .line 9
    :goto_0
    new-instance p2, Lb/d/a/b/k/a$b;

    new-instance v1, Lb/d/a/b/j/e;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, p1, Lb/d/a/b/k/a$a;->a:I

    invoke-direct {v1, v2, v0, v3}, Lb/d/a/b/j/e;-><init>(III)V

    invoke-direct {p2, v1, p1}, Lb/d/a/b/k/a$b;-><init>(Lb/d/a/b/j/e;Lb/d/a/b/k/a$a;)V

    return-object p2
.end method

.method public a(Lb/d/a/b/k/b;)Ljava/io/InputStream;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lb/d/a/b/k/b;->b()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    invoke-virtual {p1}, Lb/d/a/b/k/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lb/d/a/b/k/b;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const-string v0, "image/jpeg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->d(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    move-result-object p1

    sget-object p2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/io/InputStream;Lb/d/a/b/k/b;)Ljava/io/InputStream;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 3
    invoke-virtual {p0, p2}, Lb/d/a/b/k/a;->a(Lb/d/a/b/k/b;)Ljava/io/InputStream;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public decode(Lb/d/a/b/k/b;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lb/d/a/b/k/a;->a(Lb/d/a/b/k/b;)Ljava/io/InputStream;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lb/d/a/b/k/a;->a(Ljava/io/InputStream;Lb/d/a/b/k/b;)Lb/d/a/b/k/a$b;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v0, p1}, Lb/d/a/b/k/a;->b(Ljava/io/InputStream;Lb/d/a/b/k/b;)Ljava/io/InputStream;

    move-result-object v0

    .line 4
    iget-object v2, v1, Lb/d/a/b/k/a$b;->a:Lb/d/a/b/j/e;

    invoke-virtual {p0, v2, p1}, Lb/d/a/b/k/a;->a(Lb/d/a/b/j/e;Lb/d/a/b/k/b;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    if-nez v2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1}, Lb/d/a/b/k/b;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Image can\'t be decoded [%s]"

    invoke-static {p1, v0}, Lb/d/a/c/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v1, Lb/d/a/b/k/a$b;->b:Lb/d/a/b/k/a$a;

    iget v1, v0, Lb/d/a/b/k/a$a;->a:I

    .line 9
    iget-boolean v0, v0, Lb/d/a/b/k/a$a;->b:Z

    .line 10
    invoke-virtual {p0, v2, p1, v1, v0}, Lb/d/a/b/k/a;->a(Landroid/graphics/Bitmap;Lb/d/a/b/k/b;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    return-object v2

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 12
    throw p1
.end method
