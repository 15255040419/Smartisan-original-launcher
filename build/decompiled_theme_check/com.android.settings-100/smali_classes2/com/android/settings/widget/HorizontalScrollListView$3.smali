.class Lcom/android/settings/widget/HorizontalScrollListView$3;
.super Ljava/lang/Object;
.source "HorizontalScrollListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/HorizontalScrollListView;->playDeleteItemAnimation(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/HorizontalScrollListView;

.field final synthetic val$btnsView:Landroid/view/View;

.field final synthetic val$fromXDelta:I

.field final synthetic val$hintView:Landroid/view/View;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$otherBtnsView:Landroid/view/View;

.field final synthetic val$otherBtnsVisibility:I


# direct methods
.method constructor <init>(Lcom/android/settings/widget/HorizontalScrollListView;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 891
    iput-object p1, p0, Lcom/android/settings/widget/HorizontalScrollListView$3;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    iput-object p2, p0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$listener:Landroid/animation/Animator$AnimatorListener;

    iput-object p3, p0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$hintView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$btnsView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$otherBtnsView:Landroid/view/View;

    iput p6, p0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$otherBtnsVisibility:I

    iput p7, p0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$fromXDelta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 907
    iget-object p1, p0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$hintView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p1, v0, p1

    .line 908
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 909
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 910
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 911
    new-instance v0, Lcom/android/settings/widget/HorizontalScrollListView$3$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/HorizontalScrollListView$3$1;-><init>(Lcom/android/settings/widget/HorizontalScrollListView$3;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 923
    new-instance v0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/HorizontalScrollListView$3$2;-><init>(Lcom/android/settings/widget/HorizontalScrollListView$3;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 965
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/widget/HorizontalScrollListView;->mIsRunningDeleteAnim:Z

    .line 896
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 897
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
