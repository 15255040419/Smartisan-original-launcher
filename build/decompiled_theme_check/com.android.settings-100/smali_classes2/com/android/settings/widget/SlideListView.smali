.class public Lcom/android/settings/widget/SlideListView;
.super Lcom/android/settings/stickylistheaders/StickyListHeadersListView;
.source "SlideListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SlideListView$OnQuickBarChangedListener;,
        Lcom/android/settings/widget/SlideListView$SelectScroller;,
        Lcom/android/settings/widget/SlideListView$TouchMonitorListener;,
        Lcom/android/settings/widget/SlideListView$Listener;
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

.field private mListener:Lcom/android/settings/widget/SlideListView$Listener;

.field private mOnQuickBarChangedListener:Lcom/android/settings/widget/SlideListView$OnQuickBarChangedListener;

.field private mPrePosition:I

.field private mScroller:Lcom/android/settings/widget/SlideListView$SelectScroller;

.field private mSelectDownScrollStartFrac:F

.field private mSelectUpScrollStartFrac:F

.field private mSlideEnable:Z

.field private mStartX:I

.field private mState:I

.field private mTempLoc:[I

.field private mTouchMonitorListener:Lcom/android/settings/widget/SlideListView$TouchMonitorListener;

.field private mUpScrollStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/android/settings/widget/SlideListView;->mIsChecked:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 30
    iput-object p1, p0, Lcom/android/settings/widget/SlideListView;->mTempLoc:[I

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/android/settings/widget/SlideListView;->MISS:I

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->SELECT:I

    const/4 v0, -0x2

    .line 34
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->SPECIAL:I

    .line 35
    iput p1, p0, Lcom/android/settings/widget/SlideListView;->mState:I

    .line 37
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->DEFAULT_PRE_POSITION:I

    .line 42
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->mPrePosition:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 342
    iput p1, p0, Lcom/android/settings/widget/SlideListView;->mSelectUpScrollStartFrac:F

    .line 349
    iput p1, p0, Lcom/android/settings/widget/SlideListView;->mSelectDownScrollStartFrac:F

    const p1, 0x3c23d70a    # 0.01f

    .line 354
    iput p1, p0, Lcom/android/settings/widget/SlideListView;->SPEED_CARDINAL:F

    .line 357
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SlideListView;->mDownPoint:Landroid/graphics/Point;

    .line 358
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SlideListView;->mCurrPoint:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/settings/widget/SlideListView;->mIsChecked:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 30
    iput-object v0, p0, Lcom/android/settings/widget/SlideListView;->mTempLoc:[I

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->MISS:I

    const/4 v1, 0x1

    .line 33
    iput v1, p0, Lcom/android/settings/widget/SlideListView;->SELECT:I

    const/4 v1, -0x2

    .line 34
    iput v1, p0, Lcom/android/settings/widget/SlideListView;->SPECIAL:I

    .line 35
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->mState:I

    .line 37
    iput v1, p0, Lcom/android/settings/widget/SlideListView;->DEFAULT_PRE_POSITION:I

    .line 42
    iput v1, p0, Lcom/android/settings/widget/SlideListView;->mPrePosition:I

    const v0, 0x3e4ccccd    # 0.2f

    .line 342
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->mSelectUpScrollStartFrac:F

    .line 349
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->mSelectDownScrollStartFrac:F

    const v0, 0x3c23d70a    # 0.01f

    .line 354
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->SPEED_CARDINAL:F

    .line 357
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/SlideListView;->mDownPoint:Landroid/graphics/Point;

    .line 358
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/SlideListView;->mCurrPoint:Landroid/graphics/Point;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SlideListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 26
    iput-boolean p3, p0, Lcom/android/settings/widget/SlideListView;->mIsChecked:Z

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 30
    iput-object p3, p0, Lcom/android/settings/widget/SlideListView;->mTempLoc:[I

    const/4 p3, -0x1

    .line 32
    iput p3, p0, Lcom/android/settings/widget/SlideListView;->MISS:I

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->SELECT:I

    const/4 v0, -0x2

    .line 34
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->SPECIAL:I

    .line 35
    iput p3, p0, Lcom/android/settings/widget/SlideListView;->mState:I

    .line 37
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->DEFAULT_PRE_POSITION:I

    .line 42
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->mPrePosition:I

    const p3, 0x3e4ccccd    # 0.2f

    .line 342
    iput p3, p0, Lcom/android/settings/widget/SlideListView;->mSelectUpScrollStartFrac:F

    .line 349
    iput p3, p0, Lcom/android/settings/widget/SlideListView;->mSelectDownScrollStartFrac:F

    const p3, 0x3c23d70a    # 0.01f

    .line 354
    iput p3, p0, Lcom/android/settings/widget/SlideListView;->SPEED_CARDINAL:F

    .line 357
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/android/settings/widget/SlideListView;->mDownPoint:Landroid/graphics/Point;

    .line 358
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/android/settings/widget/SlideListView;->mCurrPoint:Landroid/graphics/Point;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SlideListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/SlideListView;)Landroid/graphics/Point;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/settings/widget/SlideListView;->mCurrPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/SlideListView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/android/settings/widget/SlideListView;->mUpScrollStartY:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/SlideListView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/android/settings/widget/SlideListView;->mDownScrollStartY:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/SlideListView;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SlideListView;->onMoving(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/widget/SlideListView;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/android/settings/widget/SlideListView;->mCheckboxId:I

    return p0
.end method

.method private continueSelect(III)V
    .locals 1

    .line 386
    iget-object p1, p0, Lcom/android/settings/widget/SlideListView;->mDownPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int p1, p2, p1

    int-to-float p2, p2

    .line 387
    iget v0, p0, Lcom/android/settings/widget/SlideListView;->mDownScrollStartY:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    if-lez p1, :cond_0

    .line 388
    iget-object p0, p0, Lcom/android/settings/widget/SlideListView;->mScroller:Lcom/android/settings/widget/SlideListView$SelectScroller;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SlideListView$SelectScroller;->startScroll(I)V

    return-void

    .line 390
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/SlideListView;->mUpScrollStartY:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    if-gez p1, :cond_1

    .line 391
    iget-object p0, p0, Lcom/android/settings/widget/SlideListView;->mScroller:Lcom/android/settings/widget/SlideListView$SelectScroller;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SlideListView$SelectScroller;->startScroll(I)V

    return-void

    .line 393
    :cond_1
    iget p1, p0, Lcom/android/settings/widget/SlideListView;->mUpScrollStartY:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    iget p1, p0, Lcom/android/settings/widget/SlideListView;->mDownScrollStartY:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 394
    iget-object p1, p0, Lcom/android/settings/widget/SlideListView;->mScroller:Lcom/android/settings/widget/SlideListView$SelectScroller;

    invoke-virtual {p1}, Lcom/android/settings/widget/SlideListView$SelectScroller;->stopScroll()V

    .line 397
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/settings/widget/SlideListView;->onMoving(I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/android/settings/R$styleable;->SlideListView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/SlideListView;->mCheckboxId:I

    const/4 p2, 0x1

    .line 75
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/widget/SlideListView;->mSlideEnable:Z

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    :cond_1
    new-instance p1, Lcom/android/settings/widget/SlideListView$SelectScroller;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/SlideListView$SelectScroller;-><init>(Lcom/android/settings/widget/SlideListView;Lcom/android/settings/widget/SlideListView$1;)V

    iput-object p1, p0, Lcom/android/settings/widget/SlideListView;->mScroller:Lcom/android/settings/widget/SlideListView$SelectScroller;

    return-void
.end method

.method private initScrollData()V
    .locals 4

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getListPaddingTop()I

    move-result v0

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getListHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getListPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    .line 375
    iget v2, p0, Lcom/android/settings/widget/SlideListView;->mSelectUpScrollStartFrac:F

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/android/settings/widget/SlideListView;->mUpScrollStartY:F

    .line 376
    iget v2, p0, Lcom/android/settings/widget/SlideListView;->mSelectDownScrollStartFrac:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/settings/widget/SlideListView;->mDownScrollStartY:F

    return-void
.end method

.method private onDown(I)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView;->mListener:Lcom/android/settings/widget/SlideListView$Listener;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    iget v1, p0, Lcom/android/settings/widget/SlideListView;->mPrePosition:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 216
    iput v1, p0, Lcom/android/settings/widget/SlideListView;->mState:I

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/android/settings/widget/SlideListView$Listener;->isChecked(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/widget/SlideListView;->mIsChecked:Z

    .line 223
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SlideListView;->onMoving(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onMoving(I)V
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView;->mListener:Lcom/android/settings/widget/SlideListView$Listener;

    if-eqz v0, :cond_8

    const/4 v1, -0x1

    if-le p1, v1, :cond_8

    iget v1, p0, Lcom/android/settings/widget/SlideListView;->mPrePosition:I

    if-ne v1, p1, :cond_0

    goto/16 :goto_5

    .line 230
    :cond_0
    iget v2, p0, Lcom/android/settings/widget/SlideListView;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-boolean v2, p0, Lcom/android/settings/widget/SlideListView;->mIsChecked:Z

    xor-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/SlideListView$Listener;->setChecked(IZ)V

    goto :goto_4

    :cond_1
    if-le v1, p1, :cond_4

    sub-int/2addr v1, v3

    :goto_0
    if-lt v1, p1, :cond_7

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getLastVisiblePosition()I

    move-result v0

    if-gt v1, v0, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getHeaderViewsCount()I

    move-result v0

    if-lt v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_2

    goto :goto_1

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView;->mListener:Lcom/android/settings/widget/SlideListView$Listener;

    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, v1, v2

    iget-boolean v4, p0, Lcom/android/settings/widget/SlideListView;->mIsChecked:Z

    xor-int/2addr v4, v3

    invoke-interface {v0, v2, v4}, Lcom/android/settings/widget/SlideListView$Listener;->setChecked(IZ)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    add-int/2addr v1, v3

    :goto_2
    if-gt v1, p1, :cond_7

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt v1, v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getLastVisiblePosition()I

    move-result v0

    if-gt v1, v0, :cond_6

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getHeaderViewsCount()I

    move-result v0

    if-lt v1, v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_5

    goto :goto_3

    .line 248
    :cond_5
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView;->mListener:Lcom/android/settings/widget/SlideListView$Listener;

    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, v1, v2

    iget-boolean v4, p0, Lcom/android/settings/widget/SlideListView;->mIsChecked:Z

    xor-int/2addr v4, v3

    invoke-interface {v0, v2, v4}, Lcom/android/settings/widget/SlideListView$Listener;->setChecked(IZ)V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 253
    :cond_7
    :goto_4
    iput p1, p0, Lcom/android/settings/widget/SlideListView;->mPrePosition:I

    :cond_8
    :goto_5
    return-void
.end method

.method private processQuickBar(I)Z
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/SlideListView;->mOnQuickBarChangedListener:Lcom/android/settings/widget/SlideListView$OnQuickBarChangedListener;

    if-eqz p0, :cond_1

    .line 199
    invoke-interface {p0}, Lcom/android/settings/widget/SlideListView$OnQuickBarChangedListener;->processQuickBar()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private recovery()V
    .locals 2

    .line 257
    iget v0, p0, Lcom/android/settings/widget/SlideListView;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView;->mScroller:Lcom/android/settings/widget/SlideListView$SelectScroller;

    invoke-virtual {v0}, Lcom/android/settings/widget/SlideListView$SelectScroller;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView;->mScroller:Lcom/android/settings/widget/SlideListView$SelectScroller;

    invoke-virtual {v0}, Lcom/android/settings/widget/SlideListView$SelectScroller;->stopScroll()V

    :cond_1
    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/android/settings/widget/SlideListView;->mIsChecked:Z

    .line 265
    iput v1, p0, Lcom/android/settings/widget/SlideListView;->mState:I

    const/4 v1, -0x2

    .line 266
    iput v1, p0, Lcom/android/settings/widget/SlideListView;->mPrePosition:I

    .line 267
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->mStartX:I

    .line 268
    iput v0, p0, Lcom/android/settings/widget/SlideListView;->mEndX:I

    return-void
.end method

.method private startCheckPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 208
    iget v0, p0, Lcom/android/settings/widget/SlideListView;->mCheckboxId:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SlideListView;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result p0

    return p0
.end method

.method private viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 7

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 290
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/SlideListView;->pointToPosition(II)I

    move-result v0

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getHeaderViewsCount()I

    move-result v1

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getFooterViewsCount()I

    move-result v2

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    if-lt v0, v1, :cond_3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_3

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SlideListView;->getListChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_0
    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 307
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 310
    iget v3, p0, Lcom/android/settings/widget/SlideListView;->mState:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/settings/widget/SlideListView;->mStartX:I

    if-le v1, v3, :cond_1

    iget v3, p0, Lcom/android/settings/widget/SlideListView;->mEndX:I

    if-ge v1, v3, :cond_1

    return v0

    .line 314
    :cond_1
    iget-object v3, p0, Lcom/android/settings/widget/SlideListView;->mTempLoc:[I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 316
    iget-object v3, p0, Lcom/android/settings/widget/SlideListView;->mTempLoc:[I

    const/4 v5, 0x0

    aget v6, v3, v5

    if-le v1, v6, :cond_3

    aget v6, v3, v2

    if-le p1, v6, :cond_3

    aget v3, v3, v5

    .line 317
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    if-ge v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/settings/widget/SlideListView;->mTempLoc:[I

    aget v1, v1, v2

    .line 318
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_3

    .line 320
    iget-object p1, p0, Lcom/android/settings/widget/SlideListView;->mTempLoc:[I

    aget v1, p1, v5

    iput v1, p0, Lcom/android/settings/widget/SlideListView;->mStartX:I

    .line 321
    aget p1, p1, v5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/settings/widget/SlideListView;->mEndX:I

    return v0

    :cond_2
    if-nez p2, :cond_3

    .line 325
    iget p1, p0, Lcom/android/settings/widget/SlideListView;->mState:I

    if-ne p1, v2, :cond_3

    iget p1, p0, Lcom/android/settings/widget/SlideListView;->mStartX:I

    if-le v1, p1, :cond_3

    iget p0, p0, Lcom/android/settings/widget/SlideListView;->mEndX:I

    if-ge v1, p0, :cond_3

    const/4 p0, -0x2

    return p0

    :cond_3
    return v4
.end method


# virtual methods
.method public isSelecting()Z
    .locals 1

    .line 272
    iget p0, p0, Lcom/android/settings/widget/SlideListView;->mState:I

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

    .line 107
    iget-boolean p0, p0, Lcom/android/settings/widget/SlideListView;->mSlideEnable:Z

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 112
    iget-boolean v0, p0, Lcom/android/settings/widget/SlideListView;->mSlideEnable:Z

    if-nez v0, :cond_0

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SlideListView;->startCheckPosition(Landroid/view/MotionEvent;)I

    move-result v0

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    if-nez v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 126
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 381
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;->onSizeChanged(IIII)V

    .line 382
    invoke-direct {p0}, Lcom/android/settings/widget/SlideListView;->initScrollData()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SlideListView;->processQuickBar(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/SlideListView;->mSlideEnable:Z

    if-nez v0, :cond_1

    .line 137
    invoke-super {p0, p1}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/widget/SlideListView;->initScrollData()V

    .line 140
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SlideListView;->startCheckPosition(Landroid/view/MotionEvent;)I

    move-result v0

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 144
    iget-object v4, p0, Lcom/android/settings/widget/SlideListView;->mCurrPoint:Landroid/graphics/Point;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-eqz v4, :cond_9

    if-eq v4, v1, :cond_8

    const/4 v7, 0x2

    if-eq v4, v7, :cond_2

    const/4 v0, 0x3

    if-eq v4, v0, :cond_8

    goto :goto_2

    :cond_2
    if-eq v0, v5, :cond_4

    if-ne v0, v6, :cond_3

    .line 160
    iget v4, p0, Lcom/android/settings/widget/SlideListView;->mState:I

    if-ne v4, v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v1

    .line 161
    :goto_1
    iget v6, p0, Lcom/android/settings/widget/SlideListView;->mState:I

    if-eq v6, v1, :cond_5

    if-nez v4, :cond_5

    .line 164
    invoke-direct {p0, v0}, Lcom/android/settings/widget/SlideListView;->onDown(I)V

    return v1

    .line 168
    :cond_5
    iget v6, p0, Lcom/android/settings/widget/SlideListView;->mState:I

    if-ne v6, v1, :cond_6

    if-ne v0, v5, :cond_6

    return v1

    :cond_6
    if-eqz v4, :cond_7

    goto :goto_2

    .line 174
    :cond_7
    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/widget/SlideListView;->continueSelect(III)V

    return v1

    .line 179
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/widget/SlideListView;->recovery()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView;->mTouchMonitorListener:Lcom/android/settings/widget/SlideListView$TouchMonitorListener;

    if-eqz v0, :cond_b

    .line 181
    invoke-interface {v0}, Lcom/android/settings/widget/SlideListView$TouchMonitorListener;->onTouchActionUp()V

    goto :goto_2

    .line 149
    :cond_9
    iget-object v4, p0, Lcom/android/settings/widget/SlideListView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Point;->set(II)V

    if-eq v0, v5, :cond_b

    if-ne v0, v6, :cond_a

    .line 152
    iget v2, p0, Lcom/android/settings/widget/SlideListView;->mState:I

    if-ne v2, v6, :cond_a

    goto :goto_2

    .line 156
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/settings/widget/SlideListView;->onDown(I)V

    return v1

    .line 186
    :cond_b
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setOnQuickBarChanged(Lcom/android/settings/widget/SlideListView$OnQuickBarChangedListener;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/settings/widget/SlideListView;->mOnQuickBarChangedListener:Lcom/android/settings/widget/SlideListView$OnQuickBarChangedListener;

    return-void
.end method

.method public setSlideEnable(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/android/settings/widget/SlideListView;->recovery()V

    .line 103
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/widget/SlideListView;->mSlideEnable:Z

    return-void
.end method

.method public setSlideListener(Lcom/android/settings/widget/SlideListView$Listener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/widget/SlideListView;->mListener:Lcom/android/settings/widget/SlideListView$Listener;

    return-void
.end method

.method public setTouchMonitorListener(Lcom/android/settings/widget/SlideListView$TouchMonitorListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/settings/widget/SlideListView;->mTouchMonitorListener:Lcom/android/settings/widget/SlideListView$TouchMonitorListener;

    return-void
.end method
