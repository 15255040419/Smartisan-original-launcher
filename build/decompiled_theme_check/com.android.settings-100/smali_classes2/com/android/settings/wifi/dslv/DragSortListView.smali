.class public Lcom/android/settings/wifi/dslv/DragSortListView;
.super Lcom/android/settings/wifi/dslv/SlideListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dslv/DragSortListView$OnCancelDragListener;,
        Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;,
        Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;,
        Lcom/android/settings/wifi/dslv/DragSortListView$DragScrollProfile;,
        Lcom/android/settings/wifi/dslv/DragSortListView$DragSortListener;,
        Lcom/android/settings/wifi/dslv/DragSortListView$RemoveListener;,
        Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;,
        Lcom/android/settings/wifi/dslv/DragSortListView$DragListener;,
        Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;,
        Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;,
        Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;,
        Lcom/android/settings/wifi/dslv/DragSortListView$LiftAnimator;,
        Lcom/android/settings/wifi/dslv/DragSortListView$SmoothAnimator;,
        Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;,
        Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;
    }
.end annotation


# static fields
.field public static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field public static final DROPPING:I = 0x2

.field public static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field public static final REMOVING:I = 0x1

.field public static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;

.field private mAdjustAnimDuration:J

.field private mAdjustAnimate:Z

.field private mAnimate:Z

.field protected mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/android/settings/wifi/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;

.field private mDragSortController:Lcom/android/settings/wifi/dslv/DragSortController;

.field private mDragSortTracker:Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mFromPosition:I

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastFloatLoc:Landroid/graphics/Point;

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/android/settings/wifi/dslv/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mOnCancelDragListener:Lcom/android/settings/wifi/dslv/DragSortListView$OnCancelDragListener;

.field private mOverScrollEnable:Z

.field private mRelateListView:Landroid/widget/ListView;

