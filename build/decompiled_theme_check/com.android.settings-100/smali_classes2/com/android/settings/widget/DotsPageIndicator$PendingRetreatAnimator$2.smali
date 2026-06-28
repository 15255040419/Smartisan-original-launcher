.class Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$2;
.super Ljava/lang/Object;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$2;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$2;->val$this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 813
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$2;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1302(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 814
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$2;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p1}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    .line 816
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$2;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1100(Lcom/android/settings/widget/DotsPageIndicator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 817
    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$2;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v3, v3, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {v3}, Lcom/android/settings/widget/DotsPageIndicator;->access$1300(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->startIfNecessary(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
