.class Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

.field final synthetic val$this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$2;->val$this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 872
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    invoke-static {v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->access$1700(Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1600(Lcom/android/settings/widget/DotsPageIndicator;IF)V

    .line 873
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method
