.class public Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;
.super Ljava/lang/Object;
.source "FullTextAsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$b;,
        Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;,
        Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$d;,
        Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$c;
    }
.end annotation


# static fields
.field public static volatile k:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

.field public static final l:[Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/graphics/Bitmap;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/util/concurrent/ExecutorService;

.field public i:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public j:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "_id"

    const-string v1, "album_id"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$c;

    invoke-direct {v0}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$c;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->i:Landroid/util/LruCache;

    .line 3
    new-instance v0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$b;-><init>(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->j:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a:Landroid/content/Context;

    const/4 p1, 0x5

    .line 5
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->h:Ljava/util/concurrent/ExecutorService;

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07024d

    .line 7
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->b:Landroid/graphics/Bitmap;

    const v0, 0x7f070489

    .line 8
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->c:Landroid/graphics/Bitmap;

    const v0, 0x7f060169

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->d:I

    const v0, 0x7f0600d5

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->e:I

    const v0, 0x7f060050

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->g:I

    .line 12
    iget p1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->e:I

    iget v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->d:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->f:I

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8

    .line 31
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    .line 32
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    mul-double v4, v0, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    .line 33
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p0, v4

    int-to-double p1, p1

    div-double/2addr v0, p1

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-int p1, p1

    if-ge p1, p0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/FileInputStream;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 20
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 21
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 23
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 25
    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v1, :cond_1

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x30000

    .line 26
    invoke-static {p2, p1, v1}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 28
    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 29
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 30
    invoke-static {p0, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;)Landroid/os/Handler;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->j:Landroid/os/Handler;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->k:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->k:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->k:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->k:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    return-object p0
.end method

.method public static b(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0

    .line 13
    invoke-static {p0, p1, p2}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p0, :cond_1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x7

    .line 14
    div-int/2addr p0, p1

    mul-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method public static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 18
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 19
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 20
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float p1, p1

    const/4 v5, 0x1

    .line 21
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 23
    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 24
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 25
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->k:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    return-object v0
.end method

.method public static synthetic c(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_0
    iget v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->e:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 47
    invoke-static {p2}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a(I)I

    move-result v2

    if-lez p2, :cond_1

    int-to-float p2, v2

    .line 48
    iget v2, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->e:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, p2, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 49
    :cond_1
    iget p2, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->f:I

    int-to-float v2, p2

    int-to-float p2, p2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 50
    iget-object p2, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->b:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 p2, 0x1f

    .line 51
    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->save(I)I

    .line 52
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->e:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    iget v2, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->f:I

    int-to-float v3, v2

    int-to-float v2, v2

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 41
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 p2, 0x1f

    .line 42
    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->save(I)I

    .line 43
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->i:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->i:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a(ILjava/lang/String;ZLcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;)V

    return-void
.end method

.method public final a(ILjava/lang/String;ZLcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;)V
    .locals 2

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p4, v1, p2}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 14
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 15
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    invoke-interface {p4, p3, p2}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_1
    sget-object p3, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->k:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    iget-object p3, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;-><init>(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;ILjava/lang/String;Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 19
    :cond_3
    :goto_0
    invoke-interface {p4, v1, p2}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/albumart"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-object v1

    .line 8
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->e:I

    const/high16 v2, 0x30000

    invoke-static {p1, v0, v2}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a(Ljava/io/FileInputStream;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    .line 9
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_3
    return-object v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v1

    goto :goto_1

    :catch_3
    move-exception v0

    move-object p1, v1

    :goto_0
    :try_start_4
    const-string v2, "QSB.FTAIL"

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMusicDrawable exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_4

    .line 11
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_4
    return-object v1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz p1, :cond_5

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 12
    :catch_5
    :cond_5
    throw v0
.end method

.method public final c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5
    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 6
    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 8
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 10
    iget v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->g:I

    iget v1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->g:I

    invoke-static {p1, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 v0, 0xc

    .line 11
    invoke-static {p1, v0}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->l:[Ljava/lang/String;

    const-string v5, "_data = ?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_8

    .line 5
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 8
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 10
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    .line 12
    :cond_4
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1

    .line 14
    :cond_6
    :try_start_3
    iget v2, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->d:I

    iget v3, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->d:I

    const/4 v4, 0x2

    .line 15
    invoke-static {v0, v2, v3, v4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->b:Landroid/graphics/Bitmap;

    .line 16
    invoke-virtual {p0, v0, v2}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_7

    .line 17
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_8
    :goto_1
    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v1

    :catchall_0
    move-exception v0

    move-object p1, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v1

    :goto_2
    :try_start_4
    const-string v2, "QSB.FTAIL"

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAudioImage exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_a

    .line 19
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v1

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 20
    :cond_b
    throw v0
.end method

.method public final e(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "QSB.FTAIL"

    .line 1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-static {p1, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageThumbnail is null for :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 5
    :cond_1
    invoke-static {p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 6
    invoke-static {}, Lb/a/a/g1/a/f;->a()Lb/a/a/g1/a/f;

    move-result-object v5

    iget v3, v3, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-virtual {v5, v3}, Lb/a/a/g1/a/f;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    .line 8
    invoke-virtual {v3, p1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 9
    :cond_2
    iget p1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->d:I

    iget v3, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->d:I

    const/4 v5, 0x2

    invoke-static {v1, p1, v3, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImageIcon exception :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->d:I

    iget v2, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->d:I

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideoIcon exception :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSB.FTAIL"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
