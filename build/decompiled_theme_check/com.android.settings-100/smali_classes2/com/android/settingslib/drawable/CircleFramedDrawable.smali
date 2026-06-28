.class public Lcom/android/settingslib/drawable/CircleFramedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleFramedDrawable.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 7

    .line 59
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    iput p2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    .line 62
    iget p2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 69
    new-instance v3, Landroid/graphics/Rect;

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v3, v0, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v2, v1

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 72
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/high16 v2, 0x43b40000    # 360.0f

    .line 73
    invoke-virtual {v1, v0, v4, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 75
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 85
    iget-object v1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 86
    iget-object v1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 89
    iget-object p1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 91
    iput p1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mScale:F

    .line 93
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    invoke-direct {p1, v5, v5, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 94
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v0, p2

    int-to-float p2, p2

    invoke-direct {p1, v4, v4, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 52
    sget v0, Lcom/android/settingslib/R$dimen;->circle_avatar_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 54
    new-instance v0, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    float-to-int p0, p0

    invoke-direct {v0, p1, p0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 99
    iget v0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mScale:F

    iget v1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    int-to-float v2, v1

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    .line 102
    iget-object v0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    sub-float/2addr v3, v2

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 134
    iget p0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 129
    iget p0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getScale()F
    .locals 0

    .line 111
    iget p0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mScale:F

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mScale:F

    return-void
.end method
