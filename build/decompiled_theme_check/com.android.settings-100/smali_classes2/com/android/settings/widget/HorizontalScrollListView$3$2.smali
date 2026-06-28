.class Lcom/android/settings/widget/HorizontalScrollListView$3$2;
.super Ljava/lang/Object;
.source "HorizontalScrollListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/HorizontalScrollListView$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/HorizontalScrollListView$3;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 962
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mIsRunningDeleteAnim:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 935
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$hintView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v1, v1, Lcom/android/settings/widget/HorizontalScrollListView$3;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-static {v1}, Lcom/android/settings/widget/HorizontalScrollListView;->access$400(Lcom/android/settings/widget/HorizontalScrollListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 936
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/HorizontalScrollListView;->restoreScrollState(Z)Z

    .line 937
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$btnsView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$btnsView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$btnsView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$btnsView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 941
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 943
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 944
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$btnsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$otherBtnsView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 951
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$otherBtnsView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget v2, v2, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$otherBtnsVisibility:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$hintView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget v2, v2, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$fromXDelta:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->scrollTo(II)V

    .line 954
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_3

    .line 955
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 957
    :cond_3
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$2;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    iput-boolean v1, p0, Lcom/android/settings/widget/HorizontalScrollListView;->mIsRunningDeleteAnim:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
