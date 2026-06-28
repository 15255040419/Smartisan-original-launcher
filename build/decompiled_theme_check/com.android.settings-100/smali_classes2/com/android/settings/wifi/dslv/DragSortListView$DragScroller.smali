.class Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mFirstFooter:I

.field private mLastHeader:I

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/android/settings/wifi/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/dslv/DragSortListView;)V
    .locals 0

    .line 2986
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2973
    iput-boolean p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .line 2983
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->scrollDir:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public isScrolling()Z
    .locals 0

    .line 2979
    iget-boolean p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return p0
.end method

.method public run()V
    .locals 12

    .line 3014
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mAbort:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3015
    iput-boolean v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    .line 3021
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 3022
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    .line 3023
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->getCount()I

    move-result v3

    .line 3024
    iget-object v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingTop()I

    move-result v4

    .line 3025
    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    iget-object v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v6}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 3027
    iget-object v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v6}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$600(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v7}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2000(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v8}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$400(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 3028
    iget-object v7, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v7}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$600(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v8}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2000(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v9}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$400(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 3030
    iget v8, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->scrollDir:I

    const/4 v9, 0x1

    if-nez v8, :cond_3

    .line 3031
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v3, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3034
    iput-boolean v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 3037
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 3038
    iput-boolean v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    .line 3042
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2300(Lcom/android/settings/wifi/dslv/DragSortListView;)Lcom/android/settings/wifi/dslv/DragSortListView$DragScrollProfile;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v6}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2100(Lcom/android/settings/wifi/dslv/DragSortListView;)F

    move-result v6

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    .line 3043
    invoke-static {v7}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2200(Lcom/android/settings/wifi/dslv/DragSortListView;)F

    move-result v7

    div-float/2addr v6, v7

    iget-wide v7, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 3042
    invoke-interface {v3, v6, v7, v8}, Lcom/android/settings/wifi/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    goto :goto_0

    .line 3045
    :cond_3
    iget-object v7, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    sub-int v8, v2, v0

    invoke-virtual {v7, v8}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_4

    .line 3047
    iput-boolean v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    :cond_4
    sub-int/2addr v3, v9

    if-ne v2, v3, :cond_5

    .line 3050
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v7, v5, v4

    if-gt v3, v7, :cond_5

    .line 3051
    iput-boolean v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    .line 3055
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2300(Lcom/android/settings/wifi/dslv/DragSortListView;)Lcom/android/settings/wifi/dslv/DragSortListView$DragScrollProfile;

    move-result-object v3

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v7}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2400(Lcom/android/settings/wifi/dslv/DragSortListView;)F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    .line 3056
    invoke-static {v7}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2500(Lcom/android/settings/wifi/dslv/DragSortListView;)F

    move-result v7

    div-float/2addr v6, v7

    iget-wide v7, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 3055
    invoke-interface {v3, v6, v7, v8}, Lcom/android/settings/wifi/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    .line 3059
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mCurrTime:J

    .line 3060
    iget-wide v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mCurrTime:J

    iget-wide v10, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mPrevTime:J

    sub-long/2addr v6, v10

    long-to-float v3, v6

    iput v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->dt:F

    .line 3066
    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    iget v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->dt:F

    mul-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->dy:I

    .line 3069
    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->dy:I

    if-ltz v3, :cond_6

    .line 3070
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->dy:I

    move v2, v0

    goto :goto_1

    :cond_6
    neg-int v5, v5

    .line 3073
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->dy:I

    .line 3077
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    sub-int v0, v2, v0

    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3078
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->dy:I

    add-int/2addr v3, v5

    if-nez v2, :cond_7

    if-le v3, v4, :cond_7

    move v3, v4

    .line 3085
    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    iput-boolean v9, v5, Lcom/android/settings/wifi/dslv/DragSortListView;->mBlockLayoutRequests:Z

    sub-int/2addr v3, v4

    .line 3087
    invoke-virtual {v5, v2, v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 3088
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->layoutChildren()V

    .line 3089
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->invalidate()V

    .line 3091
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    iput-boolean v1, v3, Lcom/android/settings/wifi/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 3094
    invoke-static {v3, v2, v0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2600(Lcom/android/settings/wifi/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 3096
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2700(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3098
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 3099
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    .line 3100
    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->scrollDir:I

    if-nez v3, :cond_a

    .line 3101
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    sub-int v0, v2, v0

    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_2

    .line 3102
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 3103
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$900(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v0

    if-le v0, v2, :cond_9

    .line 3105
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2700(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/widget/ListView;

    move-result-object v0

    add-int/2addr v2, v9

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_4

    .line 3107
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2700(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_4

    :cond_a
    if-ne v3, v9, :cond_d

    .line 3111
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_3

    .line 3112
    :cond_b
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 3113
    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$900(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v2

    if-le v0, v2, :cond_c

    .line 3115
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2700(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/widget/ListView;

    move-result-object v2

    sub-int/2addr v0, v9

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_4

    .line 3117
    :cond_c
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$2700(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 3122
    :cond_d
    :goto_4
    iget-wide v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 3125
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startScrolling(I)V
    .locals 2

    .line 2990
    iget-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2992
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mAbort:Z

    const/4 v0, 0x1

    .line 2993
    iput-boolean v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2994
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->tStart:J

    .line 2995
    iget-wide v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2996
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->scrollDir:I

    .line 2997
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3003
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 3004
    iput-boolean p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3006
    iput-boolean p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DragScroller;->mAbort:Z

    :goto_0
    return-void
.end method
