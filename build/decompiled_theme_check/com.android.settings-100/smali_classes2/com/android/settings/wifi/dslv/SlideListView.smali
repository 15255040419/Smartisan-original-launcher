.class public Lcom/android/settings/wifi/dslv/SlideListView;
.super Landroid/widget/ListView;
.source "SlideListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;,
        Lcom/android/settings/wifi/dslv/SlideListView$TouchMonitorListener;,
        Lcom/android/settings/wifi/dslv/SlideListView$Listener;
    }
.end annotation


# instance fields
.field private final DEFAULT_PRE_POSITION:I

.field private final MISS:I

.field private final SELECT:I

.field private final SPECIAL:I

.field private final SPEED_CARDINAL:F

.field private mCheckboxId:I

.field private mCurrPoint:Landroid/graphics/Point;

.field private mDownPoint:Landroid/graphics/Point;

.field private mDownScrollStartY:F

.field private mEndX:I

.field private mIsChecked:Z

.field private mListener:Lcom/android/settings/wifi/dslv/SlideListView$Listener;

.field private mPrePosition:I

.field private mScroller:Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;

.field private mSelectDownScrollStartFrac:F

.field private mSelectUpScrollStartFrac:F

.field private mSlideEnable:Z

.field private mStartX:I

.field private mState:I

