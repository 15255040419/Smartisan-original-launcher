.class public Lcom/android/settings/widget/DragGridView;
.super Landroid/widget/GridView;
.source "DragGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/DragGridView$GridViewDragListener;
    }
.end annotation


# static fields
.field private static final speed:I = 0x14


# instance fields
.field private MAX_VELOCITY:F

.field private dragResponseMS:J

.field private isDrag:Z

.field private mAnimationEnd:Z

.field private mColumnWidth:I

.field private mDownScrollBorder:I

.field private mDownX:I

.field private mDownY:I

.field private mDragAdapter:Lcom/android/settings/widget/DragGridBaseAdapter;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragImageView:Landroid/widget/ImageView;

.field private mDragPosition:I

.field mDx:I

.field mDy:I

.field private mGridViewDragListener:Lcom/android/settings/widget/DragGridView$GridViewDragListener;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalSpacing:I

.field private mIsActionDown:Z

.field private mIsSqueezeModeEnabled:Z

.field mLastX:I

.field mLastY:I

.field private mLongClickRunnable:Ljava/lang/Runnable;

.field private mNumColumns:I

.field private mNumColumnsSet:Z

.field private mOffset2Left:I

.field private mOffset2Top:I

.field private mPoint2ItemLeft:I

.field private mPoint2ItemTop:I

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mStartDragItemView:Landroid/view/View;

.field private mStatusHeight:I

.field private mUpScrollBorder:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private moveX:I

.field private moveY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, 0x7d0

    .line 33
    iput-wide p2, p0, Lcom/android/settings/widget/DragGridView;->dragResponseMS:J

    const/high16 p2, 0x43960000    # 300.0f

    .line 34
    iput p2, p0, Lcom/android/settings/widget/DragGridView;->MAX_VELOCITY:F

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/android/settings/widget/DragGridView;->isDrag:Z

    .line 37
    iput-boolean p2, p0, Lcom/android/settings/widget/DragGridView;->mIsSqueezeModeEnabled:Z

    const/4 p3, 0x0

    .line 46
    iput-object p3, p0, Lcom/android/settings/widget/DragGridView;->mStartDragItemView:Landroid/view/View;

    const/4 p3, 0x1

    .line 74
    iput-boolean p3, p0, Lcom/android/settings/widget/DragGridView;->mAnimationEnd:Z

    .line 104
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/android/settings/widget/DragGridView;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance p3, Lcom/android/settings/widget/DragGridView$1;

    invoke-direct {p3, p0}, Lcom/android/settings/widget/DragGridView$1;-><init>(Lcom/android/settings/widget/DragGridView;)V

    iput-object p3, p0, Lcom/android/settings/widget/DragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    .line 272
    iput-boolean p2, p0, Lcom/android/settings/widget/DragGridView;->mIsActionDown:Z

    .line 355
    new-instance p2, Lcom/android/settings/widget/DragGridView$2;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/DragGridView$2;-><init>(Lcom/android/settings/widget/DragGridView;)V

    iput-object p2, p0, Lcom/android/settings/widget/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    const-string p2, "vibrator"

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    iput-object p2, p0, Lcom/android/settings/widget/DragGridView;->mVibrator:Landroid/os/Vibrator;

    const-string p2, "window"

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/settings/widget/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    .line 96
    invoke-static {p1}, Lcom/android/settings/widget/DragGridView;->getStatusHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/DragGridView;->mStatusHeight:I

    .line 98
    iget-boolean p1, p0, Lcom/android/settings/widget/DragGridView;->mNumColumnsSet:Z

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 99
    iput p1, p0, Lcom/android/settings/widget/DragGridView;->mNumColumns:I

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/widget/DragGridView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/settings/widget/DragGridView;->isDrag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/widget/DragGridView;)Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/DragGridView;->mStartDragItemView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/widget/DragGridView;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/DragGridView;->animateReorder(II)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/settings/widget/DragGridView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/settings/widget/DragGridView;->mAnimationEnd:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/widget/DragGridView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/settings/widget/DragGridView;->mIsActionDown:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/settings/widget/DragGridView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/widget/DragGridView;->onStopDrag()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/DragGridView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/widget/DragGridView;->calculateDxDy()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/widget/DragGridView;)Lcom/android/settings/widget/DragGridView$GridViewDragListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/DragGridView;->mGridViewDragListener:Lcom/android/settings/widget/DragGridView$GridViewDragListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/DragGridView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/widget/DragGridView;->mDragPosition:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/settings/widget/DragGridView;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/settings/widget/DragGridView;->mDragPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/widget/DragGridView;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/widget/DragGridView;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/DragGridView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/widget/DragGridView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/widget/DragGridView;->moveY:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/widget/DragGridView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/widget/DragGridView;->mUpScrollBorder:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/settings/widget/DragGridView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/widget/DragGridView;->mDownScrollBorder:I

    return p0
