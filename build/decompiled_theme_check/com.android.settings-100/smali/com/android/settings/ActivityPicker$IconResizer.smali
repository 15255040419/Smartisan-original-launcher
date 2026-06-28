.class Lcom/android/settings/ActivityPicker$IconResizer;
.super Ljava/lang/Object;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconResizer"
.end annotation


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mIconHeight:I

.field private final mIconWidth:I

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private final mOldBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/util/DisplayMetrics;)V
    .locals 4

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 345
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 348
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 351
    iput-object p3, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    .line 352
    iput p1, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    .line 353
    iput p2, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 369
    iget v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    .line 370
    iget v1, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    if-nez p1, :cond_0

    .line 373
    new-instance p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ActivityPicker$EmptyDrawable;-><init>(II)V

    return-object p0

    .line 377
    :cond_0
    :try_start_0
    instance-of v2, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v2, :cond_1

    .line 378
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/PaintDrawable;

    .line 379
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 380
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_0

    .line 381
    :cond_1
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 383
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 384
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 385
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_2

    .line 386
    iget-object v3, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 389
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 390
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v2, :cond_8

    if-lez v3, :cond_8

    const/4 v4, 0x0

    if-lt v0, v2, :cond_4

    if-ge v1, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ge v2, v0, :cond_8

    if-ge v3, v1, :cond_8

    .line 423
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 424
    iget v6, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    iget v7, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    invoke-static {v6, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 425
    iget-object v6, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 426
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 427
    iget-object v7, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sub-int v7, v0, v2

    .line 428
    div-int/lit8 v7, v7, 0x2

    sub-int v8, v1, v3

    .line 429
    div-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v7

    add-int/2addr v3, v8

    .line 430
    invoke-virtual {p1, v7, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 431
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 432
    iget-object v2, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 434
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 435
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 436
    invoke-virtual {v6, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_4
    :goto_1
    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    if-le v2, v3, :cond_5

    int-to-float v1, v0

    div-float/2addr v1, v5

    float-to-int v1, v1

    goto :goto_2

    :cond_5
    if-le v3, v2, :cond_6

    int-to-float v0, v1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 402
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    :cond_7
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 404
    :goto_3
    iget v3, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    iget v5, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    invoke-static {v3, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 405
    iget-object v3, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 406
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 412
    iget-object v5, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 413
    iget v5, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    .line 414
    iget v6, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    add-int v7, v5, v0

    add-int v8, v6, v1

    .line 415
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 416
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    iget-object v5, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 419
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 420
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 421
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 441
    :catchall_0
    new-instance p1, Lcom/android/settings/ActivityPicker$EmptyDrawable;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/ActivityPicker$EmptyDrawable;-><init>(II)V

    :cond_8
    :goto_4
    return-object p1
.end method
