.class public Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;,
        Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x534

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 7.5f

.field private static final CENTER_RADIUS_LARGE:F = 11.0f

.field private static final COLORS:[I

.field private static final COLOR_CHANGE_OFFSET:F = 0.75f

.field public static final DEFAULT:I = 0x1

.field private static final GROUP_FULL_ROTATION:F = 216.0f

.field public static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final MIN_PROGRESS_ARC:F = 0.01f

.field private static final RING_ROTATION:F = 0.20999998f

.field private static final SHRINK_OFFSET:F = 0.5f

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field mFinishing:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

.field private mRotation:F

.field mRotationCount:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 68
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 97
    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 139
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 141
    new-instance p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-direct {p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;-><init>()V

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 142
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    sget-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->COLORS:[I

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColors([I)V

    const/high16 p1, 0x40200000    # 2.5f

    .line 144
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 145
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setupAnimators()V

    return-void
.end method

.method private applyFinishTranslation(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 4

    .line 516
    invoke-virtual {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->updateRingColor(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    .line 517
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result p0

    const v0, 0x3f4ccccd    # 0.8f

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float p0, v0

    .line 519
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v0

    .line 520
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 522
    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 523
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 524
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    .line 525
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    .line 526
    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 5

    shr-int/lit8 p0, p2, 0x18

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v2, p3, 0x18

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p3, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v2, p0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0x18

    sub-int/2addr v3, v0

    int-to-float v2, v3

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    sub-int/2addr v4, v1

    int-to-float v0, v4

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p0, v0

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int/2addr p0, p2

    return p0
.end method

.method private getRotation()F
    .locals 0

    .line 428
    iget p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    return p0
.end method

.method private setRotation(F)V
    .locals 0

    .line 424
    iput p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    return-void
.end method

.method private setSizeParameters(FFFF)V
    .locals 1

    .line 151
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 152
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 153
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p0

    .line 155
    invoke-virtual {v0, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    mul-float/2addr p1, p0

    .line 156
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setCenterRadius(F)V

    const/4 p1, 0x0

    .line 157
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    mul-float/2addr p3, p0

    mul-float/2addr p4, p0

    .line 158
    invoke-virtual {v0, p3, p4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .line 566
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 567
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 568
    new-instance v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;

    invoke-direct {v2, p0, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;-><init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, -0x1

    .line 577
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 578
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 579
    sget-object v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 580
    new-instance v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;-><init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 615
    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method applyTransformation(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;Z)V
    .locals 7

    .line 534
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 535
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->applyFinishTranslation(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    if-eqz p3, :cond_3

    .line 539
    :cond_1
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result p3

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v1

    const v3, 0x3c23d70a    # 0.01f

    const v4, 0x3f4a3d71    # 0.79f

    if-gez v2, :cond_2

    div-float v0, p1, v1

    .line 544
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    .line 545
    sget-object v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 546
    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    add-float/2addr v0, v1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_2
    sub-float v2, p1, v1

    div-float/2addr v2, v1

    .line 549
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    add-float/2addr v1, v4

    .line 550
    sget-object v5, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 551
    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    sub-float v0, v1, v0

    :goto_0
    const v2, 0x3e570a3c    # 0.20999998f

    mul-float/2addr v2, p1

    add-float/2addr p3, v2

    const/high16 v2, 0x43580000    # 216.0f

    .line 556
    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    add-float/2addr p1, v3

    mul-float/2addr p1, v2

    .line 558
    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 559
    invoke-virtual {p2, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 560
    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 561
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setRotation(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 399
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 401
    iget v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 402
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0, p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 403
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    .line 414
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getArrowEnabled()Z
    .locals 0

    .line 271
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getShowArrow()Z

    move-result p0

    return p0
.end method

.method public getArrowHeight()F
    .locals 0

    .line 251
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getArrowHeight()F

    move-result p0

    return p0
.end method

.method public getArrowScale()F
    .locals 0

    .line 290
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getArrowScale()F

    move-result p0

    return p0
.end method

.method public getArrowWidth()F
    .locals 0

    .line 242
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getArrowWidth()F

    move-result p0

    return p0
.end method

.method public getBackgroundColor()I
    .locals 0

    .line 360
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getBackgroundColor()I

    move-result p0

    return p0
.end method

.method public getCenterRadius()F
    .locals 0

    .line 202
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getCenterRadius()F

    move-result p0

    return p0
.end method

.method public getColorSchemeColors()[I
    .locals 0

    .line 382
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getColors()[I

    move-result-object p0

    return-object p0
.end method

.method public getEndTrim()F
    .locals 0

    .line 318
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getEndTrim()F

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getProgressRotation()F
    .locals 0

    .line 341
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getRotation()F

    move-result p0

    return p0
.end method

.method public getStartTrim()F
    .locals 0

    .line 309
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartTrim()F

    move-result p0

    return p0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 0

    .line 233
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object p0

    return-object p0
.end method

.method public getStrokeWidth()F
    .locals 0

    .line 183
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStrokeWidth()F

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 438
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 408
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setAlpha(I)V

    .line 409
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 1

    .line 261
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 262
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowEnabled(Z)V
    .locals 1

    .line 280
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 281
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowScale(F)V
    .locals 1

    .line 299
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setArrowScale(F)V

    .line 300
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 371
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 372
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCenterRadius(F)V
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setCenterRadius(F)V

    .line 213
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 419
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 420
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .line 392
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColors([I)V

    .line 393
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 394
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1

    .line 350
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 351
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    .line 330
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 331
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 332
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    .line 222
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 223
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 192
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 193
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStyle(I)V
    .locals 3

    if-nez p1, :cond_0

    const/high16 p1, 0x41300000    # 11.0f

    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x40c00000    # 6.0f

    .line 169
    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40f00000    # 7.5f

    const/high16 v0, 0x40200000    # 2.5f

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x40a00000    # 5.0f

    .line 172
    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    .line 174
    :goto_0
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 3

    .line 446
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 447
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->storeOriginals()V

    .line 449
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    .line 451
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 452
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 455
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 456
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 457
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 466
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 467
    invoke-direct {p0, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setRotation(F)V

    .line 468
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 469
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 470
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 471
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method updateRingColor(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    .line 501
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result v0

    .line 502
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getNextColor()I

    move-result v1

    .line 500
    invoke-direct {p0, p1, v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->evaluateColorChange(FII)I

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColor(I)V

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColor(I)V

    :goto_0
    return-void
.end method
