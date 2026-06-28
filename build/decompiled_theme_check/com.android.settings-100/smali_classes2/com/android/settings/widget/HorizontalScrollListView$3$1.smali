.class Lcom/android/settings/widget/HorizontalScrollListView$3$1;
.super Ljava/lang/Object;
.source "HorizontalScrollListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 911
    iput-object p1, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$1;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$1;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$hintView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 917
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$1;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$hintView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 918
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 919
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3$1;->this$1:Lcom/android/settings/widget/HorizontalScrollListView$3;

    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView$3;->val$hintView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
