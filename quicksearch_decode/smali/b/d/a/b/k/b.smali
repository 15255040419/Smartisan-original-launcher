.class public Lb/d/a/b/k/b;
.super Ljava/lang/Object;
.source "ImageDecodingInfo.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lb/d/a/b/j/e;

.field public final d:Lb/d/a/b/j/d;

.field public final e:Lb/d/a/b/j/h;

.field public final f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field public final g:Ljava/lang/Object;

.field public final h:Z

.field public final i:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/d/a/b/j/e;Lb/d/a/b/j/h;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lb/d/a/b/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/d/a/b/k/b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lb/d/a/b/k/b;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lb/d/a/b/k/b;->c:Lb/d/a/b/j/e;

    .line 5
    invoke-virtual {p7}, Lb/d/a/b/c;->g()Lb/d/a/b/j/d;

    move-result-object p1

    iput-object p1, p0, Lb/d/a/b/k/b;->d:Lb/d/a/b/j/d;

    .line 6
    iput-object p5, p0, Lb/d/a/b/k/b;->e:Lb/d/a/b/j/h;

    .line 7
    iput-object p6, p0, Lb/d/a/b/k/b;->f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 8
    invoke-virtual {p7}, Lb/d/a/b/c;->e()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lb/d/a/b/k/b;->g:Ljava/lang/Object;

    .line 9
    invoke-virtual {p7}, Lb/d/a/b/c;->l()Z

    move-result p1

    iput-boolean p1, p0, Lb/d/a/b/k/b;->h:Z

    .line 10
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lb/d/a/b/k/b;->i:Landroid/graphics/BitmapFactory$Options;

    .line 11
    invoke-virtual {p7}, Lb/d/a/b/c;->b()Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    iget-object p2, p0, Lb/d/a/b/k/b;->i:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {p0, p1, p2}, Lb/d/a/b/k/b;->a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .line 14
    iget-object v0, p0, Lb/d/a/b/k/b;->i:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public final a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 2
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 4
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 7
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 9
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 10
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 11
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lb/d/a/b/k/b;->b(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    .line 13
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lb/d/a/b/k/b;->c(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    :cond_1
    return-void
.end method

.method public b()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/d/a/b/k/b;->f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    return-object v0
.end method

.method public final b(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    .line 1
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object v0, p0, Lb/d/a/b/k/b;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final c(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 2
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/b/k/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lb/d/a/b/j/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/b/k/b;->d:Lb/d/a/b/j/d;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/b/k/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lb/d/a/b/j/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/b/k/b;->c:Lb/d/a/b/j/e;

    return-object v0
.end method

.method public h()Lb/d/a/b/j/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/b/k/b;->e:Lb/d/a/b/j/h;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/d/a/b/k/b;->h:Z

    return v0
.end method
