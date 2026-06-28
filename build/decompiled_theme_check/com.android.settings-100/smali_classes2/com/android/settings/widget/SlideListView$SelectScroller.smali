.class final Lcom/android/settings/widget/SlideListView$SelectScroller;
.super Ljava/lang/Object;
.source "SlideListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SlideListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x2

.field public static final UP:I = 0x1


# instance fields
.field private mAbort:Z

.field private mCurrTime:J

.field private mPrevTime:J

.field private mScrollDir:I

.field private mScrollSpeed:F

.field private mScrolling:Z

.field final synthetic this$0:Lcom/android/settings/widget/SlideListView;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/SlideListView;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 405
    iput-boolean p1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mScrolling:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SlideListView;Lcom/android/settings/widget/SlideListView$1;)V
    .locals 0

    .line 401
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SlideListView$SelectScroller;-><init>(Lcom/android/settings/widget/SlideListView;)V

    return-void
.end method

.method private performSelectAction()V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-static {v0}, Lcom/android/settings/widget/SlideListView;->access$100(Lcom/android/settings/widget/SlideListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v1}, Lcom/android/settings/widget/SlideListView;->getListPaddingTop()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 484
    iget-object p0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/widget/SlideListView;->access$400(Lcom/android/settings/widget/SlideListView;I)V

    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-static {v0}, Lcom/android/settings/widget/SlideListView;->access$100(Lcom/android/settings/widget/SlideListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v1}, Lcom/android/settings/widget/SlideListView;->getListHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v2}, Lcom/android/settings/widget/SlideListView;->getListPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 487
    iget-object p0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {p0}, Lcom/android/settings/widget/SlideListView;->getLastVisiblePosition()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/widget/SlideListView;->access$400(Lcom/android/settings/widget/SlideListView;I)V

    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-static {v0}, Lcom/android/settings/widget/SlideListView;->access$100(Lcom/android/settings/widget/SlideListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-static {v2}, Lcom/android/settings/widget/SlideListView;->access$100(Lcom/android/settings/widget/SlideListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SlideListView;->pointToPosition(II)I

    move-result v0

    .line 491
    iget-object v1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v1}, Lcom/android/settings/widget/SlideListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SlideListView;->getListChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 493
    iget-object v2, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-static {v2}, Lcom/android/settings/widget/SlideListView;->access$500(Lcom/android/settings/widget/SlideListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 495
    iget-object p0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-static {p0, v0}, Lcom/android/settings/widget/SlideListView;->access$400(Lcom/android/settings/widget/SlideListView;I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public isScrolling()Z
    .locals 0

    .line 430
    iget-boolean p0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mScrolling:Z

    return p0
.end method

.method public run()V
    .locals 9

    .line 435
    iget-boolean v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mAbort:Z

    if-eqz v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v0}, Lcom/android/settings/widget/SlideListView;->getFirstVisiblePosition()I

    move-result v0

    .line 440
    iget-object v1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v1}, Lcom/android/settings/widget/SlideListView;->getLastVisiblePosition()I

    move-result v1

    .line 441
    iget-object v2, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v2}, Lcom/android/settings/widget/SlideListView;->getCount()I

    move-result v2

    .line 442
    iget-object v3, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v3}, Lcom/android/settings/widget/SlideListView;->getListPaddingTop()I

    move-result v3

    .line 443
    iget-object v4, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v4}, Lcom/android/settings/widget/SlideListView;->getListHeight()I

    move-result v4

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v5}, Lcom/android/settings/widget/SlideListView;->getListPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 445
    invoke-direct {p0}, Lcom/android/settings/widget/SlideListView$SelectScroller;->performSelectAction()V

    .line 447
    iget v5, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mScrollDir:I

    const v6, 0x3c23d70a    # 0.01f

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v7, :cond_4

    .line 448
    iget-object v1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v1, v8}, Lcom/android/settings/widget/SlideListView;->getListChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    .line 449
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-static {v0}, Lcom/android/settings/widget/SlideListView;->access$100(Lcom/android/settings/widget/SlideListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge v0, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-static {v0}, Lcom/android/settings/widget/SlideListView;->access$100(Lcom/android/settings/widget/SlideListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->y:I

    :goto_0
    int-to-float v0, v3

    .line 455
    iget-object v1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-static {v1}, Lcom/android/settings/widget/SlideListView;->access$200(Lcom/android/settings/widget/SlideListView;)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mScrollSpeed:F

    goto :goto_3

    .line 450
    :cond_3
    :goto_1
    iput-boolean v8, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mScrolling:Z

    return-void

    .line 457
    :cond_4
    iget-object v5, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    sub-int v0, v1, v0

    invoke-virtual {v5, v0}, Lcom/android/settings/widget/SlideListView;->getListChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    sub-int/2addr v2, v7

    if-ne v1, v2, :cond_5

    .line 458
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v4, v3

    if-gt v0, v4, :cond_5

    goto :goto_4

    .line 463
    :cond_5
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v0}, Lcom/android/settings/widget/SlideListView;->getListHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v1}, Lcom/android/settings/widget/SlideListView;->getListPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 464
    iget-object v1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-static {v1}, Lcom/android/settings/widget/SlideListView;->access$100(Lcom/android/settings/widget/SlideListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-static {v0}, Lcom/android/settings/widget/SlideListView;->access$100(Lcom/android/settings/widget/SlideListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_2
    int-to-float v0, v0

    .line 465
    iget-object v1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-static {v1}, Lcom/android/settings/widget/SlideListView;->access$300(Lcom/android/settings/widget/SlideListView;)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mScrollSpeed:F

    .line 468
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mCurrTime:J

    .line 469
    iget-wide v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mPrevTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 470
    iget v1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mScrollSpeed:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 472
    iget-object v2, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    float-to-int v0, v0

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/widget/SlideListView;->smoothScrollBy(II)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v0}, Lcom/android/settings/widget/SlideListView;->invalidate()V

    .line 475
    iget-wide v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mPrevTime:J

    .line 476
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SlideListView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 459
    :cond_7
    :goto_4
    iput-boolean v8, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mScrolling:Z

    return-void
.end method

.method public startScroll(I)V
    .locals 2

    .line 415
    iget-boolean v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mScrolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mScrolling:Z

    const/4 v0, 0x0

    .line 417
    iput-boolean v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mAbort:Z

    .line 418
    iput p1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mScrollDir:I

    .line 419
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mPrevTime:J

    .line 420
    iget-object p1, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SlideListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->this$0:Lcom/android/settings/widget/SlideListView;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SlideListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 426
    iput-boolean v0, p0, Lcom/android/settings/widget/SlideListView$SelectScroller;->mScrolling:Z

    return-void
.end method
