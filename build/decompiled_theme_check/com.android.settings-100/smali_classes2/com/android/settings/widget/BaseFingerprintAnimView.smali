.class public abstract Lcom/android/settings/widget/BaseFingerprintAnimView;
.super Landroid/view/View;
.source "BaseFingerprintAnimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/BaseFingerprintAnimView$Callback;,
        Lcom/android/settings/widget/BaseFingerprintAnimView$Status;
    }
.end annotation


# static fields
.field public static final ID_INIT_BACKGROUND:I


# instance fields
.field protected final ANIM_DELAY_TIME:J

.field protected IMAGE_SIZE:I

.field protected final INVALIDATE_INTERVAL_TIME:I

.field protected final MAX_BUBBLE_ALPHA:F

.field protected final MAX_BUBBLE_RADIUS_RATE:F

.field protected final MIN_RADIUS_RATE:F

.field protected final MSG_INVALIDATE_SUCCESS_VIEW:I

.field protected final OVERLAY_DELAY_TIME:J

.field protected PADDING_TOP:I

.field protected PROGRESS_RESOURCE_COUNT:I

.field protected final STANDARD_BUBBLE_ANIM_TIME:J

.field protected final STANDARD_OVERLAY_ANIM_TIME:J

.field protected final TAG:Ljava/lang/String;