.field private mRemoveAnimator:Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/android/settings/wifi/dslv/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/android/settings/wifi/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 460
    invoke-direct/range {p0 .. p2}, Lcom/android/settings/wifi/dslv/SlideListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 76
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    const/4 v1, 0x0

    .line 86
    iput-boolean v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 97
    iput v2, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatAlpha:F

    .line 98
    iput v2, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 123
    iput-boolean v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mAnimate:Z

    .line 129
    iput-boolean v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mAdjustAnimate:Z

    const-wide/16 v3, 0x0

    .line 131
    iput-wide v3, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mAdjustAnimDuration:J

    const/4 v5, 0x1

    .line 192
    iput-boolean v5, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragEnabled:Z

    .line 203
    iput v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    .line 210
    iput v5, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 226
    iput v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mWidthMeasureSpec:I

    new-array v6, v5, [Landroid/view/View;

    .line 232
    iput-object v6, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    const v6, 0x3eaaaaab

    .line 244
    iput v6, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 251
    iput v6, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    const/high16 v8, 0x3f000000    # 0.5f

    .line 275
    iput v8, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 283
    new-instance v6, Lcom/android/settings/wifi/dslv/DragSortListView$1;

    invoke-direct {v6, v7}, Lcom/android/settings/wifi/dslv/DragSortListView$1;-><init>(Lcom/android/settings/wifi/dslv/DragSortListView;)V

    iput-object v6, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mScrollProfile:Lcom/android/settings/wifi/dslv/DragSortListView$DragScrollProfile;

    .line 347
    iput v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragFlags:I

    .line 353
    iput-boolean v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 358
    iput-boolean v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mInTouchEvent:Z

    const/4 v6, 0x0

    .line 363
    iput-object v6, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewManager:Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;

    .line 383
    iput v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mCancelMethod:I

    const/high16 v6, 0x3e800000    # 0.25f

    .line 390
    iput v6, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v6, 0x0

    .line 399
    iput v6, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mSlideFrac:F

    .line 412
    iput-boolean v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mTrackDragSort:Z

    .line 422
    iput-boolean v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 429
    iput-boolean v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 443
    new-instance v9, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;

    const/4 v10, 0x3

    invoke-direct {v9, v7, v10}, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;-><init>(Lcom/android/settings/wifi/dslv/DragSortListView;I)V

    iput-object v9, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mChildHeightCache:Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;

    .line 452
    iput v6, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1737
    iput-boolean v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mListViewIntercepted:Z

    const/4 v9, -0x1

    .line 1923
    iput v9, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mFromPosition:I

    .line 2261
    iput-boolean v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewInvalidated:Z

    const/16 v9, 0x96

    if-eqz v0, :cond_4

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/android/settings/R$styleable;->DragSortListView:[I

    invoke-virtual {v11, v0, v12, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v0, 0x2

    .line 470
    invoke-virtual {v11, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mItemHeightCollapsed:I

    const/16 v0, 0x12

    .line 473
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mTrackDragSort:Z

    .line 476
    iget-boolean v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 477
    new-instance v0, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;

    invoke-direct {v0, v7}, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;-><init>(Lcom/android/settings/wifi/dslv/DragSortListView;)V

    iput-object v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragSortTracker:Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;

    :cond_0
    const/16 v0, 0x9

    .line 481
    iget v12, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatAlpha:F

    invoke-virtual {v11, v0, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatAlpha:F

    .line 482
    iget v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatAlpha:F

    iput v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 484
    iget-boolean v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragEnabled:Z

    invoke-virtual {v11, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragEnabled:Z

    const/16 v0, 0x10

    const/high16 v10, 0x3f400000    # 0.75f

    .line 487
    invoke-virtual {v11, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    sub-float v0, v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 486
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 491
    iget v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mSlideRegionFrac:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mAnimate:Z

    .line 493
    invoke-virtual {v11, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-long v12, v0

    iput-wide v12, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mAdjustAnimDuration:J

    .line 494
    iget-wide v12, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mAdjustAnimDuration:J

    cmp-long v0, v12, v3

    if-eqz v0, :cond_2

    .line 495
    iput-boolean v5, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mAdjustAnimate:Z

    .line 496
    iput-boolean v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mAnimate:Z

    :cond_2
    const/4 v0, 0x5

    .line 499
    iget v2, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 503
    invoke-virtual {v7, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->setDragScrollStart(F)V

    const/16 v0, 0xb

    .line 505
    iget v2, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mMaxScrollSpeed:F

    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mMaxScrollSpeed:F

    const/16 v0, 0xd

    .line 509
    invoke-virtual {v11, v0, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/4 v0, 0x7

    .line 513
    invoke-virtual {v11, v0, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const/16 v0, 0x13

    .line 517
    invoke-virtual {v11, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/16 v2, 0xc

    .line 521
    invoke-virtual {v11, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mOverScrollEnable:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xe

    .line 526
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    const/16 v0, 0xf

    .line 529
    invoke-virtual {v11, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v0, 0x11

    .line 532
    invoke-virtual {v11, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    const/4 v0, 0x6

    .line 535
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v0, 0x4

    .line 538
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/16 v0, 0x8

    .line 541
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 544
    invoke-virtual {v11, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/16 v0, 0xa

    const/high16 v1, -0x1000000

    .line 547
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 551
    new-instance v15, Lcom/android/settings/wifi/dslv/DragSortController;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/dslv/DragSortController;-><init>(Lcom/android/settings/wifi/dslv/DragSortListView;IIIII)V

    iput-object v15, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragSortController:Lcom/android/settings/wifi/dslv/DragSortController;

    .line 554
    iget-object v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragSortController:Lcom/android/settings/wifi/dslv/DragSortController;

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 555
    iget-object v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragSortController:Lcom/android/settings/wifi/dslv/DragSortController;

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/dslv/DragSortController;->setSortEnabled(Z)V

    .line 556
    iget-object v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragSortController:Lcom/android/settings/wifi/dslv/DragSortController;

    invoke-virtual {v0, v14}, Lcom/android/settings/wifi/dslv/DragSortController;->setBackgroundColor(I)V

    .line 558
    iget-object v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragSortController:Lcom/android/settings/wifi/dslv/DragSortController;

    iput-object v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewManager:Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;

    .line 559
    invoke-virtual {v7, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 562
    :cond_3
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    move v0, v9

    move v9, v10

    goto :goto_1

    :cond_4
    move v0, v9

    .line 565
    :goto_1
    new-instance v1, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;

    invoke-direct {v1, v7}, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;-><init>(Lcom/android/settings/wifi/dslv/DragSortListView;)V

    iput-object v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragScroller:Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;

    if-lez v9, :cond_5

    .line 569
    new-instance v1, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;

    invoke-direct {v1, v7, v8, v9}, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;-><init>(Lcom/android/settings/wifi/dslv/DragSortListView;FI)V

    iput-object v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mRemoveAnimator:Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;

    :cond_5
    if-lez v0, :cond_6

    .line 573
    new-instance v1, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;

    invoke-direct {v1, v7, v8, v0}, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;-><init>(Lcom/android/settings/wifi/dslv/DragSortListView;FI)V

    iput-object v1, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mDropAnimator:Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;

    :cond_6
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 576
    invoke-static/range {v9 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 580
    new-instance v0, Lcom/android/settings/wifi/dslv/DragSortListView$2;

    invoke-direct {v0, v7}, Lcom/android/settings/wifi/dslv/DragSortListView$2;-><init>(Lcom/android/settings/wifi/dslv/DragSortListView;)V

    iput-object v0, v7, Lcom/android/settings/wifi/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/dslv/DragSortListView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mMaxScrollSpeed:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mItemHeightCollapsed:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/dslv/DragSortListView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/dslv/DragSortListView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/dslv/DragSortListView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mUseRemoveVelocity:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/dslv/DragSortListView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mRemoveVelocityX:F

    return p0
.end method

.method static synthetic access$1602(Lcom/android/settings/wifi/dslv/DragSortListView;F)F
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mRemoveVelocityX:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/dslv/DragSortListView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/dslv/DragSortListView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewMid:I

    return p0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/dslv/DragSortListView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mUpScrollStartYF:F

    return p0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/dslv/DragSortListView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragUpScrollHeight:F

    return p0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/dslv/DragSortListView;)Lcom/android/settings/wifi/dslv/DragSortListView$DragScrollProfile;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mScrollProfile:Lcom/android/settings/wifi/dslv/DragSortListView$DragScrollProfile;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/dslv/DragSortListView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDownScrollStartYF:F

    return p0
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/dslv/DragSortListView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDownScrollHeight:F

    return p0
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/widget/ListView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mRelateListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/settings/wifi/dslv/DragSortListView;I)I
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getItemHeight(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/android/settings/wifi/dslv/DragSortListView;I)I
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildHeight(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDeltaY:I

    return p0
.end method

.method static synthetic access$3000(Lcom/android/settings/wifi/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastY:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/dslv/DragSortListView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/settings/wifi/dslv/DragSortListView;II)I
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mY:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/dslv/DragSortListView;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatPos:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    return p0
.end method

.method private adjustAllItems()V
    .locals 6

    .line 1901
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1902
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v1

    .line 1904
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v0

    .line 1905
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 1908
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    add-int v5, v0, v2

    .line 1910
    invoke-direct {p0, v5, v4, v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private adjustItem(I)V
    .locals 2

    .line 1916
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1919
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 7

    .line 1932
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1934
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v1, :cond_0

    const/4 p3, -0x2

    goto :goto_0

    .line 1937
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result p3

    .line 1943
    :goto_0
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_7

    .line 1944
    :cond_1
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    const/16 v3, 0x50

    const/4 v4, 0x0

    if-ge p1, v1, :cond_3

    .line 1945
    move-object v1, p2

    check-cast v1, Lcom/android/settings/wifi/dslv/DragSortItemView;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/dslv/DragSortItemView;->setGravity(I)V

    .line 1946
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_7

    iget-boolean v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mAdjustAnimate:Z

    if-eqz v1, :cond_7

    .line 1947
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFromPosition:I

    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-le v1, v2, :cond_2

    .line 1949
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v2, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_1
    move-object v1, p2

    goto/16 :goto_2

    .line 1951
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1952
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_2

    :cond_3
    const/16 v5, 0x30

    if-le p1, v1, :cond_5

    .line 1956
    move-object v1, p2

    check-cast v1, Lcom/android/settings/wifi/dslv/DragSortItemView;

    invoke-virtual {v1, v5}, Lcom/android/settings/wifi/dslv/DragSortItemView;->setGravity(I)V

    .line 1957
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_7

    iget-boolean v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mAdjustAnimate:Z

    if-eqz v1, :cond_7

    .line 1958
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFromPosition:I

    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-le v1, v2, :cond_4

    .line 1959
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1960
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2

    .line 1963
    :cond_4
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    int-to-float v1, v1

    invoke-direct {v2, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    .line 1966
    :cond_5
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mItemHeightCollapsed:I

    if-ne v1, v6, :cond_7

    iget-boolean v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mAdjustAnimate:Z

    if-eqz v1, :cond_7

    .line 1967
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFromPosition:I

    iget v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-le v1, v6, :cond_6

    .line 1968
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1970
    move-object v2, v1

    check-cast v2, Lcom/android/settings/wifi/dslv/DragSortItemView;

    invoke-virtual {v2, v5}, Lcom/android/settings/wifi/dslv/DragSortItemView;->setGravity(I)V

    .line 1971
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2

    .line 1975
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1977
    move-object v2, v1

    check-cast v2, Lcom/android/settings/wifi/dslv/DragSortItemView;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/dslv/DragSortItemView;->setGravity(I)V

    .line 1978
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2

    :cond_7
    move-object v1, v2

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 1984
    iget-wide v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mAdjustAnimDuration:J

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1985
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1988
    :cond_9
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p3, v1, :cond_a

    .line 1989
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1990
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1994
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    .line 1997
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v1, :cond_b

    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz p0, :cond_b

    const/4 v0, 0x4

    :cond_b
    if-eq v0, p3, :cond_c

    .line 2002
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method private adjustOnReorder()V
    .locals 3

    .line 1588
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1589
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 1595
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    if-ge v1, v0, :cond_2

    const/4 v1, 0x0

    .line 1598
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1601
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 1604
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->setSelectionFromTop(II)V

    :cond_2
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 6

    .line 2140
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    .line 2142
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 2143
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    .line 2147
    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v2, :cond_0

    sub-int v2, p2, v0

    sub-int v0, v1, v0

    goto :goto_0

    :cond_0
    move v2, p2

    move v0, v1

    .line 2152
    :goto_0
    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2153
    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    iget v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v4, v5, :cond_1

    iget v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v4, v5, :cond_1

    .line 2154
    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v3, v4

    :cond_1
    const/4 v4, 0x0

    if-gt p1, p3, :cond_2

    .line 2158
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-le p1, p0, :cond_7

    sub-int/2addr v3, v0

    add-int/2addr v4, v3

    goto :goto_1

    :cond_2
    if-ne p1, p4, :cond_5

    .line 2162
    iget p3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, p3, :cond_4

    sub-int/2addr v2, v3

    :cond_3
    add-int/2addr v4, v2

    goto :goto_1

    .line 2164
    :cond_4
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p0, :cond_3

    sub-int/2addr p2, v1

    add-int/2addr v4, p2

    goto :goto_1

    .line 2170
    :cond_5
    iget p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, p2, :cond_6

    sub-int/2addr v4, v3

    goto :goto_1

    .line 2172
    :cond_6
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p0, :cond_7

    sub-int/2addr v4, v0

    :cond_7
    :goto_1
    return v4
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 8

    .line 2853
    invoke-static {p0, p1, p2}, Lcom/android/settings/wifi/dslv/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2857
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    add-int/2addr v0, v4

    move v5, v2

    .line 2860
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    if-ge v6, p2, :cond_3

    .line 2861
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    if-ne v6, v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2866
    :cond_2
    aput v1, p3, v5

    .line 2867
    aput v3, p4, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v6, 0x1

    move v1, v6

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-ne v3, p2, :cond_4

    move v3, p1

    .line 2881
    :cond_4
    aput v1, p3, v5

    .line 2882
    aput v3, p4, v5

    add-int/2addr v5, v4

    if-le v5, v4, :cond_5

    .line 2886
    aget p0, p3, v2

    if-ne p0, p1, :cond_5

    add-int/lit8 p0, v5, -0x1

    aget p2, p4, p0

    if-ne p2, p1, :cond_5

    .line 2891
    aget p0, p3, p0

    aput p0, p3, v2

    add-int/lit8 v5, v5, -0x1

    :cond_5
    return v5
.end method

.method private calcItemHeight(II)I
    .locals 6

    .line 2093
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getDividerHeight()I

    .line 2095
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mAnimate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2096
    :goto_0
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v1, v2

    .line 2097
    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v5, v3

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 2101
    iget v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_4

    .line 2102
    iget p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v5, p1, :cond_2

    if-eqz v0, :cond_1

    add-int p2, v4, v2

    goto :goto_1

    :cond_1
    move p2, v1

    goto :goto_1

    .line 2108
    :cond_2
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v5, p0, :cond_3

    sub-int p2, v1, v4

    goto :goto_1

    :cond_3
    move p2, v2

    goto :goto_1

    .line 2114
    :cond_4
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v1, :cond_6

    if-eqz v0, :cond_5

    add-int/2addr p2, v4

    goto :goto_1

    :cond_5
    add-int/2addr p2, v3

    goto :goto_1

    .line 2120
    :cond_6
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p0, :cond_7

    add-int/2addr p2, v3

    sub-int/2addr p2, v4

    :cond_7
    :goto_1
    return p2
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 0

    .line 2088
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dslv/DragSortListView;->calcItemHeight(II)I

    move-result p0

    return p0
.end method

.method private clearPositions()V
    .locals 1

    const/4 v0, -0x1

    .line 1527
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    .line 1528
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    .line 1529
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    .line 1530
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatPos:I

    return-void
.end method

.method private continueDrag(II)V
    .locals 4

    .line 1837
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1838
    iget p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDeltaY:I

    sub-int p1, p2, p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    const/4 p1, 0x1

    .line 1840
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1842
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewMid:I

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1843
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewMid:I

    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1846
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragScroller:Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1}, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v1

    .line 1848
    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastY:I

    const/4 v3, -0x1

    if-le v0, v2, :cond_1

    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v0, v2, :cond_1

    if-eq v1, p1, :cond_1

    if-eq v1, v3, :cond_0

    .line 1854
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragScroller:Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1858
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragScroller:Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1859
    :cond_1
    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastY:I

    if-ge p2, v2, :cond_3

    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge p2, v2, :cond_3

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    .line 1865
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragScroller:Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1869
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragScroller:Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1870
    :cond_3
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt p2, v1, :cond_4

    iget p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v0, p2, :cond_4

    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragScroller:Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;

    .line 1871
    invoke-virtual {p2}, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1875
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragScroller:Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private destroyFloatView()V
    .locals 2

    .line 2560
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 2561
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2562
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewManager:Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2563
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 2565
    iput-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2566
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->invalidate()V

    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    const/4 v0, 0x0

    .line 1707
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCancelMethod:I

    .line 1708
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1709
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1710
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    .line 1712
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatAlpha:F

    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1713
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1714
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mChildHeightCache:Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->clear()V

    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 2408
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2410
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->updateFloatView()V

    .line 2412
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    .line 2413
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    .line 2415
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->updatePositions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2418
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->adjustAllItems()V

    .line 2419
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v0

    .line 2422
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2423
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->layoutChildren()V

    :cond_0
    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    .line 2427
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->invalidate()V

    :cond_2
    const/4 p1, 0x0

    .line 2430
    iput-boolean p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 2

    .line 2397
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2398
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2404
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method private doRemoveItem()V
    .locals 2

    .line 1558
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->doRemoveItem(I)V

    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1567
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    .line 1570
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mRemoveListener:Lcom/android/settings/wifi/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1571
    invoke-interface {v0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1574
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->destroyFloatView()V

    .line 1576
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->adjustOnReorder()V

    .line 1577
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->clearPositions()V

    .line 1580
    iget-boolean p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 1581
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1583
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    :goto_0
    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 6

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 788
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getDividerHeight()I

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 793
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    .line 792
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingLeft()I

    move-result v3

    .line 796
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    .line 800
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 802
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    if-le p1, p0, :cond_0

    .line 803
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    add-int/2addr p0, v5

    add-int/2addr v1, p0

    goto :goto_0

    .line 806
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    sub-int/2addr p0, v5

    sub-int p1, p0, v1

    move v1, p0

    move p0, p1

    .line 812
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 813
    invoke-virtual {p2, v3, p0, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 814
    invoke-virtual {v0, v3, p0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 815
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 816
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private dropFloatView()V
    .locals 4

    const/4 v0, 0x2

    .line 1536
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    .line 1538
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDropListener:Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatPos:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1539
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1540
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDropListener:Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1543
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->destroyFloatView()V

    .line 1545
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->adjustOnReorder()V

    .line 1546
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->clearPositions()V

    .line 1547
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->adjustAllItems()V

    .line 1550
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 1551
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1553
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    :goto_0
    return-void
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 2

    .line 2911
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2912
    invoke-static {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 2913
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-ge v1, p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-eq p1, v0, :cond_2

    .line 2915
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    if-lt p0, p2, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private getChildHeight(I)I
    .locals 5

    .line 2007
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 2011
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2016
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p0

    return p0

    .line 2020
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mChildHeightCache:Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    return v0

    .line 2026
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2027
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 2030
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 2031
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 2032
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    :cond_3
    const/4 v2, 0x0

    if-ltz v1, :cond_5

    .line 2036
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v4, v3, v1

    if-nez v4, :cond_4

    .line 2037
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2038
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v0, v2, v1

    goto :goto_0

    .line 2040
    :cond_4
    aget-object v1, v3, v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2044
    :cond_5
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    .line 2048
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    .line 2051
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mChildHeightCache:Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->add(II)V

    return v0
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 3

    .line 2058
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 2063
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 2066
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 2069
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2072
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_3

    .line 2073
    iget p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0

    .line 2077
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_5

    .line 2080
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2081
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :cond_5
    return p1
.end method

.method private getItemHeight(I)I
    .locals 1

    .line 870
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    .line 878
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->calcItemHeight(II)I

    move-result p0

    return p0
.end method

.method private getOffset(IFF)I
    .locals 1

    int-to-float p0, p1

    mul-float p1, p2, p3

    cmpg-float p1, p0, p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    add-float v0, p2, p1

    mul-float/2addr v0, p3

    div-float/2addr p0, p3

    sub-float/2addr p2, p1

    sub-float/2addr p0, p2

    div-float/2addr p1, p0

    mul-float/2addr p1, p3

    sub-float p0, v0, p1

    :goto_0
    float-to-int p0, p0

    return p0
.end method

.method private getShuffleEdge(II)I
    .locals 7

    .line 950
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 951
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v1

    if-le p1, v0, :cond_7

    .line 957
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 961
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 965
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v1, v2

    .line 966
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildHeight(I)I

    move-result v2

    .line 967
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getItemHeight(I)I

    move-result v3

    .line 972
    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    iget v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    if-gt v4, v5, :cond_3

    if-ne p1, v4, :cond_2

    .line 975
    iget v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v6, v4, :cond_2

    if-ne p1, v5, :cond_1

    add-int/2addr p2, v3

    .line 977
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    goto :goto_0

    .line 982
    :cond_2
    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    if-le p1, v3, :cond_5

    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v3, :cond_5

    :goto_0
    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    if-le p1, v5, :cond_4

    .line 989
    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v4, :cond_4

    add-int/2addr p2, v1

    goto :goto_1

    .line 991
    :cond_4
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_5

    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v4, v1, :cond_5

    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    .line 998
    :cond_5
    :goto_1
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v1, :cond_6

    .line 999
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildHeight(I)I

    move-result p0

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    goto :goto_2

    :cond_6
    sub-int/2addr v2, v0

    .line 1001
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v2, p0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    :cond_7
    :goto_2
    return p2
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4

    .line 2922
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sub-int v2, v0, v1

    if-lez v2, :cond_1

    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    .line 2925
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private invalidateFloatView()V
    .locals 1

    const/4 v0, 0x1

    .line 2264
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewInvalidated:Z

    return-void
.end method

.method private measureFloatView()V
    .locals 2

    .line 2198
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2199
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2200
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewManager:Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;

    .line 2201
    invoke-interface {v1}, Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewManager:Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;

    .line 2202
    invoke-interface {v1}, Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2203
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeightHalf:I

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 3

    .line 2181
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2183
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2184
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2186
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v2

    .line 2187
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getListPaddingRight()I

    move-result p0

    add-int/2addr v2, p0

    iget p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2186
    invoke-static {v1, v2, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    .line 2189
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_1

    .line 2190
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2192
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2194
    :goto_0
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private overScrollDown(II)V
    .locals 2

    .line 2529
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mY:I

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastY:I

    sub-int v1, v0, v1

    if-gez v1, :cond_1

    .line 2532
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastFloatLoc:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-float p1, v1

    .line 2537
    :goto_0
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastFloatLoc:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    float-to-int p1, p1

    add-int/2addr p0, p1

    iput p0, p2, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 2539
    :cond_1
    iget p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    .line 2540
    iget p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    const p1, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getOffset(IFF)I

    move-result p1

    .line 2541
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    add-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 2542
    iget p1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr p2, v0

    if-lt p1, p2, :cond_2

    .line 2543
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Point;->y:I

    :cond_2
    :goto_1
    return-void
.end method

.method private overScrollUp(II)V
    .locals 2

    .line 2508
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mY:I

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_1

    .line 2511
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastFloatLoc:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    neg-int p1, v1

    int-to-float p1, p1

    .line 2516
    :goto_0
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastFloatLoc:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    float-to-int p1, p1

    sub-int/2addr p0, p1

    iput p0, p2, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 2518
    :cond_1
    iget p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    .line 2519
    iget p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v0, p1

    sub-int p1, p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x42700000    # 60.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getOffset(IFF)I

    move-result p1

    .line 2520
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 2521
    iget p1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingTop()I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    if-gt p1, p2, :cond_2

    .line 2522
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingTop()I

    move-result p2

    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Point;->y:I

    :cond_2
    :goto_1
    return-void
.end method

.method private printPosData()V
    .locals 2

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSrcPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFirstExpPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSecondExpPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mobeta"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static rotate(IIII)I
    .locals 1

    sub-int v0, p3, p2

    add-int/2addr p0, p1

    if-ge p0, p2, :cond_0

    add-int/2addr p0, v0

    goto :goto_0

    :cond_0
    if-lt p0, p3, :cond_1

    sub-int/2addr p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    .line 1720
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastX:I

    .line 1721
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastY:I

    .line 1723
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mX:I

    .line 1724
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mY:I

    if-nez v0, :cond_1

    .line 1726
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mX:I

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastX:I

    .line 1727
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mY:I

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastY:I

    .line 1729
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mOffsetX:I

    .line 1730
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mY:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mOffsetY:I

    return-void
.end method

.method private updateFloatView()V
    .locals 7

    .line 2439
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewManager:Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2440
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mX:I

    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2441
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewManager:Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2444
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 2445
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 2448
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingLeft()I

    move-result v2

    .line 2449
    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    if-le v0, v2, :cond_1

    .line 2450
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v2, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 2451
    :cond_1
    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    if-ge v0, v2, :cond_2

    .line 2452
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 2456
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 2457
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v2

    .line 2458
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2459
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2463
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingTop()I

    move-result v5

    if-ge v3, v0, :cond_3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    .line 2465
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2467
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4

    .line 2468
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    if-gt v3, v0, :cond_4

    sub-int/2addr v0, v3

    .line 2469
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2474
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    .line 2475
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    if-lt v4, v6, :cond_5

    .line 2476
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2478
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2481
    :cond_5
    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_6

    .line 2482
    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v2, :cond_6

    sub-int/2addr v2, v3

    .line 2483
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2486
    :cond_6
    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v0, v2

    .line 2487
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v5, v2

    if-ge v1, v5, :cond_8

    .line 2489
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mOverScrollEnable:Z

    if-eqz v0, :cond_7

    if-nez v3, :cond_7

    .line 2490
    invoke-direct {p0, v1, v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->overScrollUp(II)V

    goto :goto_1

    .line 2492
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_8
    if-le v1, v0, :cond_a

    .line 2496
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v4, v2, :cond_9

    iget-boolean v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mOverScrollEnable:Z

    if-eqz v2, :cond_9

    .line 2497
    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->overScrollDown(II)V

    goto :goto_1

    .line 2499
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 2502
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastFloatLoc:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2504
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewMid:I

    return-void
.end method

.method private updatePositions()Z
    .locals 14

    .line 1009
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFromPosition:I

    .line 1010
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1011
    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    sub-int v2, v1, v0

    .line 1012
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1015
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    sub-int v0, v1, v0

    .line 1016
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1018
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1020
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1022
    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v3

    .line 1025
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 1031
    iget v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v5, v3, :cond_4

    :goto_0
    if-ltz v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 1036
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getItemHeight(I)I

    move-result v2

    if-nez v1, :cond_1

    sub-int/2addr v0, v4

    sub-int/2addr v0, v2

    goto :goto_2

    :cond_1
    add-int/2addr v2, v4

    sub-int/2addr v0, v2

    .line 1044
    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v2

    .line 1047
    iget v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewMid:I

    if-lt v5, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2

    .line 1056
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCount()I

    move-result v5

    :goto_1
    if-ge v1, v5, :cond_3

    add-int/lit8 v6, v5, -0x1

    if-ne v1, v6, :cond_5

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    goto :goto_2

    :cond_5
    add-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 1064
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->getItemHeight(I)I

    move-result v6

    .line 1065
    invoke-direct {p0, v2, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v7

    .line 1069
    iget v8, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v8, v7, :cond_6

    move v0, v7

    goto :goto_2

    :cond_6
    move v1, v2

    move v2, v6

    move v3, v7

    goto :goto_1

    .line 1078
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    .line 1079
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    const/4 v5, 0x0

    .line 1083
    iget v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    .line 1084
    iget v7, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    .line 1085
    iget v8, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSlideFrac:F

    .line 1087
    iget-boolean v9, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mAnimate:Z

    if-eqz v9, :cond_a

    sub-int v9, v0, v3

    .line 1088
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 1091
    iget v10, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v10, v0, :cond_7

    move v13, v3

    move v3, v0

    move v0, v13

    .line 1100
    :cond_7
    iget v10, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSlideRegionFrac:F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    int-to-float v9, v9

    mul-float/2addr v10, v9

    float-to-int v9, v10

    int-to-float v10, v9

    add-int/2addr v0, v9

    sub-int v9, v3, v9

    .line 1106
    iget v12, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v12, v0, :cond_8

    add-int/lit8 v3, v1, -0x1

    .line 1107
    iput v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    .line 1108
    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    sub-int/2addr v0, v12

    int-to-float v0, v0

    mul-float/2addr v0, v11

    div-float/2addr v0, v10

    .line 1109
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSlideFrac:F

    goto :goto_3

    :cond_8
    if-ge v12, v9, :cond_9

    .line 1113
    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    .line 1114
    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    goto :goto_3

    .line 1116
    :cond_9
    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    add-int/lit8 v0, v1, 0x1

    .line 1117
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    const/high16 v0, 0x3f800000    # 1.0f

    sub-int/2addr v3, v12

    int-to-float v3, v3

    div-float/2addr v3, v10

    add-float/2addr v3, v0

    mul-float/2addr v3, v11

    .line 1118
    iput v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSlideFrac:F

    goto :goto_3

    .line 1125
    :cond_a
    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    .line 1126
    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    .line 1130
    :goto_3
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_b

    .line 1132
    iput v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    .line 1133
    iput v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    move v1, v2

    goto :goto_4

    .line 1134
    :cond_b
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v4

    if-lt v0, v9, :cond_c

    .line 1135
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/lit8 v1, v0, -0x1

    .line 1136
    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    .line 1137
    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    .line 1140
    :cond_c
    :goto_4
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v0, v6, :cond_d

    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v0, v7, :cond_d

    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSlideFrac:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_e

    :cond_d
    move v5, v3

    .line 1145
    :cond_e
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatPos:I

    if-eq v1, v0, :cond_10

    .line 1146
    iget-object v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragListener:Lcom/android/settings/wifi/dslv/DragSortListView$DragListener;

    if-eqz v4, :cond_f

    sub-int/2addr v0, v2

    sub-int v2, v1, v2

    .line 1147
    invoke-interface {v4, v0, v2}, Lcom/android/settings/wifi/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1150
    :cond_f
    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatPos:I

    goto :goto_5

    :cond_10
    move v3, v5

    :goto_5
    return v3
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .line 1509
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1510
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragScroller:Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1511
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->destroyFloatView()V

    .line 1512
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->clearPositions()V

    .line 1513
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->adjustAllItems()V

    .line 1515
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 1516
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1518
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    .line 1520
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mOnCancelDragListener:Lcom/android/settings/wifi/dslv/DragSortListView$OnCancelDragListener;

    if-eqz p0, :cond_1

    .line 1521
    invoke-interface {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$OnCancelDragListener;->onCancelDrag()V

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 823
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 825
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 827
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_0

    .line 828
    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 830
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_1

    .line 831
    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 837
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 838
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 840
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 842
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getWidth()I

    move-result v3

    if-gez v2, :cond_2

    neg-int v2, v2

    :cond_2
    if-ge v2, v3, :cond_3

    sub-int v2, v3, v2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    .line 853
    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCurrFloatAlpha:F

    mul-float/2addr v4, v3

    mul-float/2addr v4, v2

    float-to-int v10, v4

    .line 855
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 857
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewManager:Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;

    .line 858
    invoke-interface {v4}, Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 857
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 859
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v0

    int-to-float v9, v1

    const/16 v11, 0x1f

    move-object v5, p1

    .line 862
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 863
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 864
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 865
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getDragState()I
    .locals 0

    .line 601
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    return p0
.end method

.method public getFloatAlpha()F
    .locals 0

    .line 614
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCurrFloatAlpha:F

    return p0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 669
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mAdapterWrapper:Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public isDragEnabled()Z
    .locals 0

    .line 2648
    iget-boolean p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragEnabled:Z

    return p0
.end method

.method protected layoutChildren()V
    .locals 4

    .line 2222
    invoke-super {p0}, Lcom/android/settings/wifi/dslv/SlideListView;->layoutChildren()V

    .line 2224
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2225
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 2229
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->measureFloatView()V

    .line 2231
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2232
    iput-boolean v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 0

    .line 1734
    iget-boolean p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mListViewIntercepted:Z

    return p0
.end method

.method public moveCheckState(II)V
    .locals 9

    .line 2783
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-ge p2, p1, :cond_0

    move v1, p1

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, p1

    move v1, p2

    :goto_0
    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 2792
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 2793
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2794
    invoke-static {v0, v2, v1, v4, v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v0

    const/4 v6, 0x0

    if-ne v0, v3, :cond_1

    .line 2795
    aget v7, v4, v6

    aget v8, v5, v6

    if-ne v7, v8, :cond_1

    return-void

    :cond_1
    if-ge p1, p2, :cond_2

    move p1, v6

    :goto_1
    if-eq p1, v0, :cond_3

    .line 2803
    aget p2, v4, p1

    const/4 v7, -0x1

    invoke-static {p2, v7, v2, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->rotate(IIII)I

    move-result p2

    invoke-virtual {p0, p2, v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2804
    aget p2, v5, p1

    invoke-static {p2, v7, v2, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->rotate(IIII)I

    move-result p2

    invoke-virtual {p0, p2, v6}, Lcom/android/settings/wifi/dslv/DragSortListView;->setItemChecked(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v6

    :goto_2
    if-eq p1, v0, :cond_3

    .line 2809
    aget p2, v4, p1

    invoke-virtual {p0, p2, v6}, Lcom/android/settings/wifi/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2810
    aget p2, v5, p1

    invoke-virtual {p0, p2, v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->setItemChecked(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public moveItem(II)V
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDropListener:Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    .line 1497
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1499
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDropListener:Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;

    invoke-interface {p0, p1, p2}, Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;->drop(II)V

    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2241
    :cond_0
    iget p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    if-ne p1, v1, :cond_1

    .line 2242
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->cancelDrag()V

    .line 2244
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2254
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 2248
    :cond_3
    iget p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x0

    .line 2249
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->stopDrag(Z)Z

    .line 2251
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->doActionUpOrCancel()V

    :goto_0
    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1159
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1161
    iget-boolean p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz p1, :cond_0

    .line 1162
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragSortTracker:Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->appendState()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1741
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_0

    .line 1742
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1745
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    .line 1746
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1748
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_2

    .line 1751
    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    if-eqz v2, :cond_1

    .line 1753
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    return v0

    .line 1756
    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1762
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    move p1, v0

    goto :goto_1

    .line 1768
    :cond_3
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1769
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mListViewIntercepted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_0

    :catch_0
    :cond_4
    move p1, v4

    :goto_0
    if-eq v1, v0, :cond_6

    if-eq v1, v3, :cond_6

    if-eqz p1, :cond_5

    .line 1782
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    .line 1784
    iput v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1778
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->doActionUpOrCancel()V

    :goto_1
    if-eq v1, v0, :cond_7

    if-ne v1, v3, :cond_8

    .line 1790
    :cond_7
    iput-boolean v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mInTouchEvent:Z

    :cond_8
    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 2209
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dslv/SlideListView;->onMeasure(II)V

    .line 2211
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 2212
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2213
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->measureFloatView()V

    :cond_0
    const/4 p2, 0x1

    .line 2215
    iput-boolean p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2217
    :cond_1
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mWidthMeasureSpec:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1896
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/dslv/SlideListView;->onSizeChanged(IIII)V

    .line 1897
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->updateScrollStarts()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1656
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1657
    iput-boolean v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    return v1

    .line 1661
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_1

    .line 1662
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1667
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1668
    iput-boolean v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastCallWasIntercept:Z

    if-nez v0, :cond_2

    .line 1671
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1675
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    .line 1676
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    move v1, v3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 1684
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v3

    .line 1689
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eq p1, v3, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    if-eqz v1, :cond_6

    .line 1698
    iput v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1694
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->doActionUpOrCancel()V

    :cond_6
    :goto_0
    return v1
.end method

.method public removeCheckState(I)V
    .locals 10

    .line 2829
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2831
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2833
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 2834
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 2836
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    add-int/2addr v3, v4

    .line 2837
    invoke-static {v0, p1, v3, v1, v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-eq v6, v0, :cond_3

    .line 2839
    aget v7, v1, v6

    const/4 v8, -0x1

    if-eq v7, p1, :cond_2

    aget v7, v2, v6

    aget v9, v1, v6

    if-ge v7, v9, :cond_1

    aget v7, v2, v6

    if-gt v7, p1, :cond_2

    .line 2843
    :cond_1
    aget v7, v1, v6

    invoke-static {v7, v8, p1, v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v4}, Lcom/android/settings/wifi/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2845
    :cond_2
    aget v7, v2, v6

    invoke-static {v7, v8, p1, v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->setItemChecked(IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1438
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mUseRemoveVelocity:Z

    const/4 v0, 0x0

    .line 1439
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->removeItem(IF)V

    return-void
.end method

.method public removeItem(IF)V
    .locals 3

    .line 1450
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_6

    .line 1452
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    if-nez v0, :cond_1

    .line 1454
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    .line 1455
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    .line 1456
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    .line 1457
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatPos:I

    .line 1458
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1460
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    .line 1464
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    .line 1465
    iput p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1467
    iget-boolean p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz p2, :cond_4

    .line 1468
    iget p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCancelMethod:I

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 1473
    :cond_2
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p2}, Lcom/android/settings/wifi/dslv/SlideListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1470
    :cond_3
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p2}, Lcom/android/settings/wifi/dslv/SlideListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1478
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mRemoveAnimator:Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;

    if-eqz p2, :cond_5

    .line 1479
    invoke-virtual {p2}, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->start()V

    goto :goto_1

    .line 1481
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->doRemoveItem(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2132
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2133
    invoke-super {p0}, Lcom/android/settings/wifi/dslv/SlideListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 59
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 642
    new-instance v0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/android/settings/wifi/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mAdapterWrapper:Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;

    .line 643
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 645
    instance-of v0, p1, Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    .line 646
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->setDropListener(Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;)V

    .line 648
    :cond_0
    instance-of v0, p1, Lcom/android/settings/wifi/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    .line 649
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->setDragListener(Lcom/android/settings/wifi/dslv/DragSortListView$DragListener;)V

    .line 651
    :cond_1
    instance-of v0, p1, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_3

    .line 652
    check-cast p1, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->setRemoveListener(Lcom/android/settings/wifi/dslv/DragSortListView$RemoveListener;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 655
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mAdapterWrapper:Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;

    .line 658
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mAdapterWrapper:Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .line 2644
    iput-boolean p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragEnabled:Z

    return-void
.end method

.method public setDragListener(Lcom/android/settings/wifi/dslv/DragSortListView$DragListener;)V
    .locals 0

    .line 2630
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragListener:Lcom/android/settings/wifi/dslv/DragSortListView$DragListener;

    return-void
.end method

.method public setDragScrollProfile(Lcom/android/settings/wifi/dslv/DragSortListView$DragScrollProfile;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2726
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mScrollProfile:Lcom/android/settings/wifi/dslv/DragSortListView$DragScrollProfile;

    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0

    .line 1804
    invoke-virtual {p0, p1, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->setDragScrollStarts(FF)V

    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    .line 1818
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1820
    :cond_0
    iput p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    :goto_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    .line 1824
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1

    .line 1826
    :cond_1
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1829
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeight()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1830
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->updateScrollStarts()V

    :cond_2
    return-void
.end method

.method public setDragSortListener(Lcom/android/settings/wifi/dslv/DragSortListView$DragSortListener;)V
    .locals 0

    .line 2712
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->setDropListener(Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;)V

    .line 2713
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->setDragListener(Lcom/android/settings/wifi/dslv/DragSortListView$DragListener;)V

    .line 2714
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->setRemoveListener(Lcom/android/settings/wifi/dslv/DragSortListView$RemoveListener;)V

    return-void
.end method

.method public setDropListener(Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;)V
    .locals 0

    .line 2664
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDropListener:Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;

    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    .line 610
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCurrFloatAlpha:F

    return-void
.end method

.method public setFloatViewManager(Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;)V
    .locals 0

    .line 2626
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewManager:Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;

    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    .line 624
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mMaxScrollSpeed:F

    return-void
.end method

.method public setOnCancelDragListener(Lcom/android/settings/wifi/dslv/DragSortListView$OnCancelDragListener;)V
    .locals 0

    .line 3273
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mOnCancelDragListener:Lcom/android/settings/wifi/dslv/DragSortListView$OnCancelDragListener;

    return-void
.end method

.method public setRelateListView(Landroid/widget/ListView;)V
    .locals 0

    .line 3256
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mRelateListView:Landroid/widget/ListView;

    return-void
.end method

.method public setRemoveListener(Lcom/android/settings/wifi/dslv/DragSortListView$RemoveListener;)V
    .locals 0

    .line 2678
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mRemoveListener:Lcom/android/settings/wifi/dslv/DragSortListView$RemoveListener;

    return-void
.end method

.method public setScrollEnable(Z)V
    .locals 0

    .line 628
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragSortController:Lcom/android/settings/wifi/dslv/DragSortController;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortController;->setScrollEnabled(Z)V

    return-void
.end method

.method public startDrag(IIII)Z
    .locals 8

    .line 2290
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mInTouchEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatViewManager:Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2294
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 2299
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/wifi/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 3

    .line 2326
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v0, :cond_9

    if-eqz p2, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2331
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2332
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2335
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 2336
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFirstExpPos:I

    .line 2337
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSecondExpPos:I

    .line 2338
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    .line 2339
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatPos:I

    const/4 p1, 0x4

    .line 2342
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragState:I

    .line 2343
    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragFlags:I

    .line 2344
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr p3, v0

    iput p3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragFlags:I

    .line 2346
    iput-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2347
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->measureFloatView()V

    .line 2349
    iput p4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDeltaX:I

    .line 2350
    iput p5, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDeltaY:I

    .line 2351
    iget p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mY:I

    iput p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragStartY:I

    .line 2354
    iget-object p3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget p4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mX:I

    iget p5, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr p4, p5

    iput p4, p3, Landroid/graphics/Point;->x:I

    .line 2355
    iget p4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr p2, p4

    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 2356
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLastFloatLoc:Landroid/graphics/Point;

    .line 2358
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingLeft()I

    move-result p2

    .line 2359
    iget p3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragFlags:I

    and-int/2addr p3, v2

    const/4 p4, 0x2

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    if-le p3, p2, :cond_2

    .line 2360
    iget-object p3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput p2, p3, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 2361
    :cond_2
    iget p3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragFlags:I

    and-int/2addr p3, p4

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    if-ge p3, p2, :cond_3

    .line 2362
    iget-object p3, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput p2, p3, Landroid/graphics/Point;->x:I

    .line 2366
    :cond_3
    :goto_0
    iget p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 2369
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2372
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz p1, :cond_5

    .line 2373
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragSortTracker:Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2378
    :cond_5
    iget p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCancelMethod:I

    if-eq p1, v2, :cond_7

    if-eq p1, p4, :cond_6

    goto :goto_1

    .line 2383
    :cond_6
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2380
    :cond_7
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Lcom/android/settings/wifi/dslv/SlideListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2387
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->requestLayout()V

    .line 2389
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mLiftAnimator:Lcom/android/settings/wifi/dslv/DragSortListView$LiftAnimator;

    if-eqz p0, :cond_8

    .line 2390
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$LiftAnimator;->start()V

    :cond_8
    return v2

    :cond_9
    :goto_2
    return v1
.end method

.method public stopDrag(Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 1619
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mUseRemoveVelocity:Z

    const/4 v0, 0x0

    .line 1620
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result p0

    return p0
.end method

.method public stopDrag(ZF)Z
    .locals 2

    .line 1630
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1631
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragScroller:Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    if-eqz p1, :cond_0

    .line 1634
    iget p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/dslv/DragSortListView;->removeItem(IF)V

    goto :goto_0

    .line 1636
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDropAnimator:Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;

    if-eqz p1, :cond_1

    .line 1637
    invoke-virtual {p1}, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1639
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->dropFloatView()V

    .line 1643
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz p1, :cond_2

    .line 1644
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragSortTracker:Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1

    const/4 v0, 0x1

    .line 1625
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1626
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result p0

    return p0
.end method

.method protected updateScrollStarts()V
    .locals 6

    .line 1880
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 1881
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    int-to-float v3, v0

    .line 1884
    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    iput v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 1885
    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    iput v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 1887
    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mUpScrollStartYF:F

    float-to-int v4, v2

    iput v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mUpScrollStartY:I

    .line 1888
    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v5, v4

    iput v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDownScrollStartY:I

    sub-float/2addr v2, v3

    .line 1890
    iput v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragUpScrollHeight:F

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    .line 1891
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView;->mDragDownScrollHeight:F

    return-void
.end method