.end method

.method private animateReorder(II)V
    .locals 9

    const/4 v0, 0x1

    if-le p2, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 414
    :goto_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    if-eqz v1, :cond_2

    :goto_1
    if-ge p1, p2, :cond_4

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/widget/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int/lit8 p1, p1, 0x1

    .line 419
    iget v1, p0, Lcom/android/settings/widget/DragGridView;->mNumColumns:I

    rem-int v1, p1, v1

    if-nez v1, :cond_1

    .line 421
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    iget v3, p0, Lcom/android/settings/widget/DragGridView;->mNumColumns:I

    sub-int/2addr v3, v0

    mul-int/2addr v1, v3

    int-to-float v5, v1

    const/4 v6, 0x0

    .line 422
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v7, v1

    const/4 v8, 0x0

    move-object v3, p0

    .line 420
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/widget/DragGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 425
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 424
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/widget/DragGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    if-le p1, p2, :cond_4

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/widget/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 431
    iget v1, p0, Lcom/android/settings/widget/DragGridView;->mNumColumns:I

    add-int v3, p1, v1

    rem-int/2addr v3, v1

    if-nez v3, :cond_3

    .line 433
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/android/settings/widget/DragGridView;->mNumColumns:I

    sub-int/2addr v3, v0

    mul-int/2addr v1, v3

    int-to-float v5, v1

    const/4 v6, 0x0

    .line 434
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v7, v1

    const/4 v8, 0x0

    move-object v3, p0

    .line 432
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/widget/DragGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 437
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 436
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/widget/DragGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 442
    :cond_4
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 443
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x190

    .line 444
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 445
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 446
    new-instance p2, Lcom/android/settings/widget/DragGridView$4;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/DragGridView$4;-><init>(Lcom/android/settings/widget/DragGridView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 460
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private calculateDxDy()V
    .locals 3

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/android/settings/widget/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/DragGridView;->mLastX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/widget/DragGridView;->mDx:I

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/DragGridView;->mLastY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->mDy:I

    return-void
.end method

.method private createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;
    .locals 2

    const/4 p0, 0x2

    new-array v0, p0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string p3, "translationX"

    .line 402
    invoke-static {p1, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-array v0, p0, [F

    aput p4, v0, v1

    aput p5, v0, p2

    const-string p4, "translationY"

    .line 404
    invoke-static {p1, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 406
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p0, p0, [Landroid/animation/Animator;

    aput-object p3, p0, v1

    aput-object p1, p0, p2

    .line 407
    invoke-virtual {p4, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p4
.end method

.method private static getStatusHeight(Landroid/content/Context;)I
    .locals 4

    .line 478
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 479
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 480
    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    .line 484
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 485
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "status_bar_height"

    .line 486
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 487
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 489
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private isTouchInItem(Landroid/view/View;II)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 258
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p2, v0, :cond_3

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-le p2, v0, :cond_1

    goto :goto_0

    :cond_1
    if-lt p3, v1, :cond_3

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    if-le p3, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :cond_3
    :goto_0
    return p0
.end method

.method private onDragItem(II)V
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/android/settings/widget/DragGridView;->mIsSqueezeModeEnabled:Z

    if-eqz v0, :cond_0

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/DragGridView;->onSwapItem(II)V

    :cond_0
    return-void
.end method

.method private onStopDrag()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView;->mGridViewDragListener:Lcom/android/settings/widget/DragGridView$GridViewDragListener;

    if-eqz v0, :cond_0

    .line 465
    iget-object p0, p0, Lcom/android/settings/widget/DragGridView;->mDragAdapter:Lcom/android/settings/widget/DragGridBaseAdapter;

    invoke-interface {p0}, Lcom/android/settings/widget/DragGridBaseAdapter;->getHidePosition()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/settings/widget/DragGridView$GridViewDragListener;->onDragEnd(I)V

    goto :goto_0

    .line 467
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/DragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/android/settings/widget/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 469
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/DragGridView;->mDragAdapter:Lcom/android/settings/widget/DragGridBaseAdapter;

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/android/settings/widget/DragGridBaseAdapter;->setHideItem(I)V

    :goto_0
    return-void
.end method

.method private onSwapItem(II)V
    .locals 1

    .line 379
    iget v0, p0, Lcom/android/settings/widget/DragGridView;->mDx:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/settings/widget/DragGridView;->mDy:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/DragGridView;->pointToPosition(II)I

    move-result p1

    .line 381
    iget p2, p0, Lcom/android/settings/widget/DragGridView;->mDragPosition:I

    if-eq p1, p2, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/DragGridView;->mAnimationEnd:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView;->mDragAdapter:Lcom/android/settings/widget/DragGridBaseAdapter;

    invoke-interface {v0, p2, p1}, Lcom/android/settings/widget/DragGridBaseAdapter;->reorderItems(II)V

    .line 383
    iget-object p2, p0, Lcom/android/settings/widget/DragGridView;->mDragAdapter:Lcom/android/settings/widget/DragGridBaseAdapter;

    invoke-interface {p2, p1}, Lcom/android/settings/widget/DragGridBaseAdapter;->setHideItem(I)V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/widget/DragGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    .line 386
    new-instance v0, Lcom/android/settings/widget/DragGridView$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/widget/DragGridView$3;-><init>(Lcom/android/settings/widget/DragGridView;Landroid/view/ViewTreeObserver;I)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 236
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings/widget/DragGridView;->mLastX:I

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings/widget/DragGridView;->mLastY:I

    .line 241
    iget-object v2, p0, Lcom/android/settings/widget/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/widget/DragGridView;->isTouchInItem(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/DragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/DragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 203
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->mDownX:I

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->mDownY:I

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->mLastX:I

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->mLastY:I

    .line 208
    iget v0, p0, Lcom/android/settings/widget/DragGridView;->mDownX:I

    iget v2, p0, Lcom/android/settings/widget/DragGridView;->mDownY:I

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/widget/DragGridView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->mDragPosition:I

    .line 211
    iget v0, p0, Lcom/android/settings/widget/DragGridView;->mDragPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 212
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/widget/DragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/android/settings/widget/DragGridView;->dragResponseMS:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    iget v0, p0, Lcom/android/settings/widget/DragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/android/settings/widget/DragGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/DragGridView;->mStartDragItemView:Landroid/view/View;

    .line 219
    iget v0, p0, Lcom/android/settings/widget/DragGridView;->mDownY:I

    iget-object v2, p0, Lcom/android/settings/widget/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->mPoint2ItemTop:I

    .line 220
    iget v0, p0, Lcom/android/settings/widget/DragGridView;->mDownX:I

    iget-object v2, p0, Lcom/android/settings/widget/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->mPoint2ItemLeft:I

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/android/settings/widget/DragGridView;->mDownY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->mOffset2Top:I

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/android/settings/widget/DragGridView;->mDownX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->mOffset2Left:I

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/widget/DragGridView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->mDownScrollBorder:I

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/widget/DragGridView;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->mUpScrollBorder:I

    .line 229
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/DragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 231
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 251
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 166
    iget v0, p0, Lcom/android/settings/widget/DragGridView;->mNumColumns:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 168
    iget v0, p0, Lcom/android/settings/widget/DragGridView;->mColumnWidth:I

    if-lez v0, :cond_1

    .line 169
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/DragGridView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/widget/DragGridView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 171
    iget v1, p0, Lcom/android/settings/widget/DragGridView;->mColumnWidth:I

    div-int v1, v0, v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    :goto_0
    if-eq v1, v2, :cond_2

    .line 174
    iget v3, p0, Lcom/android/settings/widget/DragGridView;->mColumnWidth:I

    mul-int/2addr v3, v1

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/android/settings/widget/DragGridView;->mHorizontalSpacing:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    if-le v3, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 187
    :cond_2
    :goto_1
    iput v1, p0, Lcom/android/settings/widget/DragGridView;->mNumColumns:I

    .line 190
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/DragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 280
    iget-boolean v0, p0, Lcom/android/settings/widget/DragGridView;->isDrag:Z

    if-eqz v0, :cond_7

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->moveX:I

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/DragGridView;->moveY:I

    .line 288
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 290
    iget-object v2, p0, Lcom/android/settings/widget/DragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 291
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/android/settings/widget/DragGridView;->MAX_VELOCITY:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/android/settings/widget/DragGridView;->MAX_VELOCITY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 292
    iget v0, p0, Lcom/android/settings/widget/DragGridView;->moveX:I

    iget v2, p0, Lcom/android/settings/widget/DragGridView;->moveY:I

    invoke-direct {p0, v0, v2}, Lcom/android/settings/widget/DragGridView;->onDragItem(II)V

    .line 295
    :cond_2
    iget-object p0, p0, Lcom/android/settings/widget/DragGridView;->mGridViewDragListener:Lcom/android/settings/widget/DragGridView$GridViewDragListener;

    if-eqz p0, :cond_6

    .line 296
    invoke-interface {p0, p1}, Lcom/android/settings/widget/DragGridView$GridViewDragListener;->onDraging(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lcom/android/settings/widget/DragGridView;->mIsActionDown:Z

    .line 302
    iget-object v2, p0, Lcom/android/settings/widget/DragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_4

    .line 303
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    .line 304
    iput-object v2, p0, Lcom/android/settings/widget/DragGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 306
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings/widget/DragGridView;->moveX:I

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/widget/DragGridView;->moveY:I

    .line 308
    iget p1, p0, Lcom/android/settings/widget/DragGridView;->moveX:I

    iget v2, p0, Lcom/android/settings/widget/DragGridView;->moveY:I

    invoke-direct {p0, p1, v2}, Lcom/android/settings/widget/DragGridView;->onDragItem(II)V

    .line 309
    invoke-direct {p0}, Lcom/android/settings/widget/DragGridView;->onStopDrag()V

    .line 310
    iput-boolean v0, p0, Lcom/android/settings/widget/DragGridView;->isDrag:Z

    goto :goto_0

    .line 283
    :cond_5
    iput-boolean v1, p0, Lcom/android/settings/widget/DragGridView;->mIsActionDown:Z

    :cond_6
    :goto_0
    return v1

    .line 315
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 32
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    instance-of v0, p1, Lcom/android/settings/widget/DragGridBaseAdapter;

    if-eqz v0, :cond_0

    .line 136
    check-cast p1, Lcom/android/settings/widget/DragGridBaseAdapter;

    iput-object p1, p0, Lcom/android/settings/widget/DragGridView;->mDragAdapter:Lcom/android/settings/widget/DragGridBaseAdapter;

    return-void

    .line 138
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "the adapter must be implements DragGridAdapter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setColumnWidth(I)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 154
    iput p1, p0, Lcom/android/settings/widget/DragGridView;->mColumnWidth:I

    return-void
.end method

.method public setDragResponseMS(J)V
    .locals 0

    .line 194
    iput-wide p1, p0, Lcom/android/settings/widget/DragGridView;->dragResponseMS:J

    return-void
.end method

.method public setGridViewDragListener(Lcom/android/settings/widget/DragGridView$GridViewDragListener;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/android/settings/widget/DragGridView;->mGridViewDragListener:Lcom/android/settings/widget/DragGridView$GridViewDragListener;

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 161
    iput p1, p0, Lcom/android/settings/widget/DragGridView;->mHorizontalSpacing:I

    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/android/settings/widget/DragGridView;->mNumColumnsSet:Z

    .line 147
    iput p1, p0, Lcom/android/settings/widget/DragGridView;->mNumColumns:I

    return-void
.end method
