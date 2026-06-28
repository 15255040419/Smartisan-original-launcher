.class public Lcom/android/settings/widget/HorizontalScrollListView;
.super Landroid/widget/ListView;
.source "HorizontalScrollListView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;,
        Lcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;,
        Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;
    }
.end annotation


# static fields
.field private static COMPLETE_SCROLL_DURATION:I = 0xc8

.field private static DEBUG_SCROLL:Z = false

.field public static final IDLE:I = 0x0

.field private static final MISS:I = -0x1

.field private static RESTORE_SCROLL_DURATION:I = 0x96

.field public static final SCROLLED_LEFT:I = 0x4

.field public static final SCROLLED_RIGHT:I = 0x3

.field public static final SCROLLING_LEFT:I = 0x2

.field public static final SCROLLING_RIGHT:I = 0x1

.field public static final SCROLL_MODE_BOTH:I = 0x2

.field public static final SCROLL_MODE_LEFT:I = 0x1

.field public static final SCROLL_MODE_RIGHT:I = 0x0

.field private static TAG:Ljava/lang/String; = "HorizontalScrollListView"


# instance fields
.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mClickScrollHitPos:I

.field private mContext:Landroid/content/Context;

.field private mDetector:Landroid/view/GestureDetector;

.field private mHintView:Landroid/view/View;

.field private mIntercept:Z

.field protected mIsRunningDeleteAnim:Z

.field private mIsScrollRunning:Z

.field private mLeftBtnsId:I

.field private mLeftBtnsWidth:I

.field private mMaxLeftBtnsWidth:I

.field private mMaxRightBtnsWidth:I

.field private mOnScrollStateListener:Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;

.field private mOverflowVelocityFactor:F

.field private mRestoreEatBackKey:Z

.field private mRightBtnsId:I

.field private mRightBtnsWidth:I

.field private mScrollEnabled:Z

.field private mScrollFactor:F

.field private mScrollHandleId:I

.field private mScrollMode:I

.field private mScrollRunner:Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;

.field private mScrollState:I

.field private mScrolledHintPos:I

.field private mScrolledItemId:J

.field private mScroller:Landroid/widget/Scroller;

