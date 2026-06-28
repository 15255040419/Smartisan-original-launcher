.class Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;IIILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

.field final synthetic val$dotsToHide:[I

.field final synthetic val$initialX1:F

.field final synthetic val$initialX2:F

.field final synthetic val$this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;Lcom/android/settings/widget/DotsPageIndicator;[IFF)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iput-object p3, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$dotsToHide:[I

    iput p4, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$initialX1:F

    iput p5, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$initialX2:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 838
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->access$1202(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 839
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->access$1302(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 840
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .line 826
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1400(Lcom/android/settings/widget/DotsPageIndicator;)V

    .line 827
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1500(Lcom/android/settings/widget/DotsPageIndicator;)V

    .line 829
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$dotsToHide:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 830
    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v3, v3, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    const v4, 0x3727c5ac    # 1.0E-5f

    invoke-static {v3, v2, v4}, Lcom/android/settings/widget/DotsPageIndicator;->access$1600(Lcom/android/settings/widget/DotsPageIndicator;IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 832
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$initialX1:F

    invoke-static {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->access$1202(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 833
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$initialX2:F

    invoke-static {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->access$1302(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 834
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method