.field protected animingBubbleRadius:[I

.field protected animingOverlayRadius:[I

.field private circlePaint:Landroid/graphics/Paint;

.field protected mCallback:Lcom/android/settings/widget/BaseFingerprintAnimView$Callback;

.field protected mCurrentStatus:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

.field protected mCurrentStep:I

.field protected mHandler:Landroid/os/Handler;

.field protected final mImageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastEndAnimIndex:I

.field protected mLastInvalidViewTime:J

.field protected mMaxStep:I

.field private mPaint:Landroid/graphics/Paint;

.field protected mRunningAnimCount:I

.field protected overlayAlphaValue:[I

.field protected overlayRadius:[I

.field protected progressResIds:[I

.field protected rateArr:[F

.field protected xCoordinates:[I

.field private xfermode:Landroid/graphics/Xfermode;

.field protected yCoordinates:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/BaseFingerprintAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/BaseFingerprintAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "BaseFingerprintAnimView"

    .line 34
    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->TAG:Ljava/lang/String;

    const-wide/16 p1, 0x258

    .line 39
    iput-wide p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->STANDARD_OVERLAY_ANIM_TIME:J

    const-wide/16 p1, 0x2bc

    .line 40
    iput-wide p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->STANDARD_BUBBLE_ANIM_TIME:J

    const-wide/16 p1, 0x64

    .line 41
    iput-wide p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->OVERLAY_DELAY_TIME:J

    const-wide/16 p1, 0x12c

    .line 42
    iput-wide p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->ANIM_DELAY_TIME:J

    const p1, 0x3e4ccccd    # 0.2f

    .line 43
    iput p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->MIN_RADIUS_RATE:F

    const p1, 0x3f4ccccd    # 0.8f

    .line 44
    iput p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->MAX_BUBBLE_RADIUS_RATE:F

    const p1, 0x3e99999a    # 0.3f

    .line 45
    iput p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->MAX_BUBBLE_ALPHA:F

    const/16 p1, 0x14

    .line 46
    iput p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->INVALIDATE_INTERVAL_TIME:I

    .line 57
    iget p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->PROGRESS_RESOURCE_COUNT:I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->animingOverlayRadius:[I

    .line 58
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->animingBubbleRadius:[I

    .line 59
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->overlayAlphaValue:[I

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mRunningAnimCount:I

    .line 69
    sget-object p1, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;->INIT:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mCurrentStatus:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    const/16 p1, 0xb

    .line 75
    iput p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->MSG_INVALIDATE_SUCCESS_VIEW:I

    .line 76
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mImageMap:Ljava/util/HashMap;

    .line 78
    new-instance p1, Lcom/android/settings/widget/BaseFingerprintAnimView$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/BaseFingerprintAnimView$1;-><init>(Lcom/android/settings/widget/BaseFingerprintAnimView;)V

    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mHandler:Landroid/os/Handler;

    .line 429
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->circlePaint:Landroid/graphics/Paint;

    .line 430
    iget-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->circlePaint:Landroid/graphics/Paint;

    const/high16 p3, -0x10000

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->xfermode:Landroid/graphics/Xfermode;

    .line 433
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mPaint:Landroid/graphics/Paint;

    .line 434
    iget-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->initDimens()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->initProgressRes()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->preloadImages()V

    return-void
.end method


# virtual methods
.method protected calculateBubbleAnimTime(I)J
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->rateArr:[F

    aget p0, p0, p1

    const/high16 p1, 0x442f0000    # 700.0f

    mul-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method protected calculateOverlayAnimTime(I)J
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->rateArr:[F

    aget p0, p0, p1

    const/high16 p1, 0x44160000    # 600.0f

    mul-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method protected decodeBitmapResource(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 439
    iget p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->IMAGE_SIZE:I

    const/4 v0, 0x0

    invoke-static {p1, p0, p0, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected getBackgroundBitmap(I)Landroid/graphics/Bitmap;
    .locals 6

    .line 319
    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mImageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getBackgroundImageResource(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getImageRes(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 332
    :cond_1
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getBackgroundImageResource(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    move v1, v2

    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->progressResIds:[I

    aget v1, v5, v1

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    move v1, v3

    goto :goto_0

    .line 337
    :cond_2
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->IMAGE_SIZE:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    iget p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->IMAGE_SIZE:I

    invoke-virtual {p1, v2, v2, p0, p0}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 340
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method protected abstract getBackgroundImageResource(I)I
.end method

.method protected getBubbleAlphaRate(II)F
    .locals 3

    int-to-float p0, p2

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, p0

    div-float/2addr v2, v1

    int-to-float v1, p1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const p1, 0x3e4ccccd    # 0.2f

    mul-float/2addr p0, p1

    sub-float/2addr v1, p0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    int-to-float p0, p2

    div-float v1, p0, v2

    :goto_0
    return v1
.end method

.method protected getBubbleAnimator(IJ)Landroid/animation/Animator;
    .locals 6

    .line 247
    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->overlayRadius:[I

    add-int/lit8 v1, p1, -0x1

    aget v2, v0, v1

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 248
    aget v0, v0, v1

    int-to-float v0, v0

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 249
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/BaseFingerprintAnimView;->calculateBubbleAnimTime(I)J

    move-result-wide v3

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v5, 0x0

    aput v2, v1, v5

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 250
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/android/settings/widget/BaseFingerprintAnimView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/widget/BaseFingerprintAnimView$4;-><init>(Lcom/android/settings/widget/BaseFingerprintAnimView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 263
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 264
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-object v0
.end method

.method protected abstract getBubbleCenterRadiusRes()I
.end method

.method protected abstract getBubbleCenterXRes()I
.end method

.method protected abstract getBubbleCenterYRes()I
.end method

.method protected getFinishedAnimProgressIndex()I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    move v4, v1

    move v1, v0

    move v0, v4

    .line 305
    iget v2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->PROGRESS_RESOURCE_COUNT:I

    if-ge v0, v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->animingOverlayRadius:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->overlayRadius:[I

    aget v3, v3, v0

    if-lt v2, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method protected getGradient(II)Landroid/graphics/Bitmap;
    .locals 6

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 379
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 380
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getBubbleAlphaRate(II)F

    move-result p0

    const/high16 p2, 0x42990000    # 76.5f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    .line 384
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 385
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 386
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 387
    invoke-virtual {v3, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    int-to-float p0, p1

    .line 388
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    const/high16 p0, 0x3f000000    # 0.5f

    .line 389
    invoke-virtual {v3, p0, p0}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    const/4 p0, 0x0

    .line 390
    invoke-virtual {v3, p0, p0, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 391
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2

    :array_0
    .array-data 4
        -0x9e4b01    # -3.0001608E38f
        -0x9e4b01    # -3.0001608E38f
        -0x9e4b01    # -3.0001608E38f
        -0x9e4b01    # -3.0001608E38f
        -0x9e4b01    # -3.0001608E38f
        -0x9e4b01    # -3.0001608E38f
        -0x9e4b01    # -3.0001608E38f
        -0x9e4b01    # -3.0001608E38f
        -0x9e4b01    # -3.0001608E38f
        0x61b4ff
    .end array-data
.end method

.method protected getImageRes(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mImageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/BaseFingerprintAnimView;->decodeBitmapResource(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected abstract getImageSize()I
.end method

.method protected getOverlayAlphaAnimator(IJ)Landroid/animation/Animator;
    .locals 4

    add-int/lit8 v0, p1, -0x1

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->calculateOverlayAnimTime(I)J

    move-result-wide v0

    const-wide/16 v2, 0x6

    div-long/2addr v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 290
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 291
    new-instance v3, Lcom/android/settings/widget/BaseFingerprintAnimView$6;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/widget/BaseFingerprintAnimView$6;-><init>(Lcom/android/settings/widget/BaseFingerprintAnimView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 297
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 298
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-object v2

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method protected getOverlayAnimator(IJ)Landroid/animation/Animator;
    .locals 6

    .line 272
    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->overlayRadius:[I

    add-int/lit8 v1, p1, -0x1

    aget v2, v0, v1

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 273
    aget v0, v0, v1

    .line 274
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/BaseFingerprintAnimView;->calculateOverlayAnimTime(I)J

    move-result-wide v3

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v5, 0x0

    aput v2, v1, v5

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 275
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/android/settings/widget/BaseFingerprintAnimView$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/widget/BaseFingerprintAnimView$5;-><init>(Lcom/android/settings/widget/BaseFingerprintAnimView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 282
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 283
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-object v0
.end method

.method protected abstract getScaleFactor()F
.end method

.method protected getXfermodeBitmap(I)Landroid/graphics/Bitmap;
    .locals 6

    .line 408
    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->progressResIds:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getImageRes(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 410
    iget v1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->IMAGE_SIZE:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 411
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 412
    iget-object v3, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->circlePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->overlayAlphaValue:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 413
    iget-object v3, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->xCoordinates:[I

    aget v3, v3, p1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->yCoordinates:[I

    aget v4, v4, p1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->animingOverlayRadius:[I

    aget p1, v5, p1

    int-to-float p1, p1

    iget-object v5, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, p1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 417
    iget-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->xfermode:Landroid/graphics/Xfermode;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 418
    iget-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 420
    iget-object p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v1
.end method

.method protected initDimens()V
    .locals 5

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getImageSize()I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->IMAGE_SIZE:I

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getBubbleCenterXRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->xCoordinates:[I

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getScaleFactor()F

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 115
    :goto_0
    iget-object v3, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->xCoordinates:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 116
    aget v4, v3, v2

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getBubbleCenterYRes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->yCoordinates:[I

    move v2, v1

    .line 119
    :goto_1
    iget-object v3, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->yCoordinates:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 120
    aget v4, v3, v2

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getBubbleCenterRadiusRes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->overlayRadius:[I

    .line 123
    :goto_2
    iget-object v2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->overlayRadius:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 124
    aget v3, v2, v1

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected abstract initProgressRes()V
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 346
    iget v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->PADDING_TOP:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mCurrentStatus:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    sget-object v2, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;->INIT:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 348
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getBackgroundBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 349
    iget-object p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    .line 353
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mCurrentStep:I

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getBackgroundBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 355
    iget-object v4, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v0, -0x1

    .line 358
    :goto_0
    iget v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->PROGRESS_RESOURCE_COUNT:I

    if-ge v3, v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->animingOverlayRadius:[I

    aget v0, v0, v3

    if-lez v0, :cond_2

    .line 360
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getXfermodeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    iget-object v2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->overlayRadius:[I

    aget v0, v0, v3

    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 364
    iget-object v2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->animingBubbleRadius:[I

    aget v2, v2, v3

    if-ge v2, v0, :cond_2

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 366
    iget-object v2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->animingBubbleRadius:[I

    aget v2, v2, v3

    .line 367
    iget-object v4, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->xCoordinates:[I

    aget v4, v4, v3

    sub-int/2addr v4, v2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->yCoordinates:[I

    aget v5, v5, v3

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 368
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getGradient(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 369
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public playAnimation(II)V
    .locals 8

    if-eqz p1, :cond_8

    .line 170
    iget v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mCurrentStep:I

    if-ne v0, p1, :cond_0

    goto/16 :goto_3

    .line 173
    :cond_0
    iput p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mCurrentStep:I

    .line 174
    iput p2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mMaxStep:I

    .line 175
    sget-object v0, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;->ENROLLING:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    iput-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mCurrentStatus:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentProgress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFingerprintAnimView"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->PROGRESS_RESOURCE_COUNT:I

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v3, p2

    div-float/2addr v2, v3

    const-wide/16 v3, 0x64

    if-gt p2, v0, :cond_4

    add-int/lit8 v0, p1, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v5, v0

    .line 183
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    const/4 v5, 0x1

    if-gtz v0, :cond_1

    move v0, v5

    .line 187
    :cond_1
    iget v6, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mLastEndAnimIndex:I

    if-lez v6, :cond_2

    add-int/2addr v6, v5

    if-eq v0, v6, :cond_2

    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculated startAnimIndex \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' is NOT following the last end anim index,set it to: mLastEndAnimIndex + 1 = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mLastEndAnimIndex:I

    add-int/2addr v0, v5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mLastEndAnimIndex:I

    add-int/2addr v0, v5

    :cond_2
    if-ne p2, p1, :cond_3

    .line 193
    iget p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->PROGRESS_RESOURCE_COUNT:I

    goto :goto_0

    :cond_3
    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-double p1, p1

    .line 195
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    goto :goto_0

    :cond_4
    if-ne p1, p2, :cond_5

    .line 201
    iget-object p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_5
    move v0, p1

    .line 206
    :goto_0
    iput p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mLastEndAnimIndex:I

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnimIndex="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", endAnimIndex="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_1
    if-gt v1, p1, :cond_7

    if-ne v1, v0, :cond_6

    const-wide/16 v5, 0x0

    goto :goto_2

    :cond_6
    const-wide/16 v5, 0x12c

    .line 212
    :goto_2
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getBubbleAnimator(IJ)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long/2addr v5, v3

    .line 213
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getOverlayAlphaAnimator(IJ)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getOverlayAnimator(IJ)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_7
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 217
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 218
    new-instance p2, Lcom/android/settings/widget/BaseFingerprintAnimView$3;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/BaseFingerprintAnimView$3;-><init>(Lcom/android/settings/widget/BaseFingerprintAnimView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_8
    :goto_3
    return-void
.end method

.method protected preloadImages()V
    .locals 1

    .line 129
    new-instance v0, Lcom/android/settings/widget/BaseFingerprintAnimView$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/BaseFingerprintAnimView$2;-><init>(Lcom/android/settings/widget/BaseFingerprintAnimView;)V

    invoke-static {v0}, Lcom/android/settings/ExecutorManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public recycleBitmaps()V
    .locals 2

    .line 451
    iget-object p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mImageMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCallback(Lcom/android/settings/widget/BaseFingerprintAnimView$Callback;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mCallback:Lcom/android/settings/widget/BaseFingerprintAnimView$Callback;

    return-void
.end method

.method public setStatus(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 163
    sget-object p1, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;->INIT:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mCurrentStatus:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    goto :goto_0

    .line 153
    :cond_0
    sget-object p1, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;->INIT:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mCurrentStatus:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    .line 155
    iget p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->PROGRESS_RESOURCE_COUNT:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->animingOverlayRadius:[I

    .line 156
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->animingBubbleRadius:[I

    .line 157
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->overlayAlphaValue:[I

    const/4 p1, 0x0

    .line 158
    iput p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mCurrentStep:I

    .line 159
    iput p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mLastEndAnimIndex:I

    .line 166
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->invalidate()V

    return-void
.end method