.field private mTempLoc:[I

.field private mTouchSlop:I

.field private mVelocityFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/HorizontalScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    iput-object p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 153
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v3, 0x0

    .line 57
    iput v3, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollState:I

    const/4 v4, -0x1

    .line 61
    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mClickScrollHitPos:I

    .line 62
    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrolledHintPos:I

    const-wide/16 v5, -0x1

    .line 63
    iput-wide v5, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrolledItemId:J

    const/4 v5, 0x1

    .line 65
    iput-boolean v5, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollEnabled:Z

    .line 66
    iput-boolean v5, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mRestoreEatBackKey:Z

    const/4 v6, 0x2

    new-array v7, v6, [I

    .line 77
    iput-object v7, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mTempLoc:[I

    .line 79
    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mLeftBtnsWidth:I

    .line 80
    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mRightBtnsWidth:I

    .line 82
    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mMaxLeftBtnsWidth:I

    .line 83
    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mMaxRightBtnsWidth:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 85
    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mVelocityFactor:F

    const v4, 0x3e4ccccd    # 0.2f

    .line 86
    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mOverflowVelocityFactor:F

    const/high16 v4, 0x3f000000    # 0.5f

    .line 88
    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollFactor:F

    .line 94
    iput-boolean v3, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mIntercept:Z

    .line 95
    iput-boolean v3, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mIsScrollRunning:Z

    .line 96
    iput-boolean v3, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mIsRunningDeleteAnim:Z

    .line 154
    iput-object v1, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v7, Lcom/android/settings/R$styleable;->HorizontalScrollListView:[I

    invoke-virtual {v4, v2, v7, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v4, 0x8

    .line 159
    iget-boolean v7, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollEnabled:Z

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollEnabled:Z

    const/4 v4, 0x5

    .line 161
    iget-boolean v7, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mRestoreEatBackKey:Z

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mRestoreEatBackKey:Z

    .line 164
    iget v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mLeftBtnsWidth:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mLeftBtnsWidth:I

    const/4 v4, 0x7

    .line 166
    iget v5, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mRightBtnsWidth:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mRightBtnsWidth:I

    .line 169
    iget v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mMaxLeftBtnsWidth:I

    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mMaxLeftBtnsWidth:I

    const/4 v4, 0x3

    .line 171
    iget v5, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mMaxRightBtnsWidth:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mMaxRightBtnsWidth:I

    const/16 v4, 0xc

    .line 174
    iget v5, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mVelocityFactor:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mVelocityFactor:F

    const/4 v4, 0x4

    .line 176
    iget v5, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mOverflowVelocityFactor:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mOverflowVelocityFactor:F

    const/16 v4, 0x9

    .line 179
    iget v5, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollFactor:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollFactor:F

    .line 182
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mLeftBtnsId:I

    const/4 v4, 0x6

    .line 183
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mRightBtnsId:I

    const/16 v4, 0xa

    .line 185
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollHandleId:I

    const/16 v4, 0xb

    .line 187
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollMode:I

    .line 190
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    :cond_0
    new-instance v2, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;-><init>(Lcom/android/settings/widget/HorizontalScrollListView;)V

    iput-object v2, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollRunner:Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;

    .line 195
    new-instance v2, Landroid/widget/Scroller;

    const v3, 0x10a0006

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mScroller:Landroid/widget/Scroller;

    .line 196
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, v1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mDetector:Landroid/view/GestureDetector;

    .line 197
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mTouchSlop:I

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 198
    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 199
    new-instance v1, Lcom/android/settings/widget/HorizontalScrollListView$1;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/HorizontalScrollListView$1;-><init>(Lcom/android/settings/widget/HorizontalScrollListView;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/HorizontalScrollListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/HorizontalScrollListView;)Landroid/widget/Scroller;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/widget/HorizontalScrollListView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mIsScrollRunning:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/widget/HorizontalScrollListView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/widget/HorizontalScrollListView;)Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mOnScrollStateListener:Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/HorizontalScrollListView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollHandleId:I

    return p0
.end method

.method private completeScrollState()Z
    .locals 5

    .line 613
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mHintView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsWidth()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getHorizontalScrollX()I

    move-result v2

    if-nez v2, :cond_2

    .line 623
    iget v3, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    return v1

    .line 627
    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v2, :cond_3

    neg-int v0, v0

    .line 629
    :cond_3
    sget v1, Lcom/android/settings/widget/HorizontalScrollListView;->COMPLETE_SCROLL_DURATION:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/android/settings/widget/HorizontalScrollListView;->horizontalScrolling(IIILcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method private doActionUpOrCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mIntercept:Z

    const/4 v0, -0x1

    .line 423
    iput v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mClickScrollHitPos:I

    return-void
.end method

.method private fixHintView()V
    .locals 6

    .line 700
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrolledItemId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 701
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrolledHintPos:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrolledItemId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 702
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getFirstVisiblePosition()I

    move-result v0

    .line 703
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getLastVisiblePosition()I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_1

    .line 705
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrolledItemId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 706
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HorizontalScrollListView;->changeHintView(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 711
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HorizontalScrollListView;->restoreScrollState(Z)Z

    :cond_2
    return-void
.end method

.method private getMaxBtnsWidth()I
    .locals 1

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->isStateLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mMaxRightBtnsWidth:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mMaxLeftBtnsWidth:I

    :goto_0
    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private horizontalScrolling(IIILcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;)V
    .locals 7

    .line 564
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollRunner:Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HorizontalScrollListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 565
    iget-object v1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 566
    new-instance p1, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;

    invoke-direct {p1, p0, p4}, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;-><init>(Lcom/android/settings/widget/HorizontalScrollListView;Lcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;)V

    iput-object p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollRunner:Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;

    .line 567
    iget-object p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollRunner:Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 484
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 485
    iget-object v2, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mTempLoc:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 487
    iget-object v2, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mTempLoc:[I

    aget v3, v2, v0

    if-le v1, v3, :cond_1

    const/4 v3, 0x1

    aget v4, v2, v3

    if-le p2, v4, :cond_1

    aget v2, v2, v0

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    if-ge v1, v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mTempLoc:[I

    aget p0, p0, v3

    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    if-ge p2, p0, :cond_1

    return v3

    :cond_1
    :goto_0
    return v0
.end method

.method private onScrolledStateTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->isStateScrolled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 437
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 447
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HorizontalScrollListView;->restoreScrollState(Z)Z

    :cond_3
    return v1
.end method

.method private scrolling(IF)V
    .locals 4

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    return-void

    .line 516
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mIntercept:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-nez p1, :cond_2

    return-void

    .line 520
    :cond_2
    iget-object p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getHorizontalScrollX()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_4

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_3

    move v0, v1

    .line 525
    :cond_3
    iput v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollState:I

    goto :goto_0

    :cond_4
    if-gez p1, :cond_5

    move v0, v1

    .line 527
    :cond_5
    iput v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollState:I

    .line 530
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsWidth()I

    move-result v0

    if-lez v0, :cond_7

    .line 531
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v0, :cond_6

    goto :goto_1

    .line 534
    :cond_6
    iget v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mOverflowVelocityFactor:F

    goto :goto_2

    .line 532
    :cond_7
    :goto_1
    iget v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mVelocityFactor:F

    :goto_2
    mul-float/2addr p2, v0

    int-to-float v0, p1

    add-float/2addr p2, v0

    float-to-int p2, p2

    const/4 v0, 0x0

    if-lez p2, :cond_8

    .line 539
    iget v2, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollMode:I

    if-nez v2, :cond_8

    move p2, v0

    :cond_8
    if-gez p2, :cond_9

    .line 542
    iget v2, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollMode:I

    if-ne v2, v1, :cond_9

    move p2, v0

    .line 546
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getMaxBtnsWidth()I

    move-result v1

    if-lez v1, :cond_b

    .line 547
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v1, :cond_b

    if-lez p2, :cond_a

    move p2, v1

    goto :goto_3

    :cond_a
    neg-int p2, v1

    .line 551
    :cond_b
    :goto_3
    sget-boolean v1, Lcom/android/settings/widget/HorizontalScrollListView;->DEBUG_SCROLL:Z

    if-eqz v1, :cond_c

    .line 552
    sget-object v1, Lcom/android/settings/widget/HorizontalScrollListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldScrollX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    sget-object p1, Lcom/android/settings/widget/HorizontalScrollListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newScrollX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->scrollTo(II)V

    .line 557
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mOnScrollStateListener:Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;

    if-eqz p0, :cond_d

    .line 558
    invoke-interface {p0}, Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;->onScrolling()V

    :cond_d
    return-void
.end method

.method private startScroll(IF)V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mOnScrollStateListener:Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;

    if-eqz v0, :cond_1

    .line 498
    invoke-interface {v0, p1}, Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;->isItemCanScroll(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mOnScrollStateListener:Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;

    invoke-interface {v0, p1}, Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;->onScrollStart(I)V

    .line 503
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->saveHintViewPosition(I)V

    .line 504
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/HorizontalScrollListView;->scrolling(IF)V

    return-void
.end method

.method private viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 5

    .line 454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 457
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/HorizontalScrollListView;->pointToPosition(II)I

    move-result v0

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getHeaderViewsCount()I

    move-result v1

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getFooterViewsCount()I

    move-result v2

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-lt v0, v1, :cond_1

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/HorizontalScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez p2, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 470
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v4
.end method


# virtual methods
.method public changeHintView(I)V
    .locals 3

    .line 717
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsWidth()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollRunner:Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/HorizontalScrollListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 723
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->isStateLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    neg-int v0, v0

    .line 725
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 726
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 729
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->saveHintViewPosition(I)V

    .line 730
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public ensureScrollState(Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 659
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/HorizontalScrollListView;->ensureScrollState(ZLcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;)Z

    move-result p0

    return p0
.end method

.method public ensureScrollState(ZLcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;)Z
    .locals 4

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->isStateScrolled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 674
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 676
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getHorizontalScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollFactor:F

    mul-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    .line 679
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->completeScrollState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 681
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HorizontalScrollListView;->restoreScrollState(ZLcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;)Z

    goto :goto_1

    .line 683
    :cond_2
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mOnScrollStateListener:Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;

    if-eqz p0, :cond_4

    .line 684
    invoke-interface {p0}, Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;->onScrollStartToComplete()V

    goto :goto_1

    .line 677
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HorizontalScrollListView;->restoreScrollState(ZLcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;)Z

    :cond_4
    :goto_1
    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public getBtnsView()Landroid/view/View;
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 774
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->isStateLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mRightBtnsId:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mLeftBtnsId:I

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getBtnsWidth()I
    .locals 1

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->isStateLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mRightBtnsWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mLeftBtnsWidth:I

    :goto_0
    if-gtz v0, :cond_1

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 581
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_1
    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getHintView()Landroid/view/View;
    .locals 0

    .line 749
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mHintView:Landroid/view/View;

    return-object p0
.end method

.method public getHintViewPosition()I
    .locals 0

    .line 753
    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrolledHintPos:I

    return p0
.end method

.method public getHorizontalScrollX()I
    .locals 0

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 785
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getScrollHandleView()Landroid/view/View;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 758
    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollHandleId:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getScrollMode()I
    .locals 0

    .line 812
    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollMode:I

    return p0
.end method

.method public getScrollState()I
    .locals 0

    .line 816
    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollState:I

    return p0
.end method

.method public isScrollEnabled()Z
    .locals 0

    .line 804
    iget-boolean p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollEnabled:Z

    return p0
.end method

.method public isStateIdle()Z
    .locals 0

    .line 836
    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStateLeft()Z
    .locals 1

    .line 820
    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollState:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isStateRight()Z
    .locals 2

    .line 824
    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollState:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isStateScrolled()Z
    .locals 1

    .line 828
    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollState:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isStateScrolling()Z
    .locals 2

    .line 832
    iget p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollState:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollEnabled:Z

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->isStateScrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 249
    iput p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mClickScrollHitPos:I

    goto :goto_0

    .line 251
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollHandleId:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/HorizontalScrollListView;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mClickScrollHitPos:I

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 322
    iget-boolean v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mIsRunningDeleteAnim:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/HorizontalScrollListView;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 328
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/HorizontalScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->isStateScrolled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-ne v2, v3, :cond_3

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->isStateLeft()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mLeftBtnsId:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mRightBtnsId:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 335
    invoke-direct {p0, v2, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 342
    :cond_3
    iget v3, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mLeftBtnsId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mRightBtnsId:I

    .line 343
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_1
    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v0

    .line 349
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HorizontalScrollListView;->restoreScrollState(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    iget-boolean v1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mRestoreEatBackKey:Z

    if-eqz v1, :cond_1

    return v0

    .line 240
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 211
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->fixHintView()V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 273
    iget-boolean v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 277
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mClickScrollHitPos:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 281
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 282
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    .line 283
    sget-boolean p2, Lcom/android/settings/widget/HorizontalScrollListView;->DEBUG_SCROLL:Z

    if-eqz p2, :cond_2

    .line 284
    sget-object p2, Lcom/android/settings/widget/HorizontalScrollListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScroll deltaX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", deltaY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", distanceX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", distanceY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->isStateScrolling()Z

    move-result p2

    if-nez p2, :cond_9

    .line 289
    iget p2, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollMode:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    if-lez v0, :cond_3

    return v1

    .line 292
    :cond_3
    iget p2, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollMode:I

    if-nez p2, :cond_4

    if-gez v0, :cond_4

    return v1

    .line 295
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p2, p1, :cond_5

    return v1

    .line 298
    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mTouchSlop:I

    if-ge p1, p2, :cond_6

    return v1

    .line 301
    :cond_6
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    return v1

    .line 304
    :cond_7
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mTouchSlop:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_8

    return v1

    .line 307
    :cond_8
    iget p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mClickScrollHitPos:I

    int-to-float p2, v0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/HorizontalScrollListView;->startScroll(IF)V

    goto :goto_0

    .line 309
    :cond_9
    iget p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mClickScrollHitPos:I

    invoke-direct {p0, p1, p3}, Lcom/android/settings/widget/HorizontalScrollListView;->scrolling(IF)V

    :goto_0
    return v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 218
    iget p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrolledHintPos:I

    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getFirstVisiblePosition()I

    move-result p2

    if-lt p1, p2, :cond_0

    iget p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrolledHintPos:I

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getLastVisiblePosition()I

    move-result p2

    if-le p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->restoreScrollState(Z)Z

    :cond_1
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 354
    iget-boolean v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mIsRunningDeleteAnim:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 357
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollEnabled:Z

    if-nez v0, :cond_1

    .line 358
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 361
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mIsScrollRunning:Z

    if-eqz v0, :cond_2

    .line 362
    iput-boolean v1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mIntercept:Z

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->isStateScrolled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    iput-boolean v1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mIntercept:Z

    .line 367
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->onScrolledStateTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 372
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mIntercept:Z

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v1, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    if-eqz v0, :cond_6

    .line 383
    iget-object v2, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v2}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 378
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/HorizontalScrollListView;->ensureScrollState(Z)Z

    .line 379
    invoke-direct {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->doActionUpOrCancel()V

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    :try_start_0
    const-string p1, "android.widget.ListView"

    .line 390
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "onCancelPendingInputEvents"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 391
    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Class;

    .line 393
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v2

    .line 394
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    .line 397
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mContext:Landroid/content/Context;

    aput-object p0, v3, v2

    .line 398
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    .line 399
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 413
    sget-object p1, Lcom/android/settings/widget/HorizontalScrollListView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception p0

    .line 411
    sget-object p1, Lcom/android/settings/widget/HorizontalScrollListView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception p0

    .line 409
    sget-object p1, Lcom/android/settings/widget/HorizontalScrollListView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception p0

    .line 407
    sget-object p1, Lcom/android/settings/widget/HorizontalScrollListView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_4
    move-exception p0

    .line 405
    sget-object p1, Lcom/android/settings/widget/HorizontalScrollListView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_5
    move-exception p0

    .line 403
    sget-object p1, Lcom/android/settings/widget/HorizontalScrollListView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_6
    move-exception p0

    .line 401
    sget-object p1, Lcom/android/settings/widget/HorizontalScrollListView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v1

    .line 418
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public playDeleteItemAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 863
    iget-object v3, v1, Lcom/android/settings/widget/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 866
    invoke-interface {v2, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 867
    invoke-interface {v2, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void

    .line 871
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v8

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/HorizontalScrollListView;->isStateLeft()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v1, Lcom/android/settings/widget/HorizontalScrollListView;->mLeftBtnsId:I

    goto :goto_0

    :cond_2
    iget v0, v1, Lcom/android/settings/widget/HorizontalScrollListView;->mRightBtnsId:I

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 874
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    :goto_1
    move v6, v0

    .line 876
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/HorizontalScrollListView;->isStateLeft()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :goto_2
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v10, 0x0

    aput v7, v4, v10

    const/4 v11, 0x1

    aput v0, v4, v11

    .line 878
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 879
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x3fc00000    # 1.5f

    invoke-direct {v0, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v14, 0xc8

    .line 880
    invoke-virtual {v12, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 881
    new-instance v0, Lcom/android/settings/widget/HorizontalScrollListView$2;

    invoke-direct {v0, v1, v3}, Lcom/android/settings/widget/HorizontalScrollListView$2;-><init>(Lcom/android/settings/widget/HorizontalScrollListView;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 891
    new-instance v5, Lcom/android/settings/widget/HorizontalScrollListView$3;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v8

    move-object v10, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/widget/HorizontalScrollListView$3;-><init>(Lcom/android/settings/widget/HorizontalScrollListView;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    invoke-virtual {v12, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v9, :cond_5

    const/4 v0, 0x4

    .line 974
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz v8, :cond_8

    .line 978
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 979
    invoke-virtual {v0, v14, v15}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 980
    invoke-virtual {v0, v11}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 981
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 982
    instance-of v1, v8, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 983
    check-cast v8, Landroid/view/ViewGroup;

    .line 984
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_8

    .line 986
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 987
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 988
    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 992
    :cond_7
    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 996
    :cond_8
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public restoreScrollState(Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 634
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/HorizontalScrollListView;->restoreScrollState(ZLcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;)Z

    move-result p0

    return p0
.end method

.method public restoreScrollState(ZLcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;)Z
    .locals 4

    .line 638
    iget-boolean v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mIsRunningDeleteAnim:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 641
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getHorizontalScrollX()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 642
    iput v2, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollState:I

    const/4 p1, -0x1

    .line 643
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HorizontalScrollListView;->saveHintViewPosition(I)V

    if-eqz p2, :cond_1

    .line 645
    invoke-interface {p2}, Lcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;->onAnimationEnd()V

    .line 647
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mOnScrollStateListener:Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;

    if-eqz p0, :cond_2

    .line 648
    invoke-interface {p0}, Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;->onScrollRestored()V

    :cond_2
    return v2

    .line 653
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v3, v0

    if-eqz p1, :cond_4

    .line 654
    sget v2, Lcom/android/settings/widget/HorizontalScrollListView;->RESTORE_SCROLL_DURATION:I

    :cond_4
    invoke-direct {p0, v0, v3, v2, p2}, Lcom/android/settings/widget/HorizontalScrollListView;->horizontalScrolling(IIILcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;)V

    return v1
.end method

.method public saveHintViewPosition(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 735
    iput-object p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mHintView:Landroid/view/View;

    .line 736
    iput v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrolledHintPos:I

    const-wide/16 v0, -0x1

    .line 737
    iput-wide v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrolledItemId:J

    goto :goto_0

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HorizontalScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mHintView:Landroid/view/View;

    .line 740
    iput p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrolledHintPos:I

    .line 741
    invoke-virtual {p0}, Lcom/android/settings/widget/HorizontalScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrolledItemId:J

    :goto_0
    return-void
.end method

.method public setLeftBtnsId(I)V
    .locals 0

    .line 800
    iput p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mLeftBtnsId:I

    return-void
.end method

.method public setLeftBtnsWidth(I)V
    .locals 0

    .line 608
    iput p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mLeftBtnsWidth:I

    return-void
.end method

.method public setMaxLeftBtnsWidth(I)V
    .locals 0

    .line 600
    iput p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mMaxLeftBtnsWidth:I

    return-void
.end method

.method public setOnScrollStateChangeListener(Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mOnScrollStateListener:Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 792
    iput-boolean p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollEnabled:Z

    return-void
.end method

.method public setScrollHandleId(I)V
    .locals 0

    .line 796
    iput p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollHandleId:I

    return-void
.end method

.method public setScrollMode(I)V
    .locals 0

    .line 808
    iput p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mScrollMode:I

    return-void
.end method