.field private mTempLoc:[I

.field private mTouchMonitorListener:Lcom/android/settings/wifi/dslv/SlideListView$TouchMonitorListener;

.field private mUpScrollStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mIsChecked:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 28
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mTempLoc:[I

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->MISS:I

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->SELECT:I

    const/4 v0, -0x2

    .line 32
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->SPECIAL:I

    .line 33
    iput p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mState:I

    .line 35
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->DEFAULT_PRE_POSITION:I

    .line 40
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mPrePosition:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 289
    iput p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mSelectUpScrollStartFrac:F

    .line 296
    iput p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mSelectDownScrollStartFrac:F

    const p1, 0x3c23d70a    # 0.01f

    .line 301
    iput p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->SPEED_CARDINAL:F

    .line 304
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mDownPoint:Landroid/graphics/Point;

    .line 305
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mCurrPoint:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mIsChecked:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 28
    iput-object v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mTempLoc:[I

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->MISS:I

    const/4 v1, 0x1

    .line 31
    iput v1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->SELECT:I

    const/4 v1, -0x2

    .line 32
    iput v1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->SPECIAL:I

    .line 33
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mState:I

    .line 35
    iput v1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->DEFAULT_PRE_POSITION:I

    .line 40
    iput v1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mPrePosition:I

    const v0, 0x3e4ccccd    # 0.2f

    .line 289
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mSelectUpScrollStartFrac:F

    .line 296
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mSelectDownScrollStartFrac:F

    const v0, 0x3c23d70a    # 0.01f

    .line 301
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->SPEED_CARDINAL:F

    .line 304
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mDownPoint:Landroid/graphics/Point;

    .line 305
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mCurrPoint:Landroid/graphics/Point;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dslv/SlideListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 24
    iput-boolean p3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mIsChecked:Z

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 28
    iput-object p3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mTempLoc:[I

    const/4 p3, -0x1

    .line 30
    iput p3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->MISS:I

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->SELECT:I

    const/4 v0, -0x2

    .line 32
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->SPECIAL:I

    .line 33
    iput p3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mState:I

    .line 35
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->DEFAULT_PRE_POSITION:I

    .line 40
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mPrePosition:I

    const p3, 0x3e4ccccd    # 0.2f

    .line 289
    iput p3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mSelectUpScrollStartFrac:F

    .line 296
    iput p3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mSelectDownScrollStartFrac:F

    const p3, 0x3c23d70a    # 0.01f

    .line 301
    iput p3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->SPEED_CARDINAL:F

    .line 304
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mDownPoint:Landroid/graphics/Point;

    .line 305
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mCurrPoint:Landroid/graphics/Point;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dslv/SlideListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/dslv/SlideListView;)Landroid/graphics/Point;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mCurrPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/dslv/SlideListView;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mUpScrollStartY:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/dslv/SlideListView;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mDownScrollStartY:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/dslv/SlideListView;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView;->onMoving(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/dslv/SlideListView;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mCheckboxId:I

    return p0
.end method

.method private continueSelect(III)V
    .locals 1

    .line 333
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mDownPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int p1, p2, p1

    int-to-float p2, p2

    .line 334
    iget v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mDownScrollStartY:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    if-lez p1, :cond_0

    .line 335
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mScroller:Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;->startScroll(I)V

    return-void

    .line 337
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mUpScrollStartY:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    if-gez p1, :cond_1

    .line 338
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mScroller:Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;->startScroll(I)V

    return-void

    .line 340
    :cond_1
    iget p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mUpScrollStartY:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    iget p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mDownScrollStartY:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 341
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mScroller:Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;->stopScroll()V

    .line 344
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/dslv/SlideListView;->onMoving(I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/android/settings/R$styleable;->SlideListView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mCheckboxId:I

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    :cond_1
    iget p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mCheckboxId:I

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mSlideEnable:Z

    .line 76
    new-instance p1, Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;-><init>(Lcom/android/settings/wifi/dslv/SlideListView;Lcom/android/settings/wifi/dslv/SlideListView$1;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mScroller:Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;

    return-void
.end method

.method private initScrollData()V
    .locals 4

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/SlideListView;->getPaddingTop()I

    move-result v0

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/SlideListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/SlideListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    .line 322
    iget v2, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mSelectUpScrollStartFrac:F

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mUpScrollStartY:F

    .line 323
    iget v2, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mSelectDownScrollStartFrac:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mDownScrollStartY:F

    return-void
.end method

.method private onDown(I)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mListener:Lcom/android/settings/wifi/dslv/SlideListView$Listener;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    iget v1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mPrePosition:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 190
    iput v1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mState:I

    .line 191
    invoke-interface {v0, p1}, Lcom/android/settings/wifi/dslv/SlideListView$Listener;->onDown(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mIsChecked:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private onMoving(I)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mListener:Lcom/android/settings/wifi/dslv/SlideListView$Listener;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    iget v1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mPrePosition:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iput p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mPrePosition:I

    .line 199
    iget-boolean p0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mIsChecked:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p1, p0}, Lcom/android/settings/wifi/dslv/SlideListView$Listener;->setChecked(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private recovery()V
    .locals 2

    .line 203
    iget v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mScroller:Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mScroller:Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dslv/SlideListView$SelectScroller;->stopScroll()V

    :cond_1
    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mIsChecked:Z

    .line 211
    iput v1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mState:I

    const/4 v1, -0x2

    .line 212
    iput v1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mPrePosition:I

    .line 213
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mStartX:I

    .line 214
    iput v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mEndX:I

    return-void
.end method

.method private startCheckPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 182
    iget v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mCheckboxId:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/dslv/SlideListView;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result p0

    return p0
.end method

.method private viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 7

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 237
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/dslv/SlideListView;->pointToPosition(II)I

    move-result v0

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/SlideListView;->getHeaderViewsCount()I

    move-result v1

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/SlideListView;->getFooterViewsCount()I

    move-result v2

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/SlideListView;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    if-lt v0, v1, :cond_3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_3

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/SlideListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/dslv/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_0
    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 254
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 257
    iget v3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mState:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mStartX:I

    if-le v1, v3, :cond_1

    iget v3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mEndX:I

    if-ge v1, v3, :cond_1

    return v0

    .line 261
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mTempLoc:[I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 263
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mTempLoc:[I

    const/4 v5, 0x0

    aget v6, v3, v5

    if-le v1, v6, :cond_3

    aget v6, v3, v2

    if-le p1, v6, :cond_3

    aget v3, v3, v5

    .line 264
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    if-ge v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mTempLoc:[I

    aget v1, v1, v2

    .line 265
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_3

    .line 267
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mTempLoc:[I

    aget v1, p1, v5

    iput v1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mStartX:I

    .line 268
    aget p1, p1, v5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mEndX:I

    return v0

    :cond_2
    if-nez p2, :cond_3

    .line 272
    iget p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mState:I

    if-ne p1, v2, :cond_3

    iget p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mStartX:I

    if-le v1, p1, :cond_3

    iget p0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mEndX:I

    if-ge v1, p0, :cond_3

    const/4 p0, -0x2

    return p0

    :cond_3
    return v4
.end method


# virtual methods
.method public isSelecting()Z
    .locals 1

    .line 218
    iget p0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSlideEnable()Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mSlideEnable:Z

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 110
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mSlideEnable:Z

    if-nez v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 114
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView;->startCheckPosition(Landroid/view/MotionEvent;)I

    move-result v0

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    if-nez v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 124
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 329
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/SlideListView;->initScrollData()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 129
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mSlideEnable:Z

    if-nez v0, :cond_0

    .line 130
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView;->startCheckPosition(Landroid/view/MotionEvent;)I

    move-result v0

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 136
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mCurrPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v3, :cond_8

    if-eq v3, v6, :cond_7

    const/4 v7, 0x2

    if-eq v3, v7, :cond_1

    const/4 v0, 0x3

    if-eq v3, v0, :cond_7

    goto :goto_2

    :cond_1
    if-eq v0, v4, :cond_3

    if-ne v0, v5, :cond_2

    .line 152
    iget v3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mState:I

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v6

    .line 153
    :goto_1
    iget v5, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mState:I

    if-eq v5, v6, :cond_4

    if-nez v3, :cond_4

    .line 156
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dslv/SlideListView;->onDown(I)V

    return v6

    .line 160
    :cond_4
    iget v5, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mState:I

    if-ne v5, v6, :cond_5

    if-ne v0, v4, :cond_5

    return v6

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_2

    .line 166
    :cond_6
    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/wifi/dslv/SlideListView;->continueSelect(III)V

    return v6

    .line 171
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/SlideListView;->recovery()V

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mTouchMonitorListener:Lcom/android/settings/wifi/dslv/SlideListView$TouchMonitorListener;

    if-eqz v0, :cond_a

    .line 173
    invoke-interface {v0}, Lcom/android/settings/wifi/dslv/SlideListView$TouchMonitorListener;->onTouchActionUp()V

    goto :goto_2

    .line 141
    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    if-eq v0, v4, :cond_a

    if-ne v0, v5, :cond_9

    .line 144
    iget v1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mState:I

    if-ne v1, v5, :cond_9

    goto :goto_2

    .line 148
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dslv/SlideListView;->onDown(I)V

    return v6

    .line 178
    :cond_a
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setSlideEnable(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/SlideListView;->recovery()V

    .line 101
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mSlideEnable:Z

    return-void
.end method

.method public setSlideListener(Lcom/android/settings/wifi/dslv/SlideListView$Listener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mListener:Lcom/android/settings/wifi/dslv/SlideListView$Listener;

    return-void
.end method

.method public setTouchMonitorListener(Lcom/android/settings/wifi/dslv/SlideListView$TouchMonitorListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/SlideListView;->mTouchMonitorListener:Lcom/android/settings/wifi/dslv/SlideListView$TouchMonitorListener;

    return-void
.end method
