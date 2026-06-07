.class public Lb/a/a/o1/c/b;
.super Ljava/lang/Object;
.source "AppImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/o1/c/b$b;,
        Lb/a/a/o1/c/b$e;,
        Lb/a/a/o1/c/b$d;,
        Lb/a/a/o1/c/b$c;
    }
.end annotation


# static fields
.field public static f:I

.field public static g:Lb/a/a/o1/c/b;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/concurrent/ExecutorService;

.field public d:Landroid/content/Context;

.field public final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/o1/c/b;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/o1/c/b;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Lb/a/a/o1/c/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/o1/c/b$c;-><init>(Lb/a/a/o1/c/b$a;)V

    iput-object v0, p0, Lb/a/a/o1/c/b;->e:Landroid/os/Handler;

    const/4 v0, 0x5

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/o1/c/b;->c:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object p1, p0, Lb/a/a/o1/c/b;->d:Landroid/content/Context;

    .line 7
    iget-object p1, p0, Lb/a/a/o1/c/b;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {p1, v0, v1}, Lb/a/a/n1/h0;->b(Landroid/content/Context;D)I

    move-result p1

    sput p1, Lb/a/a/o1/c/b;->f:I

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 20
    sget v0, Lb/a/a/o1/c/b;->f:I

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 21
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 22
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 23
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lb/a/a/o1/c/b;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/o1/c/b;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lb/a/a/o1/c/b;
    .locals 2

    const-class v0, Lb/a/a/o1/c/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lb/a/a/o1/c/b;->g:Lb/a/a/o1/c/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lb/a/a/o1/c/b;

    invoke-direct {v1, p0}, Lb/a/a/o1/c/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lb/a/a/o1/c/b;->g:Lb/a/a/o1/c/b;

    .line 5
    :cond_0
    sget-object p0, Lb/a/a/o1/c/b;->g:Lb/a/a/o1/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic a(Lb/a/a/o1/c/b;)Ljava/util/Map;
    .locals 0

    .line 2
    iget-object p0, p0, Lb/a/a/o1/c/b;->b:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    .line 11
    :try_start_0
    iget-object v1, p0, Lb/a/a/o1/c/b;->d:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v1

    .line 13
    iget-object v2, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v1, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sget v3, Lb/a/a/o1/c/b;->f:I

    if-le v2, v3, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 15
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 16
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v2}, Lb/a/a/o1/c/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 17
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSB.AppImgLoader"

    invoke-static {v0, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lb/a/a/o1/c/b;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lb/a/a/o1/c/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lb/a/a/o1/c/b$d;

    invoke-direct {v0, p1, p2}, Lb/a/a/o1/c/b$d;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 10
    iget-object p1, p0, Lb/a/a/o1/c/b;->c:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lb/a/a/o1/c/b$e;

    invoke-direct {p2, p0, v0}, Lb/a/a/o1/c/b$e;-><init>(Lb/a/a/o1/c/b;Lb/a/a/o1/c/b$d;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method public a(Lb/a/a/o1/c/b$d;)Z
    .locals 2

    .line 24
    iget-object v0, p0, Lb/a/a/o1/c/b;->a:Ljava/util/Map;

    iget-object v1, p1, Lb/a/a/o1/c/b$d;->b:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 25
    iget-object p1, p1, Lb/a/a/o1/c/b$d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
